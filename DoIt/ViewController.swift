//
//  ViewController.swift
//  DoIt
//
//  Created by Brian Hassett on 9/26/17.
//  Copyright © 2017 bhassett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // outlet from storyboard
    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTasks()
        
        // get the data from THIS class
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // how many rows should the table view have?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    // what is in the cells for the table view?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "❗️\(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        
        return cell
    }
    
    // Create "tasks" objects
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Walk the dog."
        task1.important = false
        
        let task2 = Task()
        task2.name = "Buy cheese"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Mow lawn"
        task3.important = false
        
        return [task1, task2, task3]
    }
    

    @IBAction func plusTapped(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
}

