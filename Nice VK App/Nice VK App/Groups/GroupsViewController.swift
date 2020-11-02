//
//  GroupsViewController.swift
//  Nice VK App
//
//  Created by Tatyana on 28.10.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class GroupsViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var tabelView: UITableView!
    
    // Variables
    var myGroups = [Group(name: "Marvel", avatar: #imageLiteral(resourceName: "marvel"), description: nil, subscribers: 489500),
                    Group(name: "Swift Developers", avatar: #imageLiteral(resourceName: "swift"), description: nil, subscribers: 1430),
                    Group(name: "Anime Party", avatar: #imageLiteral(resourceName: "totoro"), description: nil, subscribers: 8700)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabelView.delegate = self
        tabelView.dataSource = self
    }
}

extension GroupsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myGroups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath) as! GroupTableViewCell
        
        let group = myGroups[indexPath.row]
        cell.configureGroupCell(from: group)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            myGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    //MARK: IBActions
    @IBAction func addGroup(_ unwindSegue: UIStoryboardSegue) {
        guard unwindSegue.identifier == "addGroup" else { return }
        
        let sourceViewController = unwindSegue.source as! AllGroupsTableViewController
        
        if let indexPath = sourceViewController.tableView.indexPathForSelectedRow {
            let selectedGroup = sourceViewController.allGroups[indexPath.row]
            
            if !myGroups.contains(where: { (group) -> Bool in
                group.name == selectedGroup.name
            }) {
                myGroups.append(selectedGroup)
                tabelView.reloadData()
            } else {
    //MARK: add Alert!
            }
        }
    }
    
}
