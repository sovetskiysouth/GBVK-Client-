//
//  FrindsCell.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 16.08.2021.
//

import UIKit

class FriendsCell: UITableViewCell {
    
    static let identifier = "FriendsCells"

    @IBOutlet private var FriendsAvatar: UIImageView!
    @IBOutlet private var FriendsNameLabel: UILabel!
    
    func configure(friend: FriendModel) {
        FriendsAvatar.image = UIImage(named: friend.avatarName)
        FriendsNameLabel.text = friend.name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        FriendsAvatar.contentMode = .scaleAspectFill
        FriendsAvatar.layer.cornerRadius = 50
        FriendsAvatar.clipsToBounds = true
        FriendsAvatar.layer.borderColor = UIColor.darkGray.cgColor
        FriendsAvatar.layer.borderWidth = 5
        FriendsAvatar.layer.shadowColor = UIColor.systemRed.cgColor
        FriendsAvatar.layer.shadowOffset = CGSize.init(width: 10, height: 10)
        FriendsAvatar.layer.shadowRadius = 10
        FriendsAvatar.layer.shadowOpacity = 0.7
    }
}
