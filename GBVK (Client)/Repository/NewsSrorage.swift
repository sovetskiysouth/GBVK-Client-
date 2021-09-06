//
//  NewsSrorage.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 28.08.2021.
//

import UIKit

class NewsStorage {
    
    var news: [NewsModel]
    
    init() {
        news = [
            NewsModel(imageNews: "Putin", textNews: "В России отменили честные выборы, теперь В.В.Путин официально царь всея Руси! 👀", news: [
                NewsRowModel(like: "Like", countLike: 0)
            ]
            ),
            NewsModel(imageNews: "Summer", textNews: "Куда поехать на выходные? Куча лайфхаков по ссылке!\nhttps://ru.wikipedia.org/wiki/Писи,_Туси", news: [
                NewsRowModel(like: "Like", countLike: 0)
            ]
            ),
            NewsModel(imageNews: "not", textNews: "Not compile that news!", news: [
                NewsRowModel(like: "Like", countLike: 0)
            ]
            )
        ]
    }
    
}
