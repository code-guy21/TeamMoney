//
//  test.swift
//  AtList
//
//  Created by Miguel Chavez on 2/25/17.
//  Copyright © 2017 Miguel Chavez. All rights reserved.
//

import LBTAComponents

class HomeDatasourceController: DatasourceController {
    
    //handel rotating the screen to reset all the views
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionViewLayout.invalidateLayout()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        collectionView?.backgroundColor = .white
        collectionView?.backgroundColor = UIColor(r: 240, g: 200, b: 200)
        
        setupNavigationBarItem()
        
        //this was how we use to set
        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0;
    }
    
    //**sizeforItemAt
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 70)
    }
    
}

