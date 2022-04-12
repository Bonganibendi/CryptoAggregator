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
        NavigationView {
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
                                    
                                    
                                    Text("\(crypto.marketCap ?? 0, specifier: "%.1f") $")
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
            }.navigationBarTitle("Portfolio View USD", displayMode: .inline).offset(y: -10)
        }
    }
}

//MARK: - PortfolioViewEUR
struct PortfolioViewEUR: View {
    @StateObject var viewModel = CryptoViewModelEUR()
    @ObservedObject var favourites = FavouritesEUR()
    
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
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") $")
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
        }.navigationBarTitle("Portfolio View EUR", displayMode: .inline).offset(y: -10)
    }
}
//MARK: - PortfolioViewAUD
struct PortfolioViewAUD: View {
    @StateObject var viewModel = CryptoViewModelAUD()
    @ObservedObject var favourites = FavouritesAUD()
    
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
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") $")
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
        }.navigationBarTitle("Portfolio View AUD", displayMode: .inline).offset(y: -10)
    }
}
//MARK: - PortfolioViewSGD
struct PortfolioViewSGD: View {
    @StateObject var viewModel = CryptoViewModelSGD()
    @ObservedObject var favourites = FavouritesSGD()
    
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
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") $")
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
        }.navigationBarTitle("Portfolio View SGD", displayMode: .inline).offset(y: -10)
    }
}
//MARK: - PortfolioViewBRL
struct PortfolioViewBRL: View {
    @StateObject var viewModel = CryptoViewModelBRL()
    @ObservedObject var favourites = FavouritesBRL()
    
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
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") $")
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
        }.navigationBarTitle("Portfolio View BRL", displayMode: .inline).offset(y: -10)
    }
}
//MARK: - PortfolioViewZAR
struct PortfolioViewZAR: View {
    @StateObject var viewModel = CryptoViewModelZAR()
    @ObservedObject var favourites = FavouritesZAR()
    
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
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") $")
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
        }.navigationBarTitle("Portfolio View ZAR", displayMode: .inline).offset(y: -10)
    }
}
//MARK: - PortfolioViewINR
struct PortfolioViewINR: View {
    @StateObject var viewModel = CryptoViewModelINR()
    @ObservedObject var favourites = FavouritesINR()
    
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
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") $")
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
        }.navigationBarTitle("Portfolio View INR", displayMode: .inline).offset(y: -10)
    }
}
//MARK: - PortfolioViewJPY
struct PortfolioViewJPY: View {
    @StateObject var viewModel = CryptoViewModelJPY()
    @ObservedObject var favourites = FavouritesJPY()
    
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
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") $")
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
        }.navigationBarTitle("Portfolio View JPY", displayMode: .inline).offset(y: -10)
    }
}
//MARK: - PortfolioViewXAU
struct PortfolioViewXAU: View {
    @StateObject var viewModel = CryptoViewModelXAU()
    @ObservedObject var favourites = FavouritesXAU()
    
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
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") $")
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
        }.navigationBarTitle("Portfolio View XAU", displayMode: .inline).offset(y: -10)
    }
}
//MARK: - PortfolioViewXAG
struct PortfolioViewXAG: View {
    @StateObject var viewModel = CryptoViewModelXAG()
    @ObservedObject var favourites = FavouritesXAG()
    
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
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") $")
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
        }.navigationBarTitle("Portfolio View XAG", displayMode: .inline).offset(y: -10)
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
