//
//  CryptoViewModel.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/05.
//

import Foundation


//MARK: - USD
class CryptoViewModelUSD: ObservableObject {
    
    @Published var instrumentPublished: [Instrument] = []
    
    func fetchCryptoData() {
        //MARK: Creating URL Object.
        let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=200&page=1&sparkline=false&price_change_percentage=1h%2C24h%2C7d%2C14d%2C30d%2C1y")
         
         //MARK: Creating URL Object.
         var request = URLRequest(url: url!)
         
         //MARK: Specifying the Headers.
         let headers = [
             "accept": "application/json",

         ]
         
         //MARK: Set Request Types.
         request.httpMethod = "GET"
         request.allHTTPHeaderFields = headers
         
         //MARK: Get URLSession.
         let session = URLSession.shared

         //MARK: Create the Data Task.
         let dataTask = session.dataTask(with: request) { data, response, error in
             //Check for errors in dataTask.
             if error == nil && data != nil {
                 let decode = JSONDecoder()
                 //Try parse the data.
                 do {
                     let instrumentParsed = try decode.decode([Instrument].self, from: data!)
                     DispatchQueue.main.async {
                         self.instrumentPublished = instrumentParsed
                     }
                 } catch {
                     print(error)
                 }
             }
         }
         
         dataTask.resume()
    }
}

//MARK: - EUR
class CryptoViewModelEUR: ObservableObject {
    
    @Published var instrumentPublished: [Instrument] = []
    
    func fetchCryptoData() {
        //MARK: Creating URL Object.
        let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=eur&order=market_cap_desc&per_page=200&page=1&sparkline=false&price_change_percentage=1h%2C24h%2C7d%2C14d%2C30d%2C1y")
         
         //MARK: Creating URL Object.
         var request = URLRequest(url: url!)
         
         //MARK: Specifying the Headers.
         let headers = [
             "accept": "application/json",

         ]
         
         //MARK: Set Request Types.
         request.httpMethod = "GET"
         request.allHTTPHeaderFields = headers
         
         //MARK: Get URLSession.
         let session = URLSession.shared

         //MARK: Create the Data Task.
         let dataTask = session.dataTask(with: request) { data, response, error in
             //Check for errors in dataTask.
             if error == nil && data != nil {
                 let decode = JSONDecoder()
                 //Try parse the data.
                 do {
                     let instrumentParsed = try decode.decode([Instrument].self, from: data!)
                     DispatchQueue.main.async {
                         self.instrumentPublished = instrumentParsed
                     }
                 } catch {
                     print(error)
                 }
             }
         }
         
         dataTask.resume()
    }
}
//MARK: - AUD
class CryptoViewModelAUD: ObservableObject {
    
    @Published var instrumentPublished: [Instrument] = []
    
    func fetchCryptoData() {
        //MARK: Creating URL Object.
        let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=aud&order=market_cap_desc&per_page=200&page=1&sparkline=false&price_change_percentage=1h%2C24h%2C7d%2C14d%2C30d%2C1y")
         
         //MARK: Creating URL Object.
         var request = URLRequest(url: url!)
         
         //MARK: Specifying the Headers.
         let headers = [
             "accept": "application/json",

         ]
         
         //MARK: Set Request Types.
         request.httpMethod = "GET"
         request.allHTTPHeaderFields = headers
         
         //MARK: Get URLSession.
         let session = URLSession.shared

         //MARK: Create the Data Task.
         let dataTask = session.dataTask(with: request) { data, response, error in
             //Check for errors in dataTask.
             if error == nil && data != nil {
                 let decode = JSONDecoder()
                 //Try parse the data.
                 do {
                     let instrumentParsed = try decode.decode([Instrument].self, from: data!)
                     DispatchQueue.main.async {
                         self.instrumentPublished = instrumentParsed
                     }
                 } catch {
                     print(error)
                 }
             }
         }
         
         dataTask.resume()
    }
}
//MARK: - SGD
class CryptoViewModelSGD: ObservableObject {
    
    @Published var instrumentPublished: [Instrument] = []
    
