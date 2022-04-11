//
//  Crypto Detail.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/02.
//

import SwiftUI

struct CryptoDetail: View {
    var instrument : Instrument
    
    
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Coin Information")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                Divider()
                
                VStack {
                    // MARK: Row 1 Coin Info.
                    HStack(){
                        VStack(alignment:.leading) {
                            Text("Name")
                                .font(.headline)
                                .padding(.bottom, 1)
                            Text(instrument.name!)
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment:.leading) {
                            Text("Symbol")
                                .font(.headline)
                                .padding(.bottom, 1)
                            Text(instrument.symbol!)
                        }.frame(maxWidth: .infinity, alignment: .leading)
                    }.padding()
                    // MARK: Row 2 Coin Info.
                    HStack(){
                        VStack(alignment:.leading) {
                            Text("Market Cap")
                                .font(.headline)
                                .padding(.bottom, 1)
                            Text("\(instrument.marketCap ?? 0, specifier: "%.1f")")
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment:.leading) {
                            Text("Current Price")
                                .font(.headline)
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
                                .padding(.bottom, 1)
                            Text("\(instrument.dailyHigh ?? 0, specifier: "%.2f")")
                                .foregroundColor(.green)
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment:.leading) {
                            Text("Daily Low")
                                .font(.headline)
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
            }
        }.navigationBarTitle("Detail")
    }
}

