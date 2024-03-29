//
//  Crypto Detail.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/02.
//

import SwiftUI
import SwiftUICharts

struct CryptoDetail: View {
    var instrument : Instrument
    
    var body: some View {
        
        ScrollView {
            // MARK: - Chart Section
            VStack{
                HStack {
                    LineView(data: [ instrument.sparkLine7D!.price!.first!,
                                     instrument.sparkLine7D!.price![5],
                                     instrument.sparkLine7D!.price![11],
                                     instrument.sparkLine7D!.price![17],
                                     instrument.sparkLine7D!.price![23],
                                     instrument.sparkLine7D!.price![29],
                                     instrument.sparkLine7D!.price![35],
                                     instrument.sparkLine7D!.price![41],
                                     instrument.sparkLine7D!.price![47],
                                     instrument.sparkLine7D!.price![53],
                                     instrument.sparkLine7D!.price![59],
                                     instrument.sparkLine7D!.price![65],
                                     instrument.sparkLine7D!.price![71],
                                     instrument.sparkLine7D!.price![77],
                                     instrument.sparkLine7D!.price![83],
                                     instrument.sparkLine7D!.price![89],
                                     instrument.sparkLine7D!.price![95],
                                     instrument.sparkLine7D!.price![101],
                                     instrument.sparkLine7D!.price![107],
                                     instrument.sparkLine7D!.price![113],
                                     instrument.sparkLine7D!.price![119],
                                     instrument.sparkLine7D!.price![125],
                                     instrument.sparkLine7D!.price![131],
                                     instrument.sparkLine7D!.price![137],
                                     instrument.sparkLine7D!.price![143],
                                     instrument.sparkLine7D!.price![149],
                                     instrument.sparkLine7D!.price![155],
                                     instrument.sparkLine7D!.price![161],
                                     instrument.sparkLine7D!.price!.last!
                                   ], title:"\(instrument.name!) Chart", legend: "Weekly Chart 6hr Intervals")
                }.padding()
            }.frame(height: 300)
                .navigationBarTitle("Detail")
            
            Divider()
            // MARK: - Coin Information Section
            VStack {
                HStack{
                    Text("Coin Information")
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    urlImageDetail(urlString: instrument.image!, data: nil)
                        .frame(width: 30, height: 30)
                        .cornerRadius(10)
                        .offset(x: -200)
                }
                
                Divider()
                VStack {
                    // MARK: Row 1 Coin Info.
                    HStack(){
                        VStack(alignment:.leading) {
                            Text("Name")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .padding(.bottom, 1)
                            Text(instrument.name!)
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment:.leading) {
                            Text("Symbol")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .padding(.bottom, 1)
                            Text(instrument.symbol!)
                        }.frame(maxWidth: .infinity, alignment: .leading)
                    }.padding()
                    // MARK: Row 2 Coin Info.
                    HStack(){
                        VStack(alignment:.leading) {
                            Text("Market Cap")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .padding(.bottom, 1)
                            Text("\(instrument.marketCap ?? 0, specifier: "%.1f")")
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment:.leading) {
                            Text("Current Price")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .padding(.bottom, 1)
                            Text("\(instrument.currentPrice ?? 0, specifier: "%.2f")")
                        }.frame(maxWidth: .infinity, alignment: .leading)
                    }.padding()
                    
                    Text("Price Information")
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    Divider()
                    // MARK: Row 1 Price Info.
                    HStack(){
                        VStack(alignment:.leading) {
                            Text("Daily High")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .padding(.bottom, 1)
                            Text("\(instrument.dailyHigh ?? 0, specifier: "%.2f")")
                                .foregroundColor(.green)
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment:.leading) {
                            Text("Daily Low")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .padding(.bottom, 1)
                            Text("\(instrument.dailyLow ?? 0, specifier: "%.2f")")
                                .foregroundColor(.red)
                        }.frame(maxWidth: .infinity, alignment: .leading)
                    }.padding()
                    // MARK: Row 2 Price Info.
                    HStack(){
                        VStack(alignment:.leading) {
                            Text("Price Change 1h")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .padding(.bottom, 1)
                            if instrument.hourlyChange! > 0 {
                                Text("\(instrument.hourlyChange ?? 0, specifier: "%.2f")%")
                                    .foregroundColor(.green)
                            }else {
                                Text("\(instrument.hourlyChange ?? 0, specifier: "%.2f")%")
                                    .foregroundColor(.red)
                            }
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment:.leading) {
                            Text("Price Change 1d")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .padding(.bottom, 1)
                            if instrument.dailyChange! > 0 {
                                Text("\(instrument.dailyChange ?? 0, specifier: "%.2f")%")
                                    .foregroundColor(.green)
                            } else {
                                Text("\(instrument.dailyChange ?? 0, specifier: "%.2f")%")
                                    .foregroundColor(.red)
                            }
                        }.frame(maxWidth: .infinity, alignment: .leading)
                    }.padding()
                    // MARK: Row 3 Price Info.
                    HStack(){
                        VStack(alignment:.leading) {
                            Text("Price Change 7d")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .padding(.bottom, 1)
                            if instrument.weeklyChange! > 0 {
                                Text("\(instrument.weeklyChange ?? 0, specifier: "%.2f")%")
                                    .foregroundColor(.green)
                            } else {
                                Text("\(instrument.weeklyChange ?? 0, specifier: "%.2f")%")
                                    .foregroundColor(.red)
                            }
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment:.leading) {
                            Text("Price Change 14d")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .padding(.bottom, 1)
                            if instrument.biweeklyChange! > 0 {
                                Text("\(instrument.biweeklyChange ?? 0, specifier: "%.2f")%")
                                    .foregroundColor(.green)
                            } else {
                                Text("\(instrument.biweeklyChange ?? 0, specifier: "%.2f")%")
                                    .foregroundColor(.red)
                            }
                        }.frame(maxWidth: .infinity, alignment: .leading)
                    }.padding()
                    // MARK: Row 4 Price Info.
                    HStack(){
                        VStack(alignment:.leading) {
                            Text("Price Change 30d")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .padding(.bottom, 1)
                            if instrument.monthlyChange! > 0 {
                                Text("\(instrument.monthlyChange ?? 0, specifier: "%.2f")%")
                                    .foregroundColor(.green)
                            } else {
                                Text("\(instrument.monthlyChange ?? 0, specifier: "%.2f")%")
                                    .foregroundColor(.red)
                            }
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment:.leading) {
                            Text("Price Change 1y")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .padding(.bottom, 1)
                            if instrument.annualChange! > 0 {
                                Text("\(instrument.annualChange ?? 0, specifier: "%.2f")%")
                                    .foregroundColor(.green)
                            } else {
                                Text("\(instrument.annualChange ?? 0, specifier: "%.2f")%")
                                    .foregroundColor(.red)
                            }
                        }.frame(maxWidth: .infinity, alignment: .leading)
                    }.padding()
                }
            }.offset(y: 70)
        }
    }
}

//MARK: - Custom URL Image.
struct urlImageDetail: View {
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
