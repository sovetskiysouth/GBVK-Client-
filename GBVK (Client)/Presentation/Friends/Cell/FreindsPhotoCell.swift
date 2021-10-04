//
//  FreindsPhotoCell.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 30.08.2021.
//

import UIKit

class FriendsPhotoCell: UICollectionViewCell {
    
    static let identifier = "friendsColletcionPhoto"
    
    @IBOutlet var imageFriends: UIImageView!
    
    func configure(_ photo: FriendsPhotoModel) {
        imageFriends.image = UIImage(named: photo.iconName)
    }
}

