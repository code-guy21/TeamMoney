//
//  UserCell.swift
//  MangoHacks
//
//  Created by Miguel Chavez on 2/25/17.
//  Copyright © 2017 Miguel Chavez. All rights reserved.
//

import LBTAComponents
var color = 0
class UserCell: DatasourceCell {
    
//    var color = 0;
    //this lables with the string array of HomeDatasource
    override var datasourceItem: Any?{
        didSet{
            guard let user = datasourceItem as? User else { return }
            nameLabel.text = user.name + ":"
            statusLabel.text = user.status
            profileImageView.image = user.profileImage
            color = user.color
        }
    }
    
    //here we make a lable for the name GREEN
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Miguel Chavez"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        //        label.backgroundColor = .green
        return label
    }()
    
    //here we make a lable for the name Red
    let statusLabel: UILabel = {
        let label = UILabel()
        label.text = "we need Beer"
        label.font = UIFont.systemFont(ofSize: 16)
        //        label.backgroundColor = .red
        return label
    }()
    
    //this make a spot for the image in the twitter app Blue
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "Miguel")
        //var color = 0
        imageView.layer.cornerRadius = 25
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        //        imageView.layer.cornerRadius = 25
        //        imageView.layer.masksToBounds = true;
        imageView.layer.borderWidth = 3.0
        if (color == 0) {
            imageView.layer.borderColor = UIColor.red.cgColor
            
        }
        else if (color == 1) {
            imageView.layer.borderColor = UIColor.yellow.cgColor
            
        }
        else if (color == 2) {
            imageView.layer.borderColor = UIColor.green.cgColor
            
        }
        
        //        imageView.backgroundColor = .blue
        return imageView
    }()
    
    //make it look how we want it
    override func setupViews() {
        super.setupViews()
        
        //        backgroundColor = .white
        
        backgroundColor = UIColor(r: 255, g: 179, b: 0)
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 0, g: 0, b: 0)
        
        
        // all the subareas in the cell (add JmenuItem to JmenuBar)
        addSubview(nameLabel)
        addSubview(statusLabel)
        addSubview(profileImageView)
        
        //profileImage Blue
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        //nameLable Green
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 150, heightConstant: 20)
        
        //statusLable Red
        statusLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 0 , bottomConstant: 0, rightConstant: 0, widthConstant: 150, heightConstant: 20)
    }
}
