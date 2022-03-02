//
//  Crypto Detail.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/02.
//

import SwiftUI

struct CryptoDetail: View {
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
                            Text("Bitcoin")
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment:.leading) {
                            Text("Symbol")
                                .font(.headline)
                                .padding(.bottom, 1)
                            Text("BTC")
                        }.frame(maxWidth: .infinity, alignment: .leading)
                    }.padding()
                    // MARK: Row 2 Coin Info.
                    HStack(){
                        VStack(alignment:.leading) {
                            Text("Market Cap")
                                .font(.headline)
                                .padding(.bottom, 1)
                            Text("825B")
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment:.leading) {
                            Text("Current Price")
                                .font(.headline)
                                .padding(.bottom, 1)
                            Text("43535")
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
                            Text("446944")
                                .foregroundColor(.green)
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment:.leading) {
                            Text("Daily Low")
                                .font(.headline)
                                .padding(.bottom, 1)
                            Text("43393")
                                .foregroundColor(.red)
                        }.frame(maxWidth: .infinity, alignment: .leading)
                    }.padding()
                    // MARK: Row 2 Price Info.
                    HStack(){
                        VStack(alignment:.leading) {
                            Text("Price Change 1m")
                                .font(.headline)
                                .padding(.bottom, 1)
                            Text("7.6%")
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment:.leading) {
                            Text("Price Change 1h")
                                .font(.headline)
                                .padding(.bottom, 1)
                            Text("5.4%")
                        }.frame(maxWidth: .infinity, alignment: .leading)
                    }.padding()
                    // MARK: Row 3 Price Info.
                    HStack(){
                        VStack(alignment:.leading) {
                            Text("Price Change 1d")
                                .font(.headline)
                                .padding(.bottom, 1)
                            Text("2%")
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment:.leading) {
                            Text("Price Change 7d")
                                .font(.headline)
                                .padding(.bottom, 1)
                            Text("2.3%")
                        }.frame(maxWidth: .infinity, alignment: .leading)
                    }.padding()
                    // MARK: Row 4 Price Info.
                    HStack(){
                        VStack(alignment:.leading) {
                            Text("Price Change 30d")
                                .font(.headline)
                                .padding(.bottom, 1)
                            Text("2.2%")
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment:.leading) {
                            Text("Price Change 1y")
                                .font(.headline)
                                .padding(.bottom, 1)
                            Text("3.2%")
                        }.frame(maxWidth: .infinity, alignment: .leading)
                    }.padding()
                }
                Spacer()
                
                Rectangle()
                    .frame(height: 300)
                    .padding()
            }
        }.navigationBarTitle("Detail")
    }
}


struct CryptoDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CryptoDetail()
        }
    }
}
