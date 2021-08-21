//
//  MyProfileCellTableViewCell.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 18.08.2021.
//

import UIKit

class MyProfileCell: UITableViewCell {

    @IBOutlet var MyProfileImageView: UIImageView!
    @IBOutlet var MyProfileLabelView: UILabel!
    
    func configure(imageName: String?, title: String) {
        MyProfileImageView.image = UIImage(named: "Homer")
        MyProfileLabelView.text = title
    }
    
    static let identifier = "MyProfilesCells"
    
}
