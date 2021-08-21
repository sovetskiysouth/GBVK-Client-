//
//  FriendsViewController.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 16.08.2021.
//

import UIKit

class FriendsViewController: UIViewController {

    @IBOutlet var FriendsTableView: UITableView!
    
    let names = ["Jhone", "Mark", "Aleksandr"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FriendsTableView.delegate = self
        FriendsTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveFriendsPhoto" {
            let destinationVC = segue.destination
            guard
                let indexSelectedCell = FriendsTableView.indexPathForSelectedRow?.row
            else { return }
            destinationVC.title = names[indexSelectedCell]
        }
    }
}

extension FriendsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendsCell.identifier) as! FriendsCell
        
        cell.configure(imageName: "Homer", title: names[indexPath.row])
        
        return cell
    }
    
    
}
