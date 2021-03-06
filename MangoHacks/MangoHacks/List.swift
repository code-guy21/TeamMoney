//
//  HomeDatasource.swift
//  MangoHacks
//
//  Created by Miguel Chavez on 2/25/17.
//  Copyright © 2017 Miguel Chavez. All rights reserved.
//

import LBTAComponents


//makes the HomeDatasource (Jframe)
class HomeDatasource: Datasource {
    
    // this was the hard coding way to make profiles before we had the JSON connection
    let me: [User] = {
        let userMiguel = User(name: "Miguel Chavez", phnNum: "8504961538",
                              status: "Throwing a get together at my place",
                              color: 3,profileImage: #imageLiteral(resourceName: "Miguel"), Loction: 0)
        return [userMiguel]
    }()
    
    let users: [User] = {
//        let userMiguel = User(name: "Miguel Chavez", phnNum: "8504961538",
//                              status: "I need a BEER!!!",
//                              color: 3,profileImage: #imageLiteral(resourceName: "Miguel"), Loction: 0)
        
        let userGianne = User(name: "Gianne Francis", phnNum: "4071111111",
                              status: "Getting coffee on campus",
                              color: 1,profileImage: #imageLiteral(resourceName: "Gianne"), Loction: 2)
        
        let userAlexis = User(name: "Alexis San Javier", phnNum: "4074074071",
                              status: "Taking a walk through the trail",
                              color: 1,profileImage: #imageLiteral(resourceName: "Alexis"), Loction: 2)
        
        let userBrandon = User(name: "Brandon Miroux", phnNum: "4074074072",
                               status: "Having dinner with my family",
                               color: 0,profileImage: #imageLiteral(resourceName: "Brandon"), Loction: 1)
        return [userGianne,userAlexis,userBrandon]
    }()
    
    //what type of footer
    //    override func footerClasses() -> [DatasourceCell.Type]? {
    //        return [UserFooter.self]
    //    }
    
    //what type of header
    //    override func headerClasses() -> [DatasourceCell.Type]? {
    //        return [UserHeader.self]
    //    }
    
    //what type of cells
    override func cellClasses() -> [DatasourceCell.Type] {
        return [MyCell.self, UserCell.self]
    }
    
    //number of cells
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return users.count
        }
        return me.count
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    //move words to cell from array
    override func item(_ indexPath: IndexPath) -> Any? {
        if indexPath.section == 1 {
            return users[indexPath.item]
        }
        return me[indexPath.item]
    }
    
    
    
}
