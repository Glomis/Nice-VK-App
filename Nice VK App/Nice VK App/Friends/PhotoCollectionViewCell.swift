//
//  PhotoCollectionViewCell.swift
//  Nice VK App
//
//  Created by Tatyana on 31.10.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photo: UIImageView!
    
    func configure(from user: User) {
        photo.image = user.userAvatar
    }
}
