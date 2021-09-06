//
//  FriendsViewController.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 30.08.2021.
//

import UIKit

final class FriendsViewController: UIViewController {
    
    @IBOutlet var friendsTableView: UITableView!
    
    let storage: FriendStorage = FriendStorage()
    var friends: [FriendModel] = []
    
    override func viewDidLoad() {
        friends = storage.Friend
        friendsTableView.delegate = self
        friendsTableView.dataSource = self
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveFriendsPhoto" {
            
            guard
                let destinationVC = segue.destination as? FriendsPhotoCollectionController,
                let indexSelectCell = friendsTableView.indexPathForSelectedRow?.row
            else { return }
            
            let selectFriend = friends[indexSelectCell]
            destinationVC.title = selectFriend.name
            destinationVC.friendPhoto = selectFriend.friendsPhoto
        }
    }
}

extension FriendsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = friendsTableView.dequeueReusableCell(withIdentifier: FriendsCell.identifier) as! FriendsCell
        cell.configure(friend: friends[indexPath.row])
        return cell
    }
    
    
}
