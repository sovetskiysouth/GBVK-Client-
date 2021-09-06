//
//  FavoriteGroupsCell.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 16.08.2021.
//

import UIKit

class FavoriteGroupsCell: UITableViewCell {
    
    @IBOutlet var FavoriteGroupImageView: UIImageView!
    @IBOutlet var FavoriteGroupLabelView: UILabel!
    
    func configure(group: GroupModel) {
        FavoriteGroupImageView.image = UIImage(named: group.avatarName)
        FavoriteGroupImageView.layer.cornerRadius = 50
        FavoriteGroupImageView.clipsToBounds = true
        FavoriteGroupImageView.layer.borderColor = UIColor.darkGray.cgColor
        FavoriteGroupImageView.layer.borderWidth = 5
        FavoriteGroupLabelView.text = group.nameGroup
    }
    
    static let identifier = "FavoriteGroupsCells"
    

}
