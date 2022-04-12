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
    @ObservedObject var favourites = FavouritesUSD()
    
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
                }.searchable(text: $searchText, prompt: "Search Cryptocurrency List")
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
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }
                            
                            Spacer()
                            
                            Text("\(crypto.marketCap ?? 0, specifier: "%.1f") €")
                                .font(.system(size: 15))
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }.searchable(text: $searchText, prompt: "Search Cryptocurrency List")
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
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }
                            
                            Spacer()
                            
                            Text("\(crypto.marketCap ?? 0, specifier: "%.1f") A$")
                                .font(.system(size: 15))
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }.searchable(text: $searchText, prompt: "Search Cryptocurrency List")
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
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }
                            
                            Spacer()
                            
                            Text("\(crypto.marketCap ?? 0, specifier: "%.1f") S$")
                                .font(.system(size: 15))
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }.searchable(text: $searchText, prompt: "Search Cryptocurrency List")
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
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }
                            
                            Spacer()
                            
                            Text("\(crypto.marketCap ?? 0, specifier: "%.1f") R$")
                                .font(.system(size: 15))
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }.searchable(text: $searchText, prompt: "Search Cryptocurrency List")
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
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }
                            
                            Spacer()
                            
                            Text("\(crypto.marketCap ?? 0, specifier: "%.1f") R")
                                .font(.system(size: 15))
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }.searchable(text: $searchText, prompt: "Search Cryptocurrency List")
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
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }
                            
                            Spacer()
                            
                            Text("\(crypto.marketCap ?? 0, specifier: "%.1f") ₹")
                                .font(.system(size: 15))
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }.searchable(text: $searchText, prompt: "Search Cryptocurrency List")
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
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }
                            
                            Spacer()
                            
                            Text("\(crypto.marketCap ?? 0, specifier: "%.1f") ¥")
                                .font(.system(size: 15))
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }.searchable(text: $searchText, prompt: "Search Cryptocurrency List")
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
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }
                            
                            Spacer()
                            
                            Text("\(crypto.marketCap ?? 0, specifier: "%.1f") AU")
                                .font(.system(size: 15))
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }.searchable(text: $searchText, prompt: "Search Cryptocurrency List")
        }.navigationBarTitle("Market Capitalisation au", displayMode: .inline).offset(y: -10)
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
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            List{
                ForEach(filterInstruments,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }
                            
                            Spacer()
                            
                            Text("\(crypto.marketCap ?? 0, specifier: "%.1f") ag")
                                .font(.system(size: 15))
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }.searchable(text: $searchText, prompt: "Search Cryptocurrency List")
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
