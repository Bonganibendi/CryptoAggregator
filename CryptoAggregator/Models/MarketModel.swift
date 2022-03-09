//
//  MarketModel.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/08.
//

import Foundation
import SwiftUI

struct Market: Identifiable {
    var id = UUID()
    var region: String
    var exchange: String
    var symbol: String
    var assets: Int
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
}

let marketData = [
    Market(region: "United States", exchange: "NYSE", symbol: "USD", assets: 200, imageName: "USD"),
    Market(region: "Europe", exchange: "ENX", symbol: "EUR", assets: 200, imageName: "EUR"),
    Market(region: "Australia", exchange: "ASX", symbol: "AUD", assets: 200, imageName: "AUD"),
    Market(region: "Singapore", exchange: "SGX", symbol: "SGD", assets: 200, imageName: "SGD"),
    Market(region: "Brazil", exchange: "B3", symbol: "BRL", assets: 200, imageName: "BRL"),
    Market(region: "South Africa", exchange: "JSE", symbol: "ZAR", assets: 200, imageName: "ZAR"),
    Market(region: "India", exchange: "NSE", symbol: "INR", assets: 200, imageName: "INR"),
    Market(region: "Japan", exchange: "TYO", symbol: "JPY", assets: 200, imageName: "JPY"),
    Market(region: "Gold", exchange: "OTC", symbol: "XAU", assets: 200, imageName: "XAU"),
    Market(region: "Silver", exchange: "OTC", symbol: "XAG", assets: 200, imageName: "XAG")
    
]
