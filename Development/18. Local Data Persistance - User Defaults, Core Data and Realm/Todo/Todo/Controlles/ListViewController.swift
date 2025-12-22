//
//  ViewController.swift
//  Todo
//
//  Created by Pavel Betenya on 12.12.25.
//

import UIKit
import CoreData

class ListViewController: UITableViewController {
    var array = [Item]()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadDefaultItem()
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
        let item = array[indexPath.row]
        
        cell.textLabel?.text = item.title
        
        cell.accessoryType = item.isCompleted == true ? .checkmark : .none
        
        return cell
    }
    
    // Mark. Tableview Delegate Methods.
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = array[indexPath.row]
        
        if item.isCompleted == false {
            item.isCompleted = true
        } else {
            item.isCompleted = false
        }
        
        self.saveNewItem()
        tableView.deselectRow(
            at: indexPath,
            animated: true,
        )
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
            let newItem = Item(context: self.context)
            
            newItem.title = textField.text!
            newItem.isCompleted = false
            
            self.array.append(newItem)
            self.saveNewItem()
        }
        
        alert.addTextField { (alertTextField) in
            textField.placeholder = "Type here.."
            textField = alertTextField
        }
        alert.addAction(action)
    
        present(
            alert,
            animated: true,
            completion: nil,
        )
    }
    
    // Mark. Model Manupulation Methods.
    
    func saveNewItem() {
        do {
            try self.context.save()
        } catch {}
        
        self.tableView.reloadData()
    }
    
    func loadDefaultItem() {
        let request: NSFetchRequest<Item> = Item.fetchRequest()
        do {
            array = try self.context.fetch(request)
        } catch {}
    }
}
