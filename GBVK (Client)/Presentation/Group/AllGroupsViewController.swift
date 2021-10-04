//
//  AllGroupsViewController.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 16.08.2021.
//

import UIKit

class AllGroupsViewController: UIViewController {

    @IBOutlet var AllGroupsTableView: UITableView!
    
    var listAllGroups: [GroupModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listAllGroups = GroupStorage.shared.allGroup
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
