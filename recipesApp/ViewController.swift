//
//  ViewController.swift
//  recipesApp
//
//  Created by DCS on 22/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let myLabel : UILabel = {
        let label = UILabel()
        label.text = " Welcome To The Recipe Center..!"
        label.textColor = .white
        label.backgroundColor = .gray
        label.textAlignment = .center
        return label
    }()
    
    private let myImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "recipes")
        return imageView
    }()
    
    private let myButton : UIButton = {
        let button = UIButton()
        button.setTitle("Let's go", for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 40
        button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        button.setTitleColor(.black, for: .normal)
        return button
    } ()
    
    @objc func handleButtonClick(){
        let vc = logInVC()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Welcome"
        view.backgroundColor = .black
        view.addSubview(myLabel)
        view.addSubview(myImageView)
        view.addSubview(myButton)
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg-1.jpg")!)

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel.frame = CGRect(x: 20, y: 100, width: view.width - 40, height: 30)
        myImageView.frame = CGRect(x: 10, y: myLabel.bottom + 20, width: view.width - 20, height: 400)
        myButton.frame = CGRect(x: 20, y: myImageView.bottom + 30, width: view.width - 40, height: 40)
    }


}

