//
//  EnvironmentManager.swift
//  Architecture Design
//
//  Created by lidan on 2024/2/7.
//

import Foundation

class EnvironmentManager {
    static let `default` = EnvironmentManager()

    private static let environmentStateKey = "EnvironmentStateKey"

    private init() { }
}

extension EnvironmentManager {
    var current: Environment {
        get {
            #if DEBUG
                if let rawValue = UserDefaults.standard.string(forKey: EnvironmentManager.environmentStateKey),
                   let environment = Environment(rawValue: rawValue) {
                    return environment
                }
                return .testing // 默认开发环境
            #else
                return .release
            #endif
        }
        set {
            UserDefaults.standard.setValue(newValue.rawValue, forKey: EnvironmentManager.environmentStateKey)
        }
    }
}
