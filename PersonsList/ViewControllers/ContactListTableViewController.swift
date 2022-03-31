//
//  ContactListTableViewController.swift
//  PersonsList
//
//  Created by Александра Лесовская on 31.03.2022.
//

import UIKit

class ContactListTableViewController: UITableViewController {
    
    // MARK: - Public Properties
    var persons: [Person] = []

    // MARK: - Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? ContactDetailsViewController else { return }
            detailVC.person = persons[indexPath.row]
        }
    }
    
}
