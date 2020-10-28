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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabelView.delegate = self
        tabelView.dataSource = self
    }
}

// MARK: Extensions
extension GroupsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath)
        
        return cell
    }
    
}
