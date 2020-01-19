//
//  Pods+Extensions.swift
//  TestStorage
//
//  Created by Maksym Savisko on 1/21/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import KeychainAccess

extension Keychain: KeychainDescribing {
    func set(_ value: String, key: String) throws {
        try set(value, key: key, ignoringAttributeSynchronizable: true)
    }
    
    func set(_ value: Data, key: String) throws {
        try set(value, key: key, ignoringAttributeSynchronizable: true)
    }
    
    func getString(_ key: String) throws -> String? {
        try getString(key, ignoringAttributeSynchronizable: true)
    }
    
    func getData(_ key: String) throws -> Data? {
        try getData(key, ignoringAttributeSynchronizable: true)
    }
    
    func remove(_ key: String) throws {
        try remove(key, ignoringAttributeSynchronizable: true)
    }
}
