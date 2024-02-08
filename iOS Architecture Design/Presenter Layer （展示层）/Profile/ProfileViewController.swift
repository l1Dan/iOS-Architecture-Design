//
//  ProfileViewController.swift
//  Architecture Design
//
//  Created by lidan on 2024/2/8.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class ProfileViewController: BaseViewController {

    // MARK: - Public properties -

    var presenter: ProfilePresenterInterface!

    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

// MARK: - Extensions -

extension ProfileViewController: ProfileViewInterface {
}
