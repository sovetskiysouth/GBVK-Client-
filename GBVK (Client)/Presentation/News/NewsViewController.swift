//
//  NewsViewController.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 16.08.2021.
//

import UIKit

class NewsViewController: UIViewController {

    @IBOutlet var NewsTableView: UITableView!
    
    var storage: NewsStorage = NewsStorage()
    var news: [NewsModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        news = storage.news
        NewsTableView.delegate = self
        NewsTableView.dataSource = self
    }
    
}

extension NewsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NewsCell.identifier) as! NewsCell
        
        cell.configure(news: news[indexPath.row])
        
        return cell
    }
 }

