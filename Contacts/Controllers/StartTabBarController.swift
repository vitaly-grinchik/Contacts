//
//  StartTabBarController.swift
//  Contacts
//
//  Created by Виталий Гринчик on 11.01.23.
//

import UIKit

final class StartTabBarController: UITabBarController {

    private let contacts = Person.getRandomListFor(numberOfPersons: 5)
   
    override func viewDidLoad() {
        super.viewDidLoad()
        sendData()
    }
    
    private func sendData() {
        viewControllers?.forEach { vc in
            if let naviVC = vc as? UINavigationController {
                if let briefVC = naviVC.topViewController as? BriefListViewController {
                    briefVC.contacts = contacts
                } else if let richVC = naviVC.topViewController as? DetailedListViewController {
                    richVC.contacts = contacts
                }
            }
        }
    }
}
