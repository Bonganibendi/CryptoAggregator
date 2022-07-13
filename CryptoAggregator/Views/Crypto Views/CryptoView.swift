//
//  CryptoView.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/02.
//

import SwiftUI

//MARK: - CryptoViewUSD
struct CryptoViewUSD: View {
    @StateObject var viewModel = CryptoViewModelUSD()
    @ObservedObject var favouritesUSD = FavouritesUSD()
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack(spacing: 10) {
                            
                            urlImage(urlString: crypto.image!, data: nil)
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
            }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always) ,prompt: "Search Cryptocurrency List")
        }.navigationBarTitle("Market Capitalisation USD", displayMode: .inline).offset(y: -10)
    }
    var filterInstruments: [Instrument]{
        if searchText.isEmpty {
            return viewModel.instrumentPublished
        } else {
            return viewModel.instrumentPublished.filter { $0.name!.localizedCaseInsensitiveContains(searchText)}
        }
    }
}
//MARK: - CryptoViewEUR
struct CryptoViewEUR: View {
    @StateObject var viewModel = CryptoViewModelEUR()
    @ObservedObject var favouritesEUR = FavouritesEUR()
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack(spacing: 10) {
                            
                            
                            urlImage(urlString: crypto.image!, data: nil)
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
            }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always) ,prompt: "Search Cryptocurrency List")
        }.navigationBarTitle("Market Capitalisation EUR", displayMode: .inline).offset(y: -10)
    }
    var filterInstruments: [Instrument]{
        if searchText.isEmpty {
            return viewModel.instrumentPublished
        } else {
            return viewModel.instrumentPublished.filter { $0.name!.localizedCaseInsensitiveContains(searchText)}
        }
    }
}
//MARK: - CryptoViewAUD
struct CryptoViewAUD: View {
    @StateObject var viewModel = CryptoViewModelAUD()
    @ObservedObject var favouritesAUD = FavouritesAUD()
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack(spacing: 10) {
                            
                            
                            urlImage(urlString: crypto.image!, data: nil)
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
            }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always) ,prompt: "Search Cryptocurrency List")
        }.navigationBarTitle("Market Capitalisation AUD", displayMode: .inline).offset(y: -10)
    }
    var filterInstruments: [Instrument]{
        if searchText.isEmpty {
            return viewModel.instrumentPublished
        } else {
            return viewModel.instrumentPublished.filter { $0.name!.localizedCaseInsensitiveContains(searchText)}
        }
    }
}
//MARK: - CryptoViewSGD
struct CryptoViewSGD: View {
    @StateObject var viewModel = CryptoViewModelSGD()
    @ObservedObject var favouritesSGD = FavouritesSGD()
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack(spacing: 10) {
                            
                            
                            urlImage(urlString: crypto.image!, data: nil)
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
            }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always) ,prompt: "Search Cryptocurrency List")
        }.navigationBarTitle("Market Capitalisation SGD", displayMode: .inline).offset(y: -10)
    }
    var filterInstruments: [Instrument]{
        if searchText.isEmpty {
            return viewModel.instrumentPublished
        } else {
            return viewModel.instrumentPublished.filter { $0.name!.localizedCaseInsensitiveContains(searchText)}
        }
    }
}
//MARK: - CryptoViewBRL
struct CryptoViewBRL: View {
    @StateObject var viewModel = CryptoViewModelBRL()
    @ObservedObject var favouritesBRL = FavouritesBRL()
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack(spacing: 10) {
                            
                            
                            urlImage(urlString: crypto.image!, data: nil)
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
            }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always) ,prompt: "Search Cryptocurrency List")
        }.navigationBarTitle("Market Capitalisation BRL", displayMode: .inline).offset(y: -10)
    }
    var filterInstruments: [Instrument]{
        if searchText.isEmpty {
            return viewModel.instrumentPublished
        } else {
            return viewModel.instrumentPublished.filter { $0.name!.localizedCaseInsensitiveContains(searchText)}
        }
    }
}
//MARK: - CryptoViewZAR
struct CryptoViewZAR: View {
    @StateObject var viewModel = CryptoViewModelZAR()
    @ObservedObject var favouritesZAR = FavouritesZAR()
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack(spacing: 10) {
                            
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }
                            
