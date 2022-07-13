//
//  CryptoModel.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/05.
//

import Foundation
import UIKit

struct Instrument : Codable, Hashable {
    
    let id : String?
    let symbol : String?
    let name : String?
    let image : String?
    let currentPrice : Double?
    let marketCap : Double?
    let dailyHigh : Double?
    let dailyLow : Double?
    let biweeklyChange : Double?
    let hourlyChange : Double?
    let annualChange : Double?
    let dailyChange : Double?
    let monthlyChange : Double?
    let weeklyChange : Double?
    let sparkLine7D : sparkline_in_7d?
    let lastUpdated : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case symbol = "symbol"
        case name = "name"
        case image = "image"
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case dailyHigh = "high_24h"
        case dailyLow = "low_24h"
        case biweeklyChange = "price_change_percentage_14d_in_currency"
        case hourlyChange = "price_change_percentage_1h_in_currency"
        case annualChange = "price_change_percentage_1y_in_currency"
        case dailyChange = "price_change_percentage_24h_in_currency"
        case monthlyChange = "price_change_percentage_30d_in_currency"
        case weeklyChange = "price_change_percentage_7d_in_currency"
        case sparkLine7D = "sparkline_in_7d"
        case lastUpdated = "last_updated"
    }


}
//MARK: - Sparkline Object

struct sparkline_in_7d: Codable, Hashable {
    let price: [Double]?
}
