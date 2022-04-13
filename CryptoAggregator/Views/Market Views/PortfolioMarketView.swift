//
//  PortfolioMarketView.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/04/11.
//

import SwiftUI

struct PortfolioMarketView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: PortfolioViewUSD() ) {
                    PortfolioWidget(portfolioMarket: portfolioMarketData[0])
                }
                
                NavigationLink(destination: PortfolioViewEUR() ) {
                    PortfolioWidget(portfolioMarket: portfolioMarketData[1])
                }
                
                NavigationLink(destination: PortfolioViewAUD() ) {
                    PortfolioWidget(portfolioMarket: portfolioMarketData[2])
                }
                
                NavigationLink(destination: PortfolioViewSGD() ) {
                    PortfolioWidget(portfolioMarket: portfolioMarketData[3])
                }
                
                NavigationLink(destination: PortfolioViewBRL() ) {
                    PortfolioWidget(portfolioMarket: portfolioMarketData[4])
                }
                
                NavigationLink(destination: PortfolioViewZAR() ) {
                    PortfolioWidget(portfolioMarket: portfolioMarketData[5])
                }
                
                NavigationLink(destination: PortfolioViewINR() ) {
                    PortfolioWidget(portfolioMarket: portfolioMarketData[6])
                }
                
                NavigationLink(destination: PortfolioViewJPY() ) {
                    PortfolioWidget(portfolioMarket: portfolioMarketData[7])
                }
                
                NavigationLink(destination: PortfolioViewXAG() ) {
                    PortfolioWidget(portfolioMarket: portfolioMarketData[8])
                }
                
                NavigationLink(destination: PortfolioViewXAU() ) {
                    PortfolioWidget(portfolioMarket: portfolioMarketData[9])
                }
            }.navigationTitle("Portfolio Markets")
        }
    }
}

struct PortfolioMarketView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioMarketView()
    }
}
