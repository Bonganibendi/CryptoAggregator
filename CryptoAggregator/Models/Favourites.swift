//
//  Favourites.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/04/11.
//

import Foundation

//MARK: - USD
class FavouritesUSD: ObservableObject {
    var cryptosUSD: Set<String>
    
    private let saveKeyUSD = "FavouritesUSD"
    
    init() {
        //load our saved data
        let favouriteCryptos = UserDefaults.standard.stringArray(forKey: saveKeyUSD)
        cryptosUSD = Set(favouriteCryptos ?? ["Empty"])
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptosUSD.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosUSD.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosUSD.remove(crypto.id!)
        save()
    }
    
    func save() {
        let favoritesArrayUSD = Array(cryptosUSD)
            UserDefaults.standard.set(favoritesArrayUSD, forKey: saveKeyUSD)
    }
}
//MARK: - EUR
class FavouritesEUR: ObservableObject {
    var cryptosEUR: Set<String>
    
    private let saveKeyEUR = "FavouritesEUR"
    
    init() {
        //load our saved data
        let favouriteCryptos = UserDefaults.standard.stringArray(forKey: saveKeyEUR)
        cryptosEUR = Set(favouriteCryptos ?? ["Empty"])
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptosEUR.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosEUR.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosEUR.remove(crypto.id!)
        save()
    }
    
    func save() {
        let favoritesArrayEUR = Array(cryptosEUR)
            UserDefaults.standard.set(favoritesArrayEUR, forKey: saveKeyEUR)
    }
}
//MARK: - AUD
class FavouritesAUD: ObservableObject {
    var cryptosAUD: Set<String>
    
    private let saveKeyAUD = "FavouritesAUD"
    
    init() {
        //load our saved data
        let favouriteCryptos = UserDefaults.standard.stringArray(forKey: saveKeyAUD)
        cryptosAUD = Set(favouriteCryptos ?? ["Empty"])
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptosAUD.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosAUD.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosAUD.remove(crypto.id!)
        save()
    }
    
    func save() {
        let favoritesArrayAUD = Array(cryptosAUD)
            UserDefaults.standard.set(favoritesArrayAUD, forKey: saveKeyAUD)
    }
}
//MARK: - SGD
class FavouritesSGD: ObservableObject {
    var cryptosSGD: Set<String>
    
    private let saveKeySGD = "FavouritesSGD"
    
    init() {
        //load our saved data
        let favouriteCryptos = UserDefaults.standard.stringArray(forKey: saveKeySGD)
        cryptosSGD = Set(favouriteCryptos ?? ["Empty"])
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptosSGD.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosSGD.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosSGD.remove(crypto.id!)
        save()
    }
    
    func save() {
        let favoritesArraySGD = Array(cryptosSGD)
            UserDefaults.standard.set(favoritesArraySGD, forKey: saveKeySGD)
    }
}
//MARK: - BRL
class FavouritesBRL: ObservableObject {
    var cryptosBRL: Set<String>
    
    private let saveKeyBRL = "FavouritesBRL"
    
    init() {
        //load our saved data
        let favouriteCryptos = UserDefaults.standard.stringArray(forKey: saveKeyBRL)
        cryptosBRL = Set(favouriteCryptos ?? ["Empty"])
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptosBRL.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosBRL.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosBRL.remove(crypto.id!)
        save()
    }
    
    func save() {
        let favoritesArrayBRL = Array(cryptosBRL)
            UserDefaults.standard.set(favoritesArrayBRL, forKey: saveKeyBRL)
    }
}
//MARK: - ZAR
class FavouritesZAR: ObservableObject {
    var cryptosZAR: Set<String>
    
    private let saveKeyZAR = "FavouritesZAR"
    
    init() {
        //load our saved data
        let favouriteCryptos = UserDefaults.standard.stringArray(forKey: saveKeyZAR)
        cryptosZAR = Set(favouriteCryptos ?? ["Empty"])
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptosZAR.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosZAR.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosZAR.remove(crypto.id!)
        save()
    }
    
    func save() {
        let favoritesArrayZAR = Array(cryptosZAR)
            UserDefaults.standard.set(favoritesArrayZAR, forKey: saveKeyZAR)
    }
}
//MARK: - INR
class FavouritesINR: ObservableObject {
    var cryptosINR: Set<String>
    
    private let saveKeyINR = "FavouritesINR"
    
    init() {
        //load our saved data
        let favouriteCryptos = UserDefaults.standard.stringArray(forKey: saveKeyINR)
        cryptosINR = Set(favouriteCryptos ?? ["Empty"])
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptosINR.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosINR.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosINR.remove(crypto.id!)
        save()
    }
    
    func save() {
        let favoritesArrayINR = Array(cryptosINR)
            UserDefaults.standard.set(favoritesArrayINR, forKey: saveKeyINR)
    }
}
//MARK: - JPY
class FavouritesJPY: ObservableObject {
    var cryptosJPY: Set<String>
    
    private let saveKeyJPY = "FavouritesJPY"
    
    init() {
        //load our saved data
        let favouriteCryptos = UserDefaults.standard.stringArray(forKey: saveKeyJPY)
        cryptosJPY = Set(favouriteCryptos ?? ["Empty"])
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptosJPY.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosJPY.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosJPY.remove(crypto.id!)
        save()
    }
    
    func save() {
        let favoritesArrayJPY = Array(cryptosJPY)
            UserDefaults.standard.set(favoritesArrayJPY, forKey: saveKeyJPY)
    }
}
//MARK: - XAU
class FavouritesXAU: ObservableObject {
    var cryptosXAU: Set<String>
    
    private let saveKeyXAU = "FavouritesXAU"
    
    init() {
        //load our saved data
        let favouriteCryptos = UserDefaults.standard.stringArray(forKey: saveKeyXAU)
        cryptosXAU = Set(favouriteCryptos ?? ["Empty"])
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptosXAU.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosXAU.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosXAU.remove(crypto.id!)
        save()
    }
    
    func save() {
        let favoritesArrayXAU = Array(cryptosXAU)
            UserDefaults.standard.set(favoritesArrayXAU, forKey: saveKeyXAU)
    }
}
//MARK: - XAU
class FavouritesXAG: ObservableObject {
    var cryptosXAG: Set<String>
    
    private let saveKeyXAG = "FavouritesXAG"
    
    init() {
        //load our saved data
        let favouriteCryptos = UserDefaults.standard.stringArray(forKey: saveKeyXAG)
        cryptosXAG = Set(favouriteCryptos ?? ["Empty"])
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptosXAG.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosXAG.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptosXAG.remove(crypto.id!)
        save()
    }
    
    func save() {
        let favoritesArrayXAG = Array(cryptosXAG)
            UserDefaults.standard.set(favoritesArrayXAG, forKey: saveKeyXAG)
    }
}
