//
//  MyProfileViewController.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 18.08.2021.
//

import UIKit

class MyProfileViewController: UIViewController {

    @IBOutlet var MyProfileTableView: UITableView!
    
    let myProfile = ["", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MyProfileTableView.delegate = self
        MyProfileTableView.dataSource = self
    }
}

extension MyProfileViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myProfile.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyProfileCell.identifier) as! MyProfileCell
        
        cell.configure(imageName: <#T##String?#>, title: <#T##String#>)
    }
    
    
    
}





