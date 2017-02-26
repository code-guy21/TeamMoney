//
//  MapController+navbar.swift
//  MangoHacks
//
//  Created by Miguel Chavez on 2/25/17.
//  Copyright © 2017 Miguel Chavez. All rights reserved.
//

import UIKit
import LBTAComponents
import Firebase

extension MapController{
    
    //makeing the NavigationBar
    func setupNavigationBarItemMap()
    {
        setUpRemainingNavItems()
        setUpLeftNavItems()
        
    }
    
    private func setUpRemainingNavItems(){
        //makeing the title Image
        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "mango"))
        //makes it smaller and fit it inside a frame
        titleImageView.frame = CGRect(x: 0, y: 0, width: 44, height: 34)
        //back to orginal aspect ratio
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImageView
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
        //remove the bar uber the navbar
        navigationController?.navigationBar.shadowImage = UIImage()
        //navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let navBarSepaorView = UIView()
        navBarSepaorView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        view.addSubview(navBarSepaorView)
        navBarSepaorView.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
    }
    private func setUpLeftNavItems() {
        //button on the left
        //make sure we redner image always as orginial
        //cannot see it without having this frame around it
        let listButton = UIButton(type: .system)
        listButton.setImage(#imageLiteral(resourceName: "list").withRenderingMode(.alwaysOriginal), for: .normal)
        listButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        //this make two buttons on the right :) with this array
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: listButton)
        
        listButton.addTarget(self,action:#selector(FeelingLuckyPress),for:.touchUpInside)
    }
    @IBAction func FeelingLuckyPress(sender: UIButton) {
        
        let secondViewController:ListController = ListController()
        
        self.present(secondViewController, animated: true, completion: nil)
    }
    
}
