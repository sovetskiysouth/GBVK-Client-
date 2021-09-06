//
//  FavoriteGroupsViewController.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 16.08.2021.
//

import UIKit

final class FavoriteGroupsViewController: UIViewController {

    @IBOutlet var FavoriteGroupsTableView: UITableView!
    
    var storage: GroupStorage = GroupStorage()
    var favoriteGroups: [GroupModel] = []
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteGroups = storage.group
        FavoriteGroupsTableView.delegate = self
        FavoriteGroupsTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "withGroupSegue" {
            let destinationVC = segue.destination
            guard
                let selectTitle = FavoriteGroupsTableView.indexPathForSelectedRow?.row
                else { return }
            
            destinationVC.title = favoriteGroups[selectTitle].nameGroup
            
        }
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
            guard
                let sourceController = segue.source as? AllGroupsViewController,
                let indexSelectCell = sourceController.AllGroupsTableView.indexPathForSelectedRow
            else { return }
        
        let groups = sourceController.listAllGroups[indexSelectCell.row]
        if !favoriteGroups.contains(where: { groups.nameGroup == $0.nameGroup }) {
            favoriteGroups.append(groups)
        }
        FavoriteGroupsTableView.reloadData()
    }
}

extension FavoriteGroupsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        favoriteGroups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FavoriteGroupsCell.identifier) as! FavoriteGroupsCell
        
        cell.configure(group: favoriteGroups[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            favoriteGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
