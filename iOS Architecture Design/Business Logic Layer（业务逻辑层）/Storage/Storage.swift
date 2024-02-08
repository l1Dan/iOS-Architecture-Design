//
//  Storage.swift
//  Architecture Design
//
//  Created by lidan on 2024/2/7.
//

import Foundation

class CommonStorage {
    private init() {}

    static func find<T>(_ key: String) -> T? {
        let namespace = StorageManager<T>.Namespace.common
        let repository = CacheRepository(space: namespace.rawValue)
        return StorageManager<T>(namespace: namespace, repository: repository).find(key)
    }
    
    static func save<T>(_ value: T?, key: String) {
        let namespace = StorageManager<T>.Namespace.common
        let repository = CacheRepository(space: namespace.rawValue)
        StorageManager<T>(namespace: namespace, repository: repository).save(value, key: key)
    }
    
    func replace<T>(_ newValue: T?, key: String) -> T? {
        let namespace = StorageManager<T>.Namespace.common
        let repository = CacheRepository(space: namespace.rawValue)
        return StorageManager<T>(namespace: namespace, repository: repository).replace(newValue, key: key)
    }
    
    func remove<T>(_ key: String) -> T? {
        let namespace = StorageManager<T>.Namespace.common
        let repository = CacheRepository(space: namespace.rawValue)
        let manager = StorageManager<T>(namespace: namespace, repository: repository)
        let value = manager.find(key)
        manager.remove(key)
        return value
    }
}
