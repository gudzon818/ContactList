//
//  ContactViewController.swift
//  ContactList
//
//  Created by user on 02.03.2023.
//

import UIKit

class ContactViewController: UITableViewController {
    
    private var personList = Person.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personInfoVC = segue.destination as? PersonInfoViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personInfoVC?.info = personList[indexPath.row]
       
    }

    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = personList[indexPath.row]
        content.text = contact.fullName
        cell.contentConfiguration = content
        
        
        return cell
    }
    
}
