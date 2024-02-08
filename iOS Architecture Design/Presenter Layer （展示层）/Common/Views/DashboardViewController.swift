//
//  DashboardViewController.swift
//  Architecture Design
//
//  Created by lidan on 2024/2/8.
//

import UIKit

class DashboardViewController: UITabBarController {
    
    private var home = BaseNavigationController(rootViewController: HomeViewController())
    private var discard = BaseNavigationController(rootViewController: DiscardViewController())
    private var profile = BaseNavigationController(rootViewController: ProfileViewController())

    override func viewDidLoad() {
        super.viewDidLoad()
        
        [home, discard, profile].forEach(addChild(_:))
        home.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
        discard.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        profile.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
    }

}
