//
//  MainViewController.swift
//  SimpleXib
//
//  Created by Irfan Pertadima on 1/11/20.
//  Copyright © 2020 Irfan Pertadima. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    var menuBar : [MenuBar] = [.home, .chat, .notification, .profile]
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = 0
        viewControllers = setupBottomBar()
        tabBar.barTintColor = UIColor(named: "ColorWhite")
        tabBar.tintColor = UIColor(named: "ColorPrimary")
        
        if let tabItems = tabBar.items {
            tabItems[1].badgeValue = "4"
            tabItems[2].badgeValue = "10"
        }
    }
    
    private func setupBottomBar() -> [UIViewController] {
        var controllers: [UIViewController] = []
        for value in menuBar {
            var controller: UIViewController!
            controller = value.router
            controller.tabBarItem = getTabBarItem(menu: value)
            controllers.append(controller)
        }
        return controllers
    }
    
    private func getTabBarItem(menu: MenuBar) -> UITabBarItem {
           let tabBarItem = UITabBarItem()
           tabBarItem.image = menu.defaultImage
           tabBarItem.title = menu.title
           return tabBarItem
       }
}
