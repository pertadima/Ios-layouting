//
//  MenuBar.swift
//  SimpleXib
//
//  Created by Irfan Pertadima on 1/11/20.
//  Copyright © 2020 Irfan Pertadima. All rights reserved.
//
import UIKit

enum MenuBar {
    case home, chat, notification, profile
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .chat:
            return "Chat"
        case .notification:
            return "Notification"
        case .profile:
            return "Profile"
        }
    }
    
    var router: UIViewController {
        switch self {
        case .home:
            return HomeViewController()
        case .chat:
            return ChatViewController()
        case .notification:
            return NotificationViewController()
        case .profile:
            return ProfileViewController()
        }
    }
    
    var defaultImage: UIImage {
        switch self {
        case .home:
            return UIImage(named: "ic_home") ?? UIImage()
        case .chat:
            return UIImage(named: "ic_chat") ?? UIImage()
        case .notification:
           return UIImage(named: "ic_notification") ?? UIImage()
        case .profile:
           return UIImage(named: "ic_profile") ?? UIImage()
        }
       
    }
}
