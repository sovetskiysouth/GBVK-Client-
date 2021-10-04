//
//  LikeView.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 10.09.2021.
//

import UIKit

class LikeView: UIControl {
    
    var i = 0
    
    @IBAction func likeButton(_ sender: UIButton) {
        if (sender.isTouchInside == true) {
            i = +1
            sender.setTitle("❤️ \(i)", for: .normal)
        }
    }
    
    
    
}
