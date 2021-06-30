//
//  TableViewVC.swift
//  recipesApp
//
//  Created by DCS on 29/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class TableViewVC: UIViewController {
    
    var tableView = UITableView()
    var recipeArr = ["Sipo Egg",
                     "Supe Bowl Pizza ",
                     "firecracker chicken",
                     "Easy Desert",
                     "Garlic spaghetti",
                     "Easy Carrot Soup",
                     "Creamy Chicken Soup With Pasta"]
    var recipeDesc = ["1 cup Ham, cooked,24 pieces Quail eggs, fresh, 1 cup Shrimp,1 Carrots, medium,2 cloves Garlic",
                      " lb lean ground beef,1 cup chopped onion, 1/2 green bell pepper (chopped), 1/2 red bell pepper (chopped),1 -2 garlic clove (minced)",
                      "1 1/4 pounds boneless skinless chicken breasts (cut into 1 inch pieces), salt and pepper to taste, 1/3 cup cornstarch, 2 eggs (beaten),3 tablespoons vegetable oil",
                      "Featuring Cookies And Cream Mousse , Mini Apple Crisp Skillets and Chocolate Hazelnut Mug Cakes",
                      "6 , cloves garlic,60 mL , extra-virgin olive oil,50 g , panko bread crum,1/4 tsp. , crushed chilli flakes salt",
                      "2 tablespoons unsalted butter, 1 large white onion, chopped, 2 pounds carrots, peeled and chopped,3 cloves garlic, chopped",
                      "Creamy Chicken Soup Recipe – Nutritious, easy and big on flavor, this delicious chicken pasta soup ..."]

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Recipes"
        setTableView()
        view.backgroundColor = UIColor.white
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func setTableView(){
        tableView.frame = self.view.frame
        tableView.backgroundColor = UIColor.clear
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = UIColor.clear
        tableView.backgroundColor = UIColor.clear
        self.view.addSubview(tableView)
        
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
}

extension TableViewVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        cell.userImage.image = UIImage(named: recipeArr[indexPath.row])
        cell.namelbl.text = recipeArr[indexPath.row]
        //        cell.descriptionlbl.text = recipeDesc[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = DetailVC()
        vc.desc = recipeDesc[indexPath.row]
        vc.image = UIImage(named: recipeArr[indexPath.row])!
        vc.lbl = recipeArr[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}

