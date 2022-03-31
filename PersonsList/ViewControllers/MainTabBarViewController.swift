//
//  MainTabBarViewController.swift
//  PersonsList
//
//  Created by Александра Лесовская on 31.03.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    // MARK: - Private Methods
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListTableViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else { return }
        
        let persons = Person.getContactList()
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
    
}
