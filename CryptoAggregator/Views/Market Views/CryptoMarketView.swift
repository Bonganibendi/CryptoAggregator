//
//  CryptoMarketView.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/06.
//

import SwiftUI

//MARK: - CryptoMarketView
struct CryptoMarketView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(){
                    //MARK: USD
                    NavigationLink(destination: CryptoViewUSD()) {
                        MarketWidget(markets: marketData[0])
                            .foregroundColor(.black)
                    }
                    //MARK: EUR
                    NavigationLink(destination: CryptoViewEUR()) {
                        MarketWidget(markets: marketData[1])
                            .foregroundColor(.black)
                    }
                    //MARK: AUD
                    NavigationLink(destination: CryptoViewAUD()) {
                        MarketWidget(markets: marketData[2])
                            .foregroundColor(.black)
                    }
                    //MARK: SGP
                    NavigationLink(destination:CryptoViewSGD())  {
                        MarketWidget(markets: marketData[3])
                            .foregroundColor(.black)
                    }
                    //MARK: BRL
                    NavigationLink(destination: CryptoViewBRL()) {
                        MarketWidget(markets: marketData[4])
                            .foregroundColor(.black)
                    }
                    //MARK: ZAR
                    NavigationLink(destination: CryptoViewZAR()) {
                        MarketWidget(markets: marketData[5])
                            .foregroundColor(.black)
                    }
                    //MARK: INR
                    NavigationLink(destination: CryptoViewINR()) {
                        MarketWidget(markets: marketData[6])
                            .foregroundColor(.black)
                    }
                    //MARK: JPY
                    NavigationLink(destination: CryptoViewJPY()) {
                        MarketWidget(markets: marketData[7])
                            .foregroundColor(.black)
                    }
                    //MARK: XAU
                    NavigationLink(destination: CryptoViewXAU()) {
                        MarketWidget(markets: marketData[8])
                            .foregroundColor(.black)
                    }
                    //MARK: XAG
                    NavigationLink(destination: CryptoViewXAG()) {
                        MarketWidget(markets: marketData[9])
                            .foregroundColor(.black)
                    }
                    .navigationTitle("Crypto Markets")
                }
            }
        }
    }
}

//MARK: - Previw
struct CryptoMarketView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoMarketView()
    }
}
