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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // get the data from THIS class
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // how many rows should the table view have?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    // what is in the cells for the table view?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Hello?"
        return cell
    }
    
    // Create "tasks" objects
    


}

