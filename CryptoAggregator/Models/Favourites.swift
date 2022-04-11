//
//  Favourites.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/04/11.
//

import Foundation
//MARK: - USD
class FavouritesUSD: ObservableObject {
    var cryptos: Set<String>
    
    private let saveKey = "Favourites"
    
    init() {
        //load our saved data
        self.cryptos = []
        
        self.load()
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptos.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.remove(crypto.id!)
        save()
    }
    
    func save() {
        do {
            let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
            let resortIds = Array(self.cryptos)
            let data = try JSONEncoder().encode(resortIds)
            try data.write(to: filename, options: [.atomicWrite, .completeFileProtection])
            print("Resort data saved")
        } catch {
            print("Unable to save data.")
        }
    }
    
    func getDocumentsDirectory() -> URL {
        // find all possible documents directories for this user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

        // just send back the first one, which ought to be the only one
        return paths[0]
    }
    
    func load() {
        let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
        do {
            let data = try Data(contentsOf: filename)
            let resortIds = try JSONDecoder().decode([String].self, from: data)
            cryptos = Set(resortIds)
        } catch {
            print("Unable to load saved data.")
        }
    }
}
//MARK: - EUR
class FavouritesEUR: ObservableObject {
    var cryptos: Set<String>
    
    private let saveKey = "Favourites"
    
    init() {
        //load our saved data
        self.cryptos = []
        
        self.load()
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptos.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.remove(crypto.id!)
        save()
    }
    
    func save() {
        do {
            let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
            let resortIds = Array(self.cryptos)
            let data = try JSONEncoder().encode(resortIds)
            try data.write(to: filename, options: [.atomicWrite, .completeFileProtection])
            print("Resort data saved")
        } catch {
            print("Unable to save data.")
        }
    }
    
    func getDocumentsDirectory() -> URL {
        // find all possible documents directories for this user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

        // just send back the first one, which ought to be the only one
        return paths[0]
    }
    
    func load() {
        let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
        do {
            let data = try Data(contentsOf: filename)
            let resortIds = try JSONDecoder().decode([String].self, from: data)
            cryptos = Set(resortIds)
        } catch {
            print("Unable to load saved data.")
        }
    }
}
//MARK: - AUD
class FavouritesAUR: ObservableObject {
    var cryptos: Set<String>
    
    private let saveKey = "Favourites"
    
    init() {
        //load our saved data
        self.cryptos = []
        
        self.load()
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptos.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.remove(crypto.id!)
        save()
    }
    
    func save() {
        do {
            let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
            let resortIds = Array(self.cryptos)
            let data = try JSONEncoder().encode(resortIds)
            try data.write(to: filename, options: [.atomicWrite, .completeFileProtection])
            print("Resort data saved")
        } catch {
            print("Unable to save data.")
        }
    }
    
    func getDocumentsDirectory() -> URL {
        // find all possible documents directories for this user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

        // just send back the first one, which ought to be the only one
        return paths[0]
    }
    
    func load() {
        let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
        do {
            let data = try Data(contentsOf: filename)
            let resortIds = try JSONDecoder().decode([String].self, from: data)
            cryptos = Set(resortIds)
        } catch {
            print("Unable to load saved data.")
        }
    }
}
//MARK: - SGD
class FavouritesSGD: ObservableObject {
    var cryptos: Set<String>
    
    private let saveKey = "Favourites"
    
    init() {
        //load our saved data
        self.cryptos = []
        
        self.load()
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptos.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.remove(crypto.id!)
        save()
    }
    
    func save() {
        do {
            let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
            let resortIds = Array(self.cryptos)
            let data = try JSONEncoder().encode(resortIds)
            try data.write(to: filename, options: [.atomicWrite, .completeFileProtection])
            print("Resort data saved")
        } catch {
            print("Unable to save data.")
        }
    }
    
    func getDocumentsDirectory() -> URL {
        // find all possible documents directories for this user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

        // just send back the first one, which ought to be the only one
        return paths[0]
    }
    
    func load() {
        let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
        do {
            let data = try Data(contentsOf: filename)
            let resortIds = try JSONDecoder().decode([String].self, from: data)
            cryptos = Set(resortIds)
        } catch {
            print("Unable to load saved data.")
        }
    }
}
//MARK: - BRL
class FavouritesBRL: ObservableObject {
    var cryptos: Set<String>
    
    private let saveKey = "Favourites"
    
    init() {
        //load our saved data
        self.cryptos = []
        
        self.load()
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptos.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.remove(crypto.id!)
        save()
    }
    
    func save() {
        do {
            let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
            let resortIds = Array(self.cryptos)
            let data = try JSONEncoder().encode(resortIds)
            try data.write(to: filename, options: [.atomicWrite, .completeFileProtection])
            print("Resort data saved")
        } catch {
            print("Unable to save data.")
        }
    }
    
    func getDocumentsDirectory() -> URL {
        // find all possible documents directories for this user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

        // just send back the first one, which ought to be the only one
        return paths[0]
    }
    
    func load() {
        let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
        do {
            let data = try Data(contentsOf: filename)
            let resortIds = try JSONDecoder().decode([String].self, from: data)
            cryptos = Set(resortIds)
        } catch {
            print("Unable to load saved data.")
        }
    }
}
//MARK: - ZAR
class FavouritesZAR: ObservableObject {
    var cryptos: Set<String>
    
