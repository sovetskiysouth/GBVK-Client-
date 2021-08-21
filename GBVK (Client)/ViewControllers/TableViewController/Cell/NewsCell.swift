//
//  NewsTableViewCell.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 16.08.2021.
//

import UIKit

class NewsCell: UITableViewCell {
    
    @IBOutlet var NewsImage: UIImageView!
    @IBOutlet var NewsLebel: UILabel!
    
    func configure(imageName: String?, title: String) {
        NewsImage.image = UIImage(named: "Homer")
        NewsLebel.text = title
    }
    
    static let identifier = "NewsCells"

}
