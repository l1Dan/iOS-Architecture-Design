//
//  Environment.swift
//  Architecture Design
//
//  Created by lidan on 2024/2/7.
//

import Foundation

enum Environment: String, CaseIterable {
    case develop // 开发环境
    case testing // 测试环境
    case staging // 预发环境
    case release // 线上环境
}

extension Environment {
    var name: String {
        switch self {
        case .develop: return "开发环境(dev)"
        case .testing: return "测试环境(test)"
        case .staging: return "预发环境(stage)"
        case .release: return "线上环境(prod)"
        }
    }
}
