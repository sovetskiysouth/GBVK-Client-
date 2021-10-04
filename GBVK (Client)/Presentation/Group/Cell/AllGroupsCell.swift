//
//  AllGroupsCell.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 16.08.2021.
//

import UIKit

class AllGroupsCell: UITableViewCell {
    
    static let identifier = "AllGroupsCells"

    @IBOutlet var AllGroupsImageView: UIImageView!
    @IBOutlet var AllGroupsLabelView: UILabel!
    
    func configure(group: GroupModel) {
        
        AllGroupsImageView.image = UIImage(named: group.avatarName)
        
        AllGroupsLabelView.text = group.nameGroup
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        AllGroupsImageView.contentMode = .scaleAspectFill
        AllGroupsImageView.layer.cornerRadius = 50
        AllGroupsImageView.clipsToBounds = true
        AllGroupsImageView.layer.borderColor = UIColor.darkGray.cgColor
        AllGroupsImageView.layer.borderWidth = 5
    }
}
