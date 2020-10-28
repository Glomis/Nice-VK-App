//
//  eeViewController.swift
//  Nice VK App
//
//  Created by Tatyana on 27.10.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class FriendsViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var tabelView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabelView.delegate = self
        tabelView.dataSource = self
    }
    
}

// MARK: Extensions
extension FriendsViewController: UITableViewDelegate, UITableViewDataSource  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath)
        
        return cell
    }
}
