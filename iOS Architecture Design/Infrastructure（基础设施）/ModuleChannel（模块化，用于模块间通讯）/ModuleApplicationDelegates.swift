//
//  ModuleApplicationDelegates.swift
//  Architecture Design
//
//  Created by lidan on 2024/2/6.
//

import UIKit

protocol ModuleApplicationDelegate: UIApplicationDelegate {
    init(service: String)
}

class ModuleApplication: UIResponder, UIApplicationDelegate {
    func addModule(_ module: ModuleApplicationDelegate) { }
}
