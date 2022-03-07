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
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .fontWeight(.bold)
                                Text(crypto.name!)
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f")")
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }
        }.navigationBarTitle("Cryptocurrencies", displayMode: .inline).offset(y: -10)
        
    }
}

//MARK: - CryptoViewEUR
struct CryptoViewEUR: View {
    @StateObject var viewModel = CryptoViewModelEUR()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .fontWeight(.bold)
                                Text(crypto.name!)
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f")")
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }
        }.navigationBarTitle("Cryptocurrencies", displayMode: .inline).offset(y: -10)
        
    }
}
//MARK: - CryptoViewAUD
struct CryptoViewAUD: View {
    @StateObject var viewModel = CryptoViewModelAUD()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .fontWeight(.bold)
                                Text(crypto.name!)
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f")")
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }
        }.navigationBarTitle("Cryptocurrencies", displayMode: .inline).offset(y: -10)
        
    }
}
//MARK: - CryptoViewSGD
struct CryptoViewSGD: View {
    @StateObject var viewModel = CryptoViewModelSGD()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .fontWeight(.bold)
                                Text(crypto.name!)
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f")")
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }
        }.navigationBarTitle("Cryptocurrencies", displayMode: .inline).offset(y: -10)
        
    }
}
//MARK: - CryptoViewBRL
struct CryptoViewBRL: View {
    @StateObject var viewModel = CryptoViewModelBRL()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .fontWeight(.bold)
                                Text(crypto.name!)
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f")")
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }
        }.navigationBarTitle("Cryptocurrencies", displayMode: .inline).offset(y: -10)
        
    }
}
//MARK: - CryptoViewZAR
struct CryptoViewZAR: View {
    @StateObject var viewModel = CryptoViewModelZAR()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .fontWeight(.bold)
                                Text(crypto.name!)
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f")")
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }
        }.navigationBarTitle("Cryptocurrencies", displayMode: .inline).offset(y: -10)
        
    }
}
//MARK: - CryptoViewINR
struct CryptoViewINR: View {
    @StateObject var viewModel = CryptoViewModelINR()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .fontWeight(.bold)
                                Text(crypto.name!)
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f")")
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }
        }.navigationBarTitle("Cryptocurrencies", displayMode: .inline).offset(y: -10)
        
    }
}
//MARK: - CryptoViewJPY
struct CryptoViewJPY: View {
    @StateObject var viewModel = CryptoViewModelJPY()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .fontWeight(.bold)
                                Text(crypto.name!)
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f")")
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }
        }.navigationBarTitle("Cryptocurrencies", displayMode: .inline).offset(y: -10)
        
    }
}
//MARK: - CryptoViewXAU
struct CryptoViewXAU: View {
    @StateObject var viewModel = CryptoViewModelXAU()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .fontWeight(.bold)
                                Text(crypto.name!)
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f")")
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }
        }.navigationBarTitle("Cryptocurrencies", displayMode: .inline).offset(y: -10)
        
    }
}
//MARK: - CryptoViewXAG
struct CryptoViewXAG: View {
    @StateObject var viewModel = CryptoViewModelXAG()
    
    var body: some View {
        ZStack {
            List{
                ForEach(viewModel.instrumentPublished,id: \.self){ crypto in
                    NavigationLink(destination: CryptoDetail(instrument: crypto)) {
                        HStack {
                            
                            urlImage(urlString: crypto.image!, data: nil)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(crypto.symbol!)
                                    .fontWeight(.bold)
                                Text(crypto.name!)
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                                Text("\(crypto.marketCap ?? 0, specifier: "%.1f")")
                        }
                    }
                }
            }.onAppear {
                viewModel.fetchCryptoData()
            }
        }.navigationBarTitle("Cryptocurrencies", displayMode: .inline).offset(y: -10)
        
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
