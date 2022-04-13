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
    @ObservedObject var favouritesUSD = FavouritesUSD()
    
    var body: some View {
        NavigationView {
            ZStack {
                List{
                    ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                        if favouritesUSD.contains(crypto) {
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
                                        if favouritesUSD.contains(crypto) {
                                            favouritesUSD.remove(crypto)
                                        } else {
                                            favouritesUSD.add(crypto)
                                        }
                                    }, label: {
                                        favouritesUSD.contains(crypto) ? Image(systemName: "heart.fill").foregroundColor(.red) : Image(systemName: "heart").foregroundColor(.black)
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
    @ObservedObject var favouritesEUR = FavouritesEUR()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    if favouritesEUR.contains(crypto) {
                        HStack(spacing: 10) {
                                
                                urlImagePortfolio(urlString: crypto.image!, data: nil)
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(10)
                                
                               
                                    VStack(alignment: .leading) {
                                        
                                        Text(crypto.symbol!)
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                    }
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") €")
                                    .font(.system(size: 15))
                                
                                Spacer()
                                
                                Button(action: {
                                    if favouritesEUR.contains(crypto) {
                                        favouritesEUR.remove(crypto)
                                    } else {
                                        favouritesEUR.add(crypto)
                                    }
                                }, label: {
                                    favouritesEUR.contains(crypto) ? Image(systemName: "heart.fill").foregroundColor(.red) : Image(systemName: "heart").foregroundColor(.black)
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
    @ObservedObject var favouritesAUD = FavouritesAUD()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    if favouritesAUD.contains(crypto) {
                        HStack(spacing: 10) {
                                
                                urlImagePortfolio(urlString: crypto.image!, data: nil)
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(10)
                                
                               
                                    VStack(alignment: .leading) {
                                        
                                        Text(crypto.symbol!)
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                    }
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") A$")
                                    .font(.system(size: 15))
                                
                                Spacer()
                                
                                Button(action: {
                                    if favouritesAUD.contains(crypto) {
                                        favouritesAUD.remove(crypto)
                                    } else {
                                        favouritesAUD.add(crypto)
                                    }
                                }, label: {
                                    favouritesAUD.contains(crypto) ? Image(systemName: "heart.fill").foregroundColor(.red) : Image(systemName: "heart").foregroundColor(.black)
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
    @ObservedObject var favouritesSGD = FavouritesSGD()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    if favouritesSGD.contains(crypto) {
                        HStack(spacing: 10) {
                                
                                urlImagePortfolio(urlString: crypto.image!, data: nil)
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(10)
                                
                               
                                    VStack(alignment: .leading) {
                                        
                                        Text(crypto.symbol!)
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                    }
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") S$")
                                    .font(.system(size: 15))
                                
                                Spacer()
                                
                                Button(action: {
                                    if favouritesSGD.contains(crypto) {
                                        favouritesSGD.remove(crypto)
                                    } else {
                                        favouritesSGD.add(crypto)
                                    }
                                }, label: {
                                    favouritesSGD.contains(crypto) ? Image(systemName: "heart.fill").foregroundColor(.red) : Image(systemName: "heart").foregroundColor(.black)
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
    @ObservedObject var favouritesBRL = FavouritesBRL()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    if favouritesBRL.contains(crypto) {
                        HStack(spacing: 10) {
                                
                                urlImagePortfolio(urlString: crypto.image!, data: nil)
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(10)
                                
                               
                                    VStack(alignment: .leading) {
                                        
                                        Text(crypto.symbol!)
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                    }
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") R$")
                                    .font(.system(size: 15))
                                
                                Spacer()
                                
                                Button(action: {
                                    if favouritesBRL.contains(crypto) {
                                        favouritesBRL.remove(crypto)
                                    } else {
                                        favouritesBRL.add(crypto)
                                    }
                                }, label: {
                                    favouritesBRL.contains(crypto) ? Image(systemName: "heart.fill").foregroundColor(.red) : Image(systemName: "heart").foregroundColor(.black)
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
    @ObservedObject var favouritesZAR = FavouritesZAR()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    if favouritesZAR.contains(crypto) {
                        HStack(spacing: 10) {
                                
                                urlImagePortfolio(urlString: crypto.image!, data: nil)
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(10)
                                
                               
                                    VStack(alignment: .leading) {
                                        
                                        Text(crypto.symbol!)
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                    }
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") R")
                                    .font(.system(size: 15))
                                
                                Spacer()
                                
                                Button(action: {
                                    if favouritesZAR.contains(crypto) {
                                        favouritesZAR.remove(crypto)
                                    } else {
                                        favouritesZAR.add(crypto)
                                    }
                                }, label: {
                                    favouritesZAR.contains(crypto) ? Image(systemName: "heart.fill").foregroundColor(.red) : Image(systemName: "heart").foregroundColor(.black)
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
    @ObservedObject var favouritesINR = FavouritesINR()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    if favouritesINR.contains(crypto) {
                        HStack(spacing: 10) {
                                
                                urlImagePortfolio(urlString: crypto.image!, data: nil)
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(10)
                                
                               
                                    VStack(alignment: .leading) {
                                        
                                        Text(crypto.symbol!)
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                    }
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") ₹")
                                    .font(.system(size: 15))
                                
                                Spacer()
                                
                                Button(action: {
                                    if favouritesINR.contains(crypto) {
                                        favouritesINR.remove(crypto)
                                    } else {
                                        favouritesINR.add(crypto)
                                    }
                                }, label: {
                                    favouritesINR.contains(crypto) ? Image(systemName: "heart.fill").foregroundColor(.red) : Image(systemName: "heart").foregroundColor(.black)
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
    @ObservedObject var favouritesJPY = FavouritesJPY()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    if favouritesJPY.contains(crypto) {
                        HStack(spacing: 10) {
                                
                                urlImagePortfolio(urlString: crypto.image!, data: nil)
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(10)
                                
                               
                                    VStack(alignment: .leading) {
                                        
                                        Text(crypto.symbol!)
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                    }
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") ¥")
                                    .font(.system(size: 15))
                                
                                Spacer()
                                
                                Button(action: {
                                    if favouritesJPY.contains(crypto) {
                                        favouritesJPY.remove(crypto)
                                    } else {
                                        favouritesJPY.add(crypto)
                                    }
                                }, label: {
                                    favouritesJPY.contains(crypto) ? Image(systemName: "heart.fill").foregroundColor(.red) : Image(systemName: "heart").foregroundColor(.black)
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
    @ObservedObject var favouritesXAU = FavouritesXAU()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    if favouritesXAU.contains(crypto) {
                        HStack(spacing: 10) {
                                
                                urlImagePortfolio(urlString: crypto.image!, data: nil)
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(10)
                                
                               
                                    VStack(alignment: .leading) {
                                        
                                        Text(crypto.symbol!)
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                    }
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") AU")
                                    .font(.system(size: 15))
                                
                                Spacer()
                                
                                Button(action: {
                                    if favouritesXAU.contains(crypto) {
                                        favouritesXAU.remove(crypto)
                                    } else {
                                        favouritesXAU.add(crypto)
                                    }
                                }, label: {
                                    favouritesXAU.contains(crypto) ? Image(systemName: "heart.fill").foregroundColor(.red) : Image(systemName: "heart").foregroundColor(.black)
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
    @ObservedObject var favouritesXAG = FavouritesXAG()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    if favouritesXAG.contains(crypto) {
                        HStack(spacing: 10) {
                                
                                urlImagePortfolio(urlString: crypto.image!, data: nil)
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(10)
                                
                               
                                    VStack(alignment: .leading) {
                                        
                                        Text(crypto.symbol!)
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                    }
                                
                                
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f") AG")
                                    .font(.system(size: 15))
                                
                                Spacer()
                                
                                Button(action: {
                                    if favouritesXAG.contains(crypto) {
                                        favouritesXAG.remove(crypto)
                                    } else {
                                        favouritesXAG.add(crypto)
                                    }
                                }, label: {
                                    favouritesXAG.contains(crypto) ? Image(systemName: "heart.fill").foregroundColor(.red) : Image(systemName: "heart").foregroundColor(.black)
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
