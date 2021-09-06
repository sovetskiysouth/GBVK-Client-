//
//  AllGroupsViewController.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 16.08.2021.
//

import UIKit

class AllGroupsViewController: UIViewController {

    @IBOutlet var AllGroupsTableView: UITableView!
    
    var storage: GroupStorage = GroupStorage()
    var listAllGroups: [GroupModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listAllGroups = storage.allGroup
        AllGroupsTableView.delegate = self
        AllGroupsTableView.dataSource = self
    }
}

extension AllGroupsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listAllGroups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AllGroupsCell.identifier) as! AllGroupsCell
        
        cell.configure(group: listAllGroups[indexPath.row])
        
        return cell
    }
}
