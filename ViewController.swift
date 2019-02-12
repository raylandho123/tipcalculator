//
//  ViewController.swift
//  NotesApp
//
//  Created by hfu on 1/14/19.
//  Copyright © 2019 hfu. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "list", for: indexPath)
        cell.textLabel?.text = "This cell is at index: \(indexPath.row)"
        cell.textLabel?.text = (String)((arc4random()%50)+1)
        return cell
    }
}

