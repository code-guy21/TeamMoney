//
//  NavigationBarController.swift
//  MangoHacks
//
//  Created by Miguel Chavez on 2/25/17.
//  Copyright © 2017 Miguel Chavez. All rights reserved.
//

import UIKit
import LBTAComponents
import Firebase

extension ListController{
    
    //makeing the NavigationBar
    func setupNavigationBarItemList()
    {
        setUpRemainingNavItems()
        setUpLeftNavItems()
        setUpRightNavItems()
        //navigationController?.setNavigationBarHidden(false, animated: false)
        
    }
    
    private func setUpRemainingNavItems(){
        //makeing the title Image
        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "mango-1"))
        //makes it smaller and fit it inside a frame
        titleImageView.frame = CGRect(x: 0, y: 0, width: 44, height: 34)
        //back to orginal aspect ratio
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImageView
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
        //remove the bar uber the navbar
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let navBarSepaorView = UIView()
        navBarSepaorView.backgroundColor = UIColor(r: 255, g: 169, b: 2)
        
        view.addSubview(navBarSepaorView)
        navBarSepaorView.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
    }
    private func setUpLeftNavItems() {
        //button on the left
        //make sure we redner image always as orginial
        //cannot see it without having this frame around it
        let settingsButton = UIButton(type: .system)
        settingsButton.setImage(#imageLiteral(resourceName: "settings").withRenderingMode(.alwaysOriginal), for: .normal)
        settingsButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: settingsButton)
    }
    private func setUpRightNavItems() {
        
        let mapButton = UIButton(type: .system)
        mapButton.setImage(#imageLiteral(resourceName: "map").withRenderingMode(.alwaysOriginal), for: .normal)
        mapButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        //this make two buttons on the right :) with this array
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: mapButton)
        mapButton.addTarget(self,action:#selector(FeelingLuckyPress2),for:.touchUpInside)
    }
    
    @IBAction func FeelingLuckyPress2(sender: UIButton) {
        
        let secondViewController:MapController = MapController()
        self.present(secondViewController, animated: true, completion: nil)
        
        // self.navigationController?.pushViewController(<#T##UIViewController#>, animated: <#T##Bool#>)
    }
    
    
    
}
