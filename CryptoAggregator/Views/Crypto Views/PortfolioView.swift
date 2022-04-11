//
//  PortfolioView.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/04/11.
//

import SwiftUI

//MARK: - PortfolioViewUSD
struct PortfolioViewUSD: View {
    @StateObject var viewModel = CryptoViewModelUSD()
    @ObservedObject var favourites = FavouritesUSD()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    if favourites.contains(crypto) {
                        HStack(spacing: 10) {
                                
                                urlImagePortfolio(urlString: crypto.image!, data: nil)
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(10)
                                
                               
                                    VStack(alignment: .leading) {
                                        
                                        Text(crypto.symbol!)
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                    }
                                
                                
                                Text(":\(crypto.marketCap ?? 0, specifier: "%.1f") $")
                                    .font(.system(size: 15))
                                
                                Spacer()
                                
                                Button(action: {
                                    if favourites.contains(crypto) {
                                        favourites.remove(crypto)
                                    } else {
                                        favourites.add(crypto)
                                    }
                                }, label: {
                                    favourites.contains(crypto) ? Image(systemName: "heart.fill").foregroundColor(.red) : Image(systemName: "heart").foregroundColor(.black)
                                })
                                    .buttonStyle(PlainButtonStyle())
                        
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }
        }.navigationBarTitle("Portfolio View", displayMode: .inline).offset(y: -10)
    }
}

//MARK: - Custom URL Image.
struct urlImagePortfolio: View {
    let urlString: String
    
    @State var data: Data?
    
    var body: some View {
        if let data = data, let uiimage = UIImage(data: data) {
            Image(uiImage: uiimage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .cornerRadius(10)
        }
        else {
            Image(systemName: "hourglass")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .background(Color.gray)
                .cornerRadius(10)
                .onAppear {
                    fetchData()
                }
        }
    }
    private func fetchData() {
        guard let url = URL(string: urlString) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            self.data = data
        }
        task.resume()
    }
}

//MARK: - Preview
struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioViewUSD()
    }
}
