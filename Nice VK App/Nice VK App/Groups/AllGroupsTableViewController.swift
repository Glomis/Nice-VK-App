//
//  AllGroupsTableViewController.swift
//  Nice VK App
//
//  Created by Tatyana on 28.10.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class AllGroupsTableViewController: UITableViewController {

    var allGroups = groupData
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return allGroups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allGroupCell", for: indexPath) as! GroupTableViewCell

        let group = allGroups[indexPath.row]
        cell.configureGroupCell(from: group)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
    }

}
