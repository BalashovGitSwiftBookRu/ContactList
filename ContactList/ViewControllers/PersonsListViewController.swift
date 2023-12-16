//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Sergey Balashov on 12/14/23.
//

import UIKit

final class PersonsListViewController: UITableViewController {
    
    var dataStore = DataStore()
    var persons = [Person]()

    override func viewDidLoad() {
        super.viewDidLoad()        
        persons = Person.getPersons(count: 10, dataStore: dataStore)        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content

        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? DetailsViewController
        let indexPath = tableView.indexPathForSelectedRow
        let person = persons[indexPath?.row ?? 0]
        detailsVC?.person = person
    }
}
