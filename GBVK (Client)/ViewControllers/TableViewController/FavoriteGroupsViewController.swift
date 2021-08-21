//
//  FavoriteGroupsViewController.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 16.08.2021.
//

import UIKit

class FavoriteGroupsViewController: UIViewController {

    @IBOutlet var FavoriteGroupsTableView: UITableView!
    
    let favoriteGroups = ["SPRINGFIELD", "ForFriends", "Other"]
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        FavoriteGroupsTableView.delegate = self
        FavoriteGroupsTableView.dataSource = self
    }
}

extension FavoriteGroupsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        favoriteGroups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FavoriteGroupsCell.identifier) as! FavoriteGroupsCell
        
        cell.configure(imageName: "Homer", title: favoriteGroups[indexPath.row])
        
        return cell
    }
    
    
}
