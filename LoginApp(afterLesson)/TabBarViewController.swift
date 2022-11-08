//
//  TabBarViewController.swift
//  LoginApp(afterLesson)
//
//  Created by MAcbook on 08.11.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabBarAppearence = UITabBarAppearance()
        tabBarAppearence.configureWithOpaqueBackground()
        
        tabBar.standardAppearance = tabBarAppearence
        tabBar.scrollEdgeAppearance = tabBarAppearence
    }


}
