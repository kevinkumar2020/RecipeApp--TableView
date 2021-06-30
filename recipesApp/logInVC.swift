//
//  logInVC.swift
//  recipesApp
//
//  Created by DCS on 22/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class logInVC: UIViewController {
    
    private let myImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "recipes")
        return imageView
    }()
    
    private let userName: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Your UserName"
        textField.borderStyle = .roundedRect
        textField.textAlignment = .center
        textField.backgroundColor = .white
        return textField
    }()
    
    private let password: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Your Password"
        textField.borderStyle = .roundedRect
        textField.textAlignment = .center
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private let logInButton : UIButton = {
        let button = UIButton()
        button.setTitle("LogIn", for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 40
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        return button
    } ()
    
    @objc func handleButtonClick(){
        let vc = TableViewVC()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "LogIn Page"
        view.backgroundColor = .black
        view.addSubview(myImageView)
        view.addSubview(userName)
        view.addSubview(password)
        view.addSubview(logInButton)
        
         self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg-1.jpg")!)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myImageView.frame = CGRect(x: 20, y: 150, width: view.width - 40, height: 120)
        userName.frame = CGRect(x: 20, y: myImageView.bottom + 40, width: view.width - 40, height: 40)
        password.frame = CGRect(x: 20, y: userName.bottom + 20, width: view.width - 40, height: 40)
        logInButton.frame = CGRect(x: 20, y: password.bottom + 40, width: view.width - 40, height: 40)
    }

}
