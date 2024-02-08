//
//  Cache.swift
//  Architecture Design
//
//  Created by lidan on 2024/2/6.
//

import Foundation

struct CacheRepository {
    private var space: String
    
    init(space: String) {
        self.space = space
    }
}

extension CacheRepository: Repository {
    func find<T>(_ key: String) -> T? {
        let key = key.appending(space)
        return UserDefaults.standard.value(forKey: key) as? T
    }
    
    func save<T>(_ value: T?, key: String) {
        let key = key.appending(space)
        UserDefaults.standard.setValue(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    func replace<T>(_ newValue: T?, key: String) -> T? {
        let key = key.appending(space)
        let oldValue: T? = find(key)
        save(newValue, key: key)
        return oldValue
    }
    
    func remove(_ key: String) {
        let key = key.appending(space)
        UserDefaults.standard.removeObject(forKey: key)
        UserDefaults.standard.synchronize()
    }
}
