//
//  PortfolioMarketModel.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/04/11.
//

import Foundation
import SwiftUI

struct PortfolioMarket: Identifiable {
    var id = UUID()
    var region: String
    var symbol: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
}

let portfolioMarketData = [
    PortfolioMarket(region: "United States", symbol: "USD", imageName: "USD"),
    PortfolioMarket(region: "Europe", symbol: "EUR", imageName: "EUR"),
    PortfolioMarket(region: "Australia", symbol: "AUD", imageName: "AUD"),
    PortfolioMarket(region: "Singapore", symbol: "SGD", imageName: "SGD"),
    PortfolioMarket(region: "Brazil", symbol: "BRL", imageName: "BRL"),
    PortfolioMarket(region: "South Africa", symbol: "ZAR", imageName: "ZAR"),
    PortfolioMarket(region: "India", symbol: "INR", imageName: "INR"),
    PortfolioMarket(region: "Japan", symbol: "JPY", imageName: "JPY"),
    PortfolioMarket(region: "Gold", symbol: "XAU", imageName: "XAU"),
    PortfolioMarket(region: "Silver", symbol: "XAG", imageName: "XAG")
]

