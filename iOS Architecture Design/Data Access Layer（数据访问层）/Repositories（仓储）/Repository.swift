//
//  Repository.swift
//  Architecture Design
//
//  Created by lidan on 2024/2/7.
//

import Foundation

protocol Repository {
    init(space: String)
    
    func find<T>(_ key: String) -> T?
    
    func save<T>(_ value: T?, key: String)
    
    func replace<T>(_ newValue: T?, key: String) -> T?
    
    func remove(_ key: String)
}
