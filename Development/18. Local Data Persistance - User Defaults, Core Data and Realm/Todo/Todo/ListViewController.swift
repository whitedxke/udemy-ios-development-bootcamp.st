//
//  ViewController.swift
//  Todo
//
//  Created by Pavel Betenya on 12.12.25.
//

import UIKit

class ListViewController: UITableViewController {
    var array = [
        "Item 1",
        "Item 2",
        "Item 3",
        "Item 4",
        "Item 5",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Mark. Tableview Datasource Methods.
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "ToDoItemCell",
            for: indexPath,
        )
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
    
    // Mark. Tableview Delegate Methods.
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // Mark: Add a new Item.
    
    @IBAction func addNewItemPressed(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        let alert = UIAlertController(
            title: "Add a new Item?",
            message: "What do you want to get done next? Type it below.",
            preferredStyle: .alert,
        )
        let action = UIAlertAction(title: "Add", style: .default) { (action) in
            self.array.append(textField.text!)
            self.tableView.reloadData()
        }
        
        alert.addTextField { (alertTextField) in
            textField.placeholder = "Type here.."
            textField = alertTextField
        }
        
        alert.addAction(action)
        
        present(alert, animated: true , completion: nil)
    }
}