    private let saveKey = "Favourites"
    
    init() {
        //load our saved data
        self.cryptos = []
        
        self.load()
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptos.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.remove(crypto.id!)
        save()
    }
    
    func save() {
        do {
            let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
            let resortIds = Array(self.cryptos)
            let data = try JSONEncoder().encode(resortIds)
            try data.write(to: filename, options: [.atomicWrite, .completeFileProtection])
            print("Resort data saved")
        } catch {
            print("Unable to save data.")
        }
    }
    
    func getDocumentsDirectory() -> URL {
        // find all possible documents directories for this user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

        // just send back the first one, which ought to be the only one
        return paths[0]
    }
    
    func load() {
        let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
        do {
            let data = try Data(contentsOf: filename)
            let resortIds = try JSONDecoder().decode([String].self, from: data)
            cryptos = Set(resortIds)
        } catch {
            print("Unable to load saved data.")
        }
    }
}
//MARK: - INR
class FavouritesINR: ObservableObject {
    var cryptos: Set<String>
    
    private let saveKey = "Favourites"
    
    init() {
        //load our saved data
        self.cryptos = []
        
        self.load()
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptos.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.remove(crypto.id!)
        save()
    }
    
    func save() {
        do {
            let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
            let resortIds = Array(self.cryptos)
            let data = try JSONEncoder().encode(resortIds)
            try data.write(to: filename, options: [.atomicWrite, .completeFileProtection])
            print("Resort data saved")
        } catch {
            print("Unable to save data.")
        }
    }
    
    func getDocumentsDirectory() -> URL {
        // find all possible documents directories for this user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

        // just send back the first one, which ought to be the only one
        return paths[0]
    }
    
    func load() {
        let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
        do {
            let data = try Data(contentsOf: filename)
            let resortIds = try JSONDecoder().decode([String].self, from: data)
            cryptos = Set(resortIds)
        } catch {
            print("Unable to load saved data.")
        }
    }
}
//MARK: - JPY
class FavouritesJPY: ObservableObject {
    var cryptos: Set<String>
    
    private let saveKey = "Favourites"
    
    init() {
        //load our saved data
        self.cryptos = []
        
        self.load()
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptos.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.remove(crypto.id!)
        save()
    }
    
    func save() {
        do {
            let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
            let resortIds = Array(self.cryptos)
            let data = try JSONEncoder().encode(resortIds)
            try data.write(to: filename, options: [.atomicWrite, .completeFileProtection])
            print("Resort data saved")
        } catch {
            print("Unable to save data.")
        }
    }
    
    func getDocumentsDirectory() -> URL {
        // find all possible documents directories for this user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

        // just send back the first one, which ought to be the only one
        return paths[0]
    }
    
    func load() {
        let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
        do {
            let data = try Data(contentsOf: filename)
            let resortIds = try JSONDecoder().decode([String].self, from: data)
            cryptos = Set(resortIds)
        } catch {
            print("Unable to load saved data.")
        }
    }
}
//MARK: - XAU
class FavouritesXAU: ObservableObject {
    var cryptos: Set<String>
    
    private let saveKey = "Favourites"
    
    init() {
        //load our saved data
        self.cryptos = []
        
        self.load()
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptos.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.remove(crypto.id!)
        save()
    }
    
    func save() {
        do {
            let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
            let resortIds = Array(self.cryptos)
            let data = try JSONEncoder().encode(resortIds)
            try data.write(to: filename, options: [.atomicWrite, .completeFileProtection])
            print("Resort data saved")
        } catch {
            print("Unable to save data.")
        }
    }
    
    func getDocumentsDirectory() -> URL {
        // find all possible documents directories for this user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

        // just send back the first one, which ought to be the only one
        return paths[0]
    }
    
    func load() {
        let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
        do {
            let data = try Data(contentsOf: filename)
            let resortIds = try JSONDecoder().decode([String].self, from: data)
            cryptos = Set(resortIds)
        } catch {
            print("Unable to load saved data.")
        }
    }
}
//MARK: - XAG
class FavouritesXAG: ObservableObject {
    var cryptos: Set<String>
    
    private let saveKey = "Favourites"
    
    init() {
        //load our saved data
        self.cryptos = []
        
        self.load()
    }
    
    func contains(_ crypto: Instrument) -> Bool {
        cryptos.contains(crypto.id!)
    }
    
    func add(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.insert(crypto.id!)
        save()
    }
    
    func remove(_ crypto: Instrument) {
        objectWillChange.send()
        cryptos.remove(crypto.id!)
        save()
    }
    
    func save() {
        do {
            let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
            let resortIds = Array(self.cryptos)
            let data = try JSONEncoder().encode(resortIds)
            try data.write(to: filename, options: [.atomicWrite, .completeFileProtection])
            print("Resort data saved")
        } catch {
            print("Unable to save data.")
        }
    }
    
    func getDocumentsDirectory() -> URL {
        // find all possible documents directories for this user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

        // just send back the first one, which ought to be the only one
        return paths[0]
    }
    
    func load() {
        let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
        do {
            let data = try Data(contentsOf: filename)
            let resortIds = try JSONDecoder().decode([String].self, from: data)
            cryptos = Set(resortIds)
        } catch {
            print("Unable to load saved data.")
        }
    }
}
