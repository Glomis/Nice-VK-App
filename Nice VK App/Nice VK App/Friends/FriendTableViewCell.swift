//
//  FriendTableViewCell.swift
//  Nice VK App
//
//  Created by Tatyana on 29.10.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatarView: UIImageView!
    
    func configureUser (from user: User) {
        nameLabel.text = user.name
        avatarView.image = user.userAvatar
    }

}
