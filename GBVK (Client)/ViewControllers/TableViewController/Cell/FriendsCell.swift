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
    
    func configure(imageName: String?, title: String) {
        FriendsAvatar.image = UIImage(named: "Homer")
        FriendsNameLabel.text = title
    }
    
    static let identifier = "FriendsCells"

}
