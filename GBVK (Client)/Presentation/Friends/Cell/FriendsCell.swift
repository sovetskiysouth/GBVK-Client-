//
//  FrindsCell.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 16.08.2021.
//

import UIKit

class FriendsCell: UITableViewCell {

    @IBOutlet private var FriendsAvatar: UIImageView!
    @IBOutlet private var FriendsNameLabel: UILabel!
    
    func configure(friend: FriendModel) {
        FriendsAvatar.image = UIImage(named: friend.avatarName)
        FriendsAvatar.layer.cornerRadius = 50
        FriendsAvatar.clipsToBounds = true
        FriendsAvatar.layer.borderColor = UIColor.darkGray.cgColor
        FriendsAvatar.layer.borderWidth = 5
        FriendsNameLabel.text = friend.name
    }
    
    static let identifier = "FriendsCells"

}