    func fetchCryptoData() {
        //MARK: Creating URL Object.
        let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=sgd&order=market_cap_desc&per_page=200&page=1&sparkline=false&price_change_percentage=1h%2C24h%2C7d%2C14d%2C30d%2C1y")
         
         //MARK: Creating URL Object.
         var request = URLRequest(url: url!)
         
         //MARK: Specifying the Headers.
         let headers = [
             "accept": "application/json",

         ]
         
         //MARK: Set Request Types.
         request.httpMethod = "GET"
         request.allHTTPHeaderFields = headers
         
         //MARK: Get URLSession.
         let session = URLSession.shared

         //MARK: Create the Data Task.
         let dataTask = session.dataTask(with: request) { data, response, error in
             //Check for errors in dataTask.
             if error == nil && data != nil {
                 let decode = JSONDecoder()
                 //Try parse the data.
                 do {
                     let instrumentParsed = try decode.decode([Instrument].self, from: data!)
                     DispatchQueue.main.async {
                         self.instrumentPublished = instrumentParsed
                     }
                 } catch {
                     print(error)
                 }
             }
         }
         
         dataTask.resume()
    }
}
//MARK: - BRL
class CryptoViewModelBRL: ObservableObject {
    
    @Published var instrumentPublished: [Instrument] = []
    
    func fetchCryptoData() {
        //MARK: Creating URL Object.
        let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=brl&order=market_cap_desc&per_page=200&page=1&sparkline=false&price_change_percentage=1h%2C24h%2C7d%2C14d%2C30d%2C1y")
         
         //MARK: Creating URL Object.
         var request = URLRequest(url: url!)
         
         //MARK: Specifying the Headers.
         let headers = [
             "accept": "application/json",

         ]
         
         //MARK: Set Request Types.
         request.httpMethod = "GET"
         request.allHTTPHeaderFields = headers
         
         //MARK: Get URLSession.
         let session = URLSession.shared

         //MARK: Create the Data Task.
         let dataTask = session.dataTask(with: request) { data, response, error in
             //Check for errors in dataTask.
             if error == nil && data != nil {
                 let decode = JSONDecoder()
                 //Try parse the data.
                 do {
                     let instrumentParsed = try decode.decode([Instrument].self, from: data!)
                     DispatchQueue.main.async {
                         self.instrumentPublished = instrumentParsed
                     }
                 } catch {
                     print(error)
                 }
             }
         }
         
         dataTask.resume()
    }
}
//MARK: - ZAR
class CryptoViewModelZAR: ObservableObject {
    
    @Published var instrumentPublished: [Instrument] = []
    
    func fetchCryptoData() {
        //MARK: Creating URL Object.
        let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=zar&order=market_cap_desc&per_page=200&page=1&sparkline=false&price_change_percentage=1h%2C24h%2C7d%2C14d%2C30d%2C1y")
         
         //MARK: Creating URL Object.
         var request = URLRequest(url: url!)
         
         //MARK: Specifying the Headers.
         let headers = [
             "accept": "application/json",

         ]
         
         //MARK: Set Request Types.
         request.httpMethod = "GET"
         request.allHTTPHeaderFields = headers
         
         //MARK: Get URLSession.
         let session = URLSession.shared

         //MARK: Create the Data Task.
         let dataTask = session.dataTask(with: request) { data, response, error in
             //Check for errors in dataTask.
             if error == nil && data != nil {
                 let decode = JSONDecoder()
                 //Try parse the data.
                 do {
                     let instrumentParsed = try decode.decode([Instrument].self, from: data!)
                     DispatchQueue.main.async {
                         self.instrumentPublished = instrumentParsed
                     }
                 } catch {
                     print(error)
                 }
             }
         }
         
         dataTask.resume()
    }
}
//MARK: - INR
class CryptoViewModelINR: ObservableObject {
    
    @Published var instrumentPublished: [Instrument] = []
    
    func fetchCryptoData() {
        //MARK: Creating URL Object.
        let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=inr&order=market_cap_desc&per_page=200&page=1&sparkline=false&price_change_percentage=1h%2C24h%2C7d%2C14d%2C30d%2C1y")
         
         //MARK: Creating URL Object.
         var request = URLRequest(url: url!)
         
         //MARK: Specifying the Headers.
         let headers = [
             "accept": "application/json",

         ]
         
         //MARK: Set Request Types.
         request.httpMethod = "GET"
         request.allHTTPHeaderFields = headers
         
         //MARK: Get URLSession.
         let session = URLSession.shared

         //MARK: Create the Data Task.
         let dataTask = session.dataTask(with: request) { data, response, error in
             //Check for errors in dataTask.
             if error == nil && data != nil {
                 let decode = JSONDecoder()
                 //Try parse the data.
                 do {
                     let instrumentParsed = try decode.decode([Instrument].self, from: data!)
                     DispatchQueue.main.async {
                         self.instrumentPublished = instrumentParsed
                     }
                 } catch {
                     print(error)
                 }
             }
         }
         
         dataTask.resume()
    }
}
//MARK: - JPY
class CryptoViewModelJPY: ObservableObject {
    
