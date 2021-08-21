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
    
    func configure(imageName: String?, title: String) {
        
        AllGroupsImageView.image = UIImage(named: "Homer")
        AllGroupsLabelView.text = title
    }
    
    static let identifier = "AllGroupsCells"
    
}
