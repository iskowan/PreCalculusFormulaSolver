//
//  EquationTableViewController.swift
//  PreCalculusFormulaSolver
//
//  Created by Anderson on 5/3/23.
//

import UIKit

class EquationTableViewController: UITableViewController {

    var section: [Section] = [
        Section(name: "Sum and Difference Idnetities",
                equation: [Equation(name: "eggs", description: "scrabled"),
                           Equation(name: "juice", description: "orange"),
                           Equation(name: "toast", description: "lightly buttered")]),
        Section(name: "lunch",
             equation: [Equation(name: "sandwhich", description: "grilled cheese"),
                        Equation(name: "iced tea", description: "unsweetened")]),
        Section(name: "dinner",
             equation: [Equation(name: "pasta", description: "penne with alfredo sauce"),
                        Equation(name: "salad", description: "Greek"),
                        Equation(name: "garlic bread", description: "extra cheese"),
                        Equation(name: "water", description: "with a slice of lemon")
            ])
    ]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return section.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection rows: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return section[rows].equation.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "equationCell", for: indexPath)
        
        let section = section[indexPath.section]
        let equation = section.equation[indexPath.row]
        cell.textLabel?.text = equation.name
        cell.detailTextLabel?.text = equation.description
        
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection hello: Int) -> String? {
        return section[hello].name
    }
}
