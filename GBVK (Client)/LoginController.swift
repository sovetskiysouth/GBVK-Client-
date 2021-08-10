//
//  ViewController.swift
//  GBVK (Client)
//
//  Created by Mark Nevmerzhitskiy on 11.08.2021.
//for git test
//for git test2
//for git test3


import UIKit

class LoginController: UIViewController {

    @IBOutlet private var logScroll: UIScrollView!
    @IBOutlet private var logField: UITextField!
    @IBOutlet private var passField: UITextField!
    @IBAction func logButton(_ sender: UIButton) {
        
        let log = self.logField.text!
        let pass = self.passField.text!
        
        let logCheck = "Geek"
        let passCheck = "Brains"
        
        if log == logCheck && pass == passCheck {
            performSegue(withIdentifier: "logSegue", sender: logButton(_:))
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
        self.logScroll?.contentInset = contentInsets
        logScroll?.scrollIndicatorInsets = contentInsets
    }
    
    //Когда клавиатура исчезает
    @objc func keyboardWillBeHidden(notification: Notification) {
        // Устанавливаем отступ внизу UIScrollView, равный 0
        let contentInsets = UIEdgeInsets.zero
        logScroll?.contentInset = contentInsets
    }
    
    @objc func hideKeyboard() {
            self.logScroll?.endEditing(true)
        }

    
    
    
    
    //THE SISNEM FUNC
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Подписываемся на два уведомления: одно приходит при появлении клавиатуры
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        // Второе — когда она пропадает
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        // Жест нажатия
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        // Присваиваем его UIScrollVIew
        logScroll?.addGestureRecognizer(hideKeyboardGesture)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
}