                            Text("\(crypto.marketCap ?? 0, specifier: "%.1f") Z")
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
            }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always) ,prompt: "Search Cryptocurrency List")
        }.navigationBarTitle("Market Capitalisation ZAR", displayMode: .inline).offset(y: -10)
    }
    var filterInstruments: [Instrument]{
        if searchText.isEmpty {
            return viewModel.instrumentPublished
        } else {
            return viewModel.instrumentPublished.filter { $0.name!.localizedCaseInsensitiveContains(searchText)}
        }
    }
}
//MARK: - CryptoViewINR
struct CryptoViewINR: View {
    @StateObject var viewModel = CryptoViewModelINR()
    @ObservedObject var favouritesINR = FavouritesINR()
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack(spacing: 10) {
                            
                            
                            urlImage(urlString: crypto.image!, data: nil)
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
            }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always) ,prompt: "Search Cryptocurrency List")
        }.navigationBarTitle("Market Capitalisation INR", displayMode: .inline).offset(y: -10)
    }
    var filterInstruments: [Instrument]{
        if searchText.isEmpty {
            return viewModel.instrumentPublished
        } else {
            return viewModel.instrumentPublished.filter { $0.name!.localizedCaseInsensitiveContains(searchText)}
        }
    }
}
//MARK: - CryptoViewJPY
struct CryptoViewJPY: View {
    @StateObject var viewModel = CryptoViewModelJPY()
    @ObservedObject var favouritesJPY = FavouritesJPY()
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack(spacing: 10) {
                            
                            
                            urlImage(urlString: crypto.image!, data: nil)
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
            }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always) ,prompt: "Search Cryptocurrency List")
        }.navigationBarTitle("Market Capitalisation JPY", displayMode: .inline).offset(y: -10)
    }
    var filterInstruments: [Instrument]{
        if searchText.isEmpty {
            return viewModel.instrumentPublished
        } else {
            return viewModel.instrumentPublished.filter { $0.name!.localizedCaseInsensitiveContains(searchText)}
        }
    }
}
//MARK: - CryptoViewXAU
struct CryptoViewXAU: View {
    @StateObject var viewModel = CryptoViewModelXAU()
    @ObservedObject var favouritesXAU = FavouritesXAU()
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack(spacing: 10) {
                            
                            
                            urlImage(urlString: crypto.image!, data: nil)
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
            }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always) ,prompt: "Search Cryptocurrency List")
        }.navigationBarTitle("Market Capitalisation XAU", displayMode: .inline).offset(y: -10)
    }
    var filterInstruments: [Instrument]{
        if searchText.isEmpty {
            return viewModel.instrumentPublished
        } else {
            return viewModel.instrumentPublished.filter { $0.name!.localizedCaseInsensitiveContains(searchText)}
        }
    }
}
//MARK: - CryptoViewXAG
struct CryptoViewXAG: View {
    @StateObject var viewModel = CryptoViewModelXAG()
    @ObservedObject var favouritesXAG = FavouritesXAG()
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack(spacing: 10) {
                            
                            
                            urlImage(urlString: crypto.image!, data: nil)
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
            }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always) ,prompt: "Search Cryptocurrency List")
        }.navigationBarTitle("Market Capitalisation XAG", displayMode: .inline).offset(y: -10)
    }
    var filterInstruments: [Instrument]{
        if searchText.isEmpty {
            return viewModel.instrumentPublished
        } else {
            return viewModel.instrumentPublished.filter { $0.name!.localizedCaseInsensitiveContains(searchText)}
        }
    }
}
//MARK: - Custom URL Image.
struct urlImage: View {
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
struct CrytpoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CryptoViewUSD()
        }
    }
}
