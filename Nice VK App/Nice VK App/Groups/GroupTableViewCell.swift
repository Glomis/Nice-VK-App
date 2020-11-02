//
//  GroupTableViewCell.swift
//  Nice VK App
//
//  Created by Tatyana on 31.10.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class GroupTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var subscribersLabel: UILabel!
    
    func configureGroupCell(from group: Group) {
        guard group.avatar != nil else { return avatarImageView.image = #imageLiteral(resourceName: "user-1") }
        avatarImageView.image = group.avatar
        nameLabel.text = group.name
        subscribersLabel.text = "Subscribers: \(group.subscribers)"
    }
}
