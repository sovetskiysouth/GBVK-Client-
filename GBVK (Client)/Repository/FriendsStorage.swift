//
//  FriendsStorage.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 27.08.2021.
//

import UIKit

class  FriendStorage {
    
    var Friend: [FriendModel]
    
    
    init(){ Friend = [
                FriendModel(name: "Homer Simpson", avatarName: "Homer", friendsPhoto: [
                FriendsPhotoModel(countLike: 10, iconName: "Homer"),
                FriendsPhotoModel(countLike: 44, iconName: "Bart"),
                FriendsPhotoModel(countLike: 60, iconName: "Abra"),
                FriendsPhotoModel(countLike: 1, iconName: "Homer")
        ]
        ),
        FriendModel(name: "Bart Simpson", avatarName: "Bart", friendsPhoto: [
                FriendsPhotoModel(countLike: 20, iconName: "Bart"),
                FriendsPhotoModel(countLike: 22, iconName: "Bart"),
                FriendsPhotoModel(countLike: 9, iconName: "Homer")
        ]
        ),
        FriendModel(name: "Abraham Simpson", avatarName: "Abra", friendsPhoto: [
                FriendsPhotoModel(countLike: 35, iconName: "Abra"),
                FriendsPhotoModel(countLike: 99, iconName: "Homer"),
                FriendsPhotoModel(countLike: 154, iconName: "Abra"),
                FriendsPhotoModel(countLike: 223, iconName: "Homer"),
                FriendsPhotoModel(countLike: 435, iconName: "Abra")
        ]
        )
    ]
    }
}
