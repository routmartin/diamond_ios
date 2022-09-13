//
//  TabBarController.swift
//  project
//
//  Created by MacBook Pro 13" 2017 on 12/9/22.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        tabBar.unselectedItemTintColor = .gray
        tabBar.tintColor = .orange
        tabBar.isTranslucent = false
        tabBar.barTintColor = .white
        
       let apperence = UITabBarAppearance()
        apperence.configureWithOpaqueBackground()
        apperence.backgroundColor = .white
        tabBar.standardAppearance = apperence
        tabBar.scrollEdgeAppearance = tabBar.standardAppearance
        
        
        let homeTab = HomePageViewController()
        let tabHomeBarItem = UITabBarItem(title:"", image: UIImage(named: "home"), selectedImage: UIImage(named: "home"))
        homeTab.tabBarItem = tabHomeBarItem
        let homeNav = UINavigationController(rootViewController: homeTab)
        
        
        
        let pendingApprove  = PendingApproveViewController()
        let tabPendingApproveBarItem = UITabBarItem(title: "", image: UIImage(named: "ar"),selectedImage: UIImage(named: "ar"))
        pendingApprove.tabBarItem = tabPendingApproveBarItem
        let pendingApproveNav = UINavigationController(rootViewController: pendingApprove)
        
        
        
        let notification  = NotificationViewController()
        let tabNotificationBarItem = UITabBarItem(title:"", image: UIImage(named: "notification"),selectedImage: UIImage(named: "notification"))
        notification.tabBarItem = tabNotificationBarItem
        let notificationNav = UINavigationController(rootViewController: notification)
        
        
        let arrow_down  = ARPageViewController()
        let tabArrow_downBarItem = UITabBarItem(title: "", image: UIImage(named: "arrow_down"),selectedImage: UIImage(named: "arrow_down"))
        arrow_down.tabBarItem = tabArrow_downBarItem
        let arrow_downNav = UINavigationController(rootViewController: arrow_down)
        
        viewControllers = [homeNav, pendingApproveNav, notificationNav, arrow_downNav]
    }
    
   

}
