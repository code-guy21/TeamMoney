//
//  HomeDatasource.swift
//  AtList
//
//  Created by Miguel Chavez on 2/25/17.
//  Copyright © 2017 Miguel Chavez. All rights reserved.
//

import LBTAComponents
import TRON
import SwiftyJSON


//makes the HomeDatasource (Jframe)
class HomeDatasource: Datasource {
    
    // this was the hard coding way to make profiles before we had the JSON connection
    let users: [User] = {
        let userMiguel = User(name: "Miguel Chavez", phnNum: "8504961538",
                              status: "I need a BEER!!!",
                              color: 3,profileImage: #imageLiteral(resourceName: "Miguel"), Loction: 0)
        
        let userGianne = User(name: "Gianne Francis", phnNum: "4071111111",
                              status: "I hate Miguel LOL!!!",
                              color: 3,profileImage: #imageLiteral(resourceName: "Gianne"), Loction: 0)
        
        let userAlexis = User(name: "Alexis San Javier", phnNum: "4074074071",
                              status: "I Love making apps with Google Maps!!!",
                            color: 3,profileImage: #imageLiteral(resourceName: "Alexis"), Loction: 0)
        
        let userBrandon = User(name: "Brandon Miroux", phnNum: "4074074072",
                               status: "I agree with Miguel !!!",
                               color: 3,profileImage: #imageLiteral(resourceName: "Brandon"), Loction: 0)
        return [userMiguel,userGianne,userAlexis,userBrandon]
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
        return [NoteCell.self]
    }
    
    //number of cells
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
    
    override func numberOfSections() -> Int {
        return 1
    }
    
    //move words to cell from array
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    
    
}
