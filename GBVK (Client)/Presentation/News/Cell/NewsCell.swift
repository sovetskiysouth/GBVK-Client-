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
    @IBAction func likeButton(_ sender: UIButton) {
        
    }
    
    
    func configure(news: NewsModel) {
        NewsImage.image = UIImage(named: news.imageNews)
        NewsImage.layer.cornerRadius = 30
        NewsImage.clipsToBounds = true
        NewsLebel.text = news.textNews
        
    }
    
    static let identifier = "NewsCells"

}
