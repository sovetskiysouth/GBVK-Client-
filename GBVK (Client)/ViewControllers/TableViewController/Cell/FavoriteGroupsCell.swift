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
    
    func configure(imageName: String?, title: String) {
        FavoriteGroupImageView.image = UIImage(named: "Homer")
        FavoriteGroupLabelView.text = title
    }
    
    static let identifier = "FavoriteGroupsCells"
    

}
