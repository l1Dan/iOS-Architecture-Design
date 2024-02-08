//
//  StorageManager.swift
//  Architecture Design
//
//  Created by lidan on 2024/2/7.
//

import Foundation

class StorageManager<T> {
    enum Namespace: String {
        case common = "com.common."
        case bll = "com.bll."
        case pl = "com.pl."
    }
    
    let namespace: Namespace
    let repository: Repository
    
    init(namespace: Namespace, repository: Repository) {
        self.namespace = namespace
        self.repository = repository
    }
}

extension StorageManager {
    func find(_ key: String) -> T? {
        return repository.find(key)
    }
    
    func save(_ value: T?, key: String) {
        repository.save(value, key: key)
    }
    
    func replace(_ newValue: T?, key: String) -> T? {
        return repository.replace(newValue, key: key)
    }
    
    func remove(_ key: String) {
        repository.remove(key)
    }
}
