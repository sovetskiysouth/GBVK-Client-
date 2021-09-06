//
//  GroupStorage.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 28.08.2021.
//

import UIKit

class GroupStorage {
    
 var group: [GroupModel]
 var allGroup: [GroupModel]

init() { group = [
            GroupModel(avatarName: "Spring", nameGroup: "Springfield", group: [
                    GroupRowModel(temp: 12, date: "Date", iconName: "health"),
                    GroupRowModel(temp: 11, date: "Date", iconName: "weather"),
                    GroupRowModel(temp: 15, date: "Date", iconName: "like")
            ]
            )
        ]
        allGroup = [
            GroupModel(avatarName: "Spring", nameGroup: "Springfield", group: [
                    GroupRowModel(temp: 12, date: "Date", iconName: "health"),
                    GroupRowModel(temp: 11, date: "Date", iconName: "weather"),
                    GroupRowModel(temp: 15, date: "Date", iconName: "like")
            ]
            ),
            GroupModel(avatarName: "USA", nameGroup: "USA", group: [
                    GroupRowModel(temp: 45, date: "Date", iconName: "health")
            ]
            ),
            GroupModel(avatarName: "100500", nameGroup: "+100500", group: [
                    GroupRowModel(temp: 0, date: "Date", iconName: "like")
            ]
            ),
            GroupModel(avatarName: "geek", nameGroup: "Geek Brains", group: [
                    GroupRowModel(temp: 0, date: "Date", iconName: "like")
            ]
            ),
            GroupModel(avatarName: "ios", nameGroup: "iOS Dev", group: [
                    GroupRowModel(temp: 0, date: "Date", iconName: "like")
            ]
            )
        ]
    }
}
