//
//  AllGroupsCell.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 16.08.2021.
//

import UIKit

class AllGroupsCell: UITableViewCell {

    @IBOutlet var AllGroupsImageView: UIImageView!
    @IBOutlet var AllGroupsLabelView: UILabel!
    
    func configure(group: GroupModel) {
        
        AllGroupsImageView.image = UIImage(named: group.avatarName)
        AllGroupsImageView.layer.cornerRadius = 50
        AllGroupsImageView.clipsToBounds = true
        AllGroupsImageView.layer.borderColor = UIColor.darkGray.cgColor
        AllGroupsImageView.layer.borderWidth = 5
        AllGroupsLabelView.text = group.nameGroup
    }
    
    static let identifier = "AllGroupsCells"
    
}
