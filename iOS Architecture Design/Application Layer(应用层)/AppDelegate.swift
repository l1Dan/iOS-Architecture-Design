//
//  AppDelegate.swift
//  Architecture Design
//
//  Created by lidan on 2024/2/7.
//

import UIKit

@main
class AppDelegate: ModuleApplication {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = DashboardViewController()
        window?.makeKeyAndVisible()
        
        // 防止 AppDelegate 内容过多，将 AppDelegate 处理逻辑分散到各个模块中

        // 字符串用作服务名称，便于模块间解耦
        addModule(TrendModule(service: "TrendModuleService"))
        ModuleChannel.default.register(service: "TrendModuleService", for: self)

        addModule(NotificationModule(service: "NotificationModuleService"))
        ModuleChannel.default.register(service: "NotificationModuleService", for: self)

        addModule(PaymentModule(service: "PaymentModuleService"))
        ModuleChannel.default.register(service: "PaymentModuleService", for: self)

        addModule(ChatModule(service: "ChatModuleService"))
        ModuleChannel.default.register(service: "ChatModuleService", for: self)
        
        return true
    }

}

