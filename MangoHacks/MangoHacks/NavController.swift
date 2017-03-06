//
//  NavController.swift
//  MangoHacks
//
//  Created by Miguel Chavez on 3/5/17.
//  Copyright © 2017 Miguel Chavez. All rights reserved.
//

import LBTAComponents
import Firebase

class NavController : UINavigationBar {
    
    self.backgroundColor = UIColor.white
    
    
    // Create a navigation item with a title
    let navigationItem = UINavigationItem()
    navigationItem.title = "Title"
    
    // Create left and right button for navigation item
    let leftButton =  UIBarButtonItem(title: "Save", style:   .plain, target: self, action: nil)
    
    let rightButton = UIBarButtonItem(title: "Right", style: .plain, target: self, action: nil)
    
    // Create two buttons for the navigation item
    navigationItem.leftBarButtonItem = leftButton
    navigationItem.rightBarButtonItem = rightButton
    
    // Assign the navigation item to the navigation bar
    navigationBar.items = [navigationItem]
    
    // Make the navigation bar a subview of the current view controller
    self.view.addSubview(navigationBar)
}
