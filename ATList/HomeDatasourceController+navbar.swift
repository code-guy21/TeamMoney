//
//  HomeDatasourceController+navbar.swift
//  AtList
//
//  Created by Miguel Chavez on 2/25/17.
//  Copyright © 2017 Miguel Chavez. All rights reserved.
//

import UIKit
import Toucan
extension HomeDatasourceController {
    
    //makeing the NavigationBar
    func setupNavigationBarItem()
    {
        //navigationItem.title = "Home"
        navigationController?.navigationBar.isTranslucent = false
        

        let titleImageView = MenuBar()
        //makes it smaller and fit it inside a frame
        titleImageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        //back to orginal aspect ratio
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImageView
        
    }
    
    func addNote() {
        print("help")
    }
    
    
}
