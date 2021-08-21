//
//  NewsViewController.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 16.08.2021.
//

import UIKit

class NewsViewController: UIViewController {

    @IBOutlet var NewsTableView: UITableView!
    
    let news = ["Support VKClient:\n\nНовость дня!       Теперь в приложении доступна новостная лента и Вы можете быть в курсе событий!", "Паблик 'ForFriends':\n\nНовостей нет!", "Паблик 'Жизнь в SPRINGFIELD':\n\nНовость на подходе!", "Пользователь 'Mark' поделился:\n\n Эй народ зацените новую аватарку!"]

    override func viewDidLoad() {
        super.viewDidLoad()
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
        
        cell.configure(imageName: "Homer", title: news[indexPath.row])
        
        return cell
    }
 }

