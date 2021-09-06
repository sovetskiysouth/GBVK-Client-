//
//  FriendsPhotoCollectionController.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 30.08.2021.
//

import UIKit

final class FriendsPhotoCollectionController: UIViewController {
    
    @IBOutlet var friendsCollectionView: UICollectionView!
    
    var friendPhoto: [FriendsPhotoModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendsCollectionView.delegate = self
        friendsCollectionView.dataSource = self
    }
}

extension FriendsPhotoCollectionController: UICollectionViewDelegate {
    
}

extension FriendsPhotoCollectionController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        friendPhoto.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = friendsCollectionView.dequeueReusableCell(withReuseIdentifier: FriendsPhotoCell.identifier, for: indexPath) as! FriendsPhotoCell
        cell.configure(friendPhoto[indexPath.item])
            return cell
    }
    
    
}
