//
//  NewsTableViewCell.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 16.08.2021.
//

import UIKit

class NewsCell: UITableViewCell {
    
    static let identifier = "NewsCells"
    
    @IBOutlet var NewsImage: UIImageView!
    @IBOutlet var NewsLebel: UILabel!
    @IBAction func likeButton(_ sender: UIButton) {
    }
    
    func configure(news: NewsModel) {
        NewsImage.image = UIImage(named: news.imageNews)
        NewsLebel.text = news.textNews
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        NewsImage.contentMode = .scaleAspectFill
        NewsImage.layer.cornerRadius = 10
        NewsImage.clipsToBounds = true
    }
}