    @Published var instrumentPublished: [Instrument] = []
    
    func fetchCryptoData() {
        //MARK: Creating URL Object.
        let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=jpy&order=market_cap_desc&per_page=200&page=1&sparkline=false&price_change_percentage=1h%2C24h%2C7d%2C14d%2C30d%2C1y")
         
         //MARK: Creating URL Object.
         var request = URLRequest(url: url!)
         
         //MARK: Specifying the Headers.
         let headers = [
             "accept": "application/json",

         ]
         
         //MARK: Set Request Types.
         request.httpMethod = "GET"
         request.allHTTPHeaderFields = headers
         
         //MARK: Get URLSession.
         let session = URLSession.shared

         //MARK: Create the Data Task.
         let dataTask = session.dataTask(with: request) { data, response, error in
             //Check for errors in dataTask.
             if error == nil && data != nil {
                 let decode = JSONDecoder()
                 //Try parse the data.
                 do {
                     let instrumentParsed = try decode.decode([Instrument].self, from: data!)
                     DispatchQueue.main.async {
                         self.instrumentPublished = instrumentParsed
                     }
                 } catch {
                     print(error)
                 }
             }
         }
         
         dataTask.resume()
    }
}
//MARK: - XAU
class CryptoViewModelXAU: ObservableObject {
    
    @Published var instrumentPublished: [Instrument] = []
    
    func fetchCryptoData() {
        //MARK: Creating URL Object.
        let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=xau&order=market_cap_desc&per_page=200&page=1&sparkline=false&price_change_percentage=1h%2C24h%2C7d%2C14d%2C30d%2C1y")
         
         //MARK: Creating URL Object.
         var request = URLRequest(url: url!)
         
         //MARK: Specifying the Headers.
         let headers = [
             "accept": "application/json",

         ]
         
         //MARK: Set Request Types.
         request.httpMethod = "GET"
         request.allHTTPHeaderFields = headers
         
         //MARK: Get URLSession.
         let session = URLSession.shared

         //MARK: Create the Data Task.
         let dataTask = session.dataTask(with: request) { data, response, error in
             //Check for errors in dataTask.
             if error == nil && data != nil {
                 let decode = JSONDecoder()
                 //Try parse the data.
                 do {
                     let instrumentParsed = try decode.decode([Instrument].self, from: data!)
                     DispatchQueue.main.async {
                         self.instrumentPublished = instrumentParsed
                     }
                 } catch {
                     print(error)
                 }
             }
         }
         
         dataTask.resume()
    }
}
//MARK: - XAG
class CryptoViewModelXAG: ObservableObject {
    
    @Published var instrumentPublished: [Instrument] = []
    
    func fetchCryptoData() {
        //MARK: Creating URL Object.
        let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=xag&order=market_cap_desc&per_page=200&page=1&sparkline=false&price_change_percentage=1h%2C24h%2C7d%2C14d%2C30d%2C1y")
         
         //MARK: Creating URL Object.
         var request = URLRequest(url: url!)
         
         //MARK: Specifying the Headers.
         let headers = [
             "accept": "application/json",

         ]
         
         //MARK: Set Request Types.
         request.httpMethod = "GET"
         request.allHTTPHeaderFields = headers
         
         //MARK: Get URLSession.
         let session = URLSession.shared

         //MARK: Create the Data Task.
         let dataTask = session.dataTask(with: request) { data, response, error in
             //Check for errors in dataTask.
             if error == nil && data != nil {
                 let decode = JSONDecoder()
                 //Try parse the data.
                 do {
                     let instrumentParsed = try decode.decode([Instrument].self, from: data!)
                     DispatchQueue.main.async {
                         self.instrumentPublished = instrumentParsed
                     }
                 } catch {
                     print(error)
                 }
             }
         }
         
         dataTask.resume()
    }
}
