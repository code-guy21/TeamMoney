//
//  MenuBar.swift
//  AtList
//
//  Created by Miguel Chavez on 2/25/17.
//  Copyright © 2017 Miguel Chavez. All rights reserved.
//

import LBTAComponents
import UIKit

class MenuBar: DatasourceCell {
    
    override var datasourceItem: Any?{
        didSet{
            
        }
    }
    
    //here we make a lable for the name Red
    let statusLabel: UILabel = {
        let label = UILabel()
        label.text = "We all need alot of good ass Beer"
        label.font = UIFont.systemFont(ofSize: 16)
        //        label.backgroundColor = .red
        return label
    }()
    
    //this make a spot for the image in the twitter app Blue
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "Miguel")
        
        imageView.layer.cornerRadius = 20
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        //        imageView.layer.cornerRadius = 25
        //        imageView.layer.masksToBounds = true;
        imageView.layer.borderWidth = 2.0
        imageView.layer.borderColor = UIColor.blue.cgColor
        
        //        imageView.backgroundColor = .blue
        return imageView
    }()
    
    override func setupViews() {
        super.setupViews()
        let blackBackgroundView = UIView()
        blackBackgroundView.backgroundColor = .black
        
        //addSubview(blackBackgroundView)
        //separatorLineView.isHidden = false
        //separatorLineView.backgroundColor = UIColor(r: 0, g: 0, b: 0)
        
        
        // all the subareas in the cell (add JmenuItem to JmenuBar)
    
        addSubview(statusLabel)
        addSubview(profileImageView)
        
        //profileImage Blue
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 1, leftConstant: 10, bottomConstant: 0, rightConstant: 0, widthConstant: 40, heightConstant: 40)
        
        //statusLable Red
        statusLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: self.rightAnchor, topConstant: 10, leftConstant: 15 , bottomConstant: 0, rightConstant: 0, widthConstant: 150, heightConstant: 20)
        
        
    }
}
