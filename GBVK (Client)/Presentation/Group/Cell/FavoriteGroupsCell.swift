//
//  FavoriteGroupsCell.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 16.08.2021.
//

import UIKit

class FavoriteGroupsCell: UITableViewCell {
    
    static let identifier = "FavoriteGroupsCells"
    
    @IBOutlet var FavoriteGroupImageView: UIImageView!
    @IBOutlet var FavoriteGroupLabelView: UILabel!
    
    func configure(group: GroupModel) {
        FavoriteGroupImageView.image = UIImage(named: group.avatarName)
        FavoriteGroupLabelView.text = group.nameGroup
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        FavoriteGroupImageView.contentMode = .scaleAspectFill
        FavoriteGroupImageView.layer.cornerRadius = 50
        FavoriteGroupImageView.clipsToBounds = true
        FavoriteGroupImageView.layer.borderColor = UIColor.darkGray.cgColor
        FavoriteGroupImageView.layer.borderWidth = 5
    }
}
