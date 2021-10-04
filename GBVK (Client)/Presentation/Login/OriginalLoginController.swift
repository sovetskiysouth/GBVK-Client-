//
//  OriginalLoginController.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 08.09.2021.
//

import UIKit

class OriginalLoginController:UIViewController {
    
    @IBOutlet var WallpapersView: UIImageView!
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var appLabel: UILabel!
    @IBOutlet var signView: UIView!
    @IBOutlet var signLabel: UILabel!
    @IBOutlet var loginField: UITextField!
    @IBOutlet var passField: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBAction func loginButton(_ sender: Any) {
        let log = self.loginField.text!
        let pass = self.passField.text!
        
        let logCheck = "Geek"
        let passCheck = "Brains"
        
        if log == logCheck && pass == passCheck {
            performSegue(withIdentifier: "logSegue", sender: loginButton(_:))
        } else if log == "" && pass == "" {
            let logAlertOne = UIAlertController(title: "Empty fields", message: "Please input your login and password", preferredStyle: .alert)
            logAlertOne.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(logAlertOne, animated: true, completion: nil)
        } else {
            let logAlertTwo = UIAlertController(title: "Dont true login or password", message: "Plese remote youre login or password", preferredStyle: .alert)
            logAlertTwo.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(logAlertTwo, animated: true, completion: nil)
        }
    }
    
    // Когда клавиатура появляется
    @objc func keyboardWasShown(notification: Notification) {
        
        // Получаем размер клавиатуры
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
        
        // Добавляем отступ внизу UIScrollView, равный размеру клавиатуры
        self.scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    
    //Когда клавиатура исчезает
    @objc func keyboardWillBeHidden(notification: Notification) {
        // Устанавливаем отступ внизу UIScrollView, равный 0
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
    }
    
    @objc func hideKeyboard() {
            self.scrollView?.endEditing(true)
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        WallpapersView.image = #imageLiteral(resourceName: "Palm")
        WallpapersView.contentMode = .scaleAspectFill
        appLabel.textColor = .white
        appLabel.text = "VK Client"
        appLabel.layer.shadowOffset = CGSize(width: 15, height: 15)
        appLabel.layer.shadowColor = UIColor.black.cgColor
        appLabel.layer.shadowRadius = 10
        appLabel.layer.shadowOpacity = 1
        signView.layer.cornerRadius = 10
        loginButton.backgroundColor = .link
        loginButton.tintColor = .white
        loginButton.layer.cornerRadius = 10
        loginButton.clipsToBounds = true
        loginField.placeholder = "LOGIN"
        passField.placeholder = "PASSWORD"
        passField.isSecureTextEntry = true
        signView.layer.shadowOffset = CGSize(width: 15, height: 15)
        signView.layer.shadowColor = UIColor.black.cgColor
        signView.layer.shadowRadius = 10
        signView.layer.shadowOpacity = 1
        signView.layer.cornerRadius = 10
        
        // Подписываемся на два уведомления: одно приходит при появлении клавиатуры
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        // Второе — когда она пропадает
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        // Жест нажатия
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        // Присваиваем его UIScrollVIew
        scrollView?.addGestureRecognizer(hideKeyboardGesture)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        }
}
