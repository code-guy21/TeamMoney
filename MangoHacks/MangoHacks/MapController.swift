//
//  MapController.swift
//  MangoHacks
//
//  Created by Miguel Chavez on 2/25/17.
//  Copyright © 2017 Miguel Chavez. All rights reserved.
//


import UIKit
import GoogleMaps
import Toucan
import Firebase
import LBTAComponents

class MapController: UIViewController {
    
    override func loadView() {
        
        //handleLogout()
        //checkIfUserIsLoggedIn()
        let mig = #imageLiteral(resourceName: "miguel70")
        
        let newmig = Toucan(image: mig).resize(CGSize(width: 70, height: 70)).maskWithEllipse(borderWidth: 5, borderColor: UIColor.green).image
        
        let bran = #imageLiteral(resourceName: "brandon70")
        
        let newbran = Toucan(image: bran).resize(CGSize(width: 70, height: 70)).maskWithEllipse(borderWidth: 5, borderColor: UIColor.red).image
        
        let gia = #imageLiteral(resourceName: "giani70")
        let newgia = Toucan(image: gia).resize(CGSize(width: 70, height: 70)).maskWithEllipse(borderWidth: 5, borderColor: UIColor.yellow).image
        
        let ale = #imageLiteral(resourceName: "Alexis")
        let newale = Toucan(image: ale).resize(CGSize(width: 70, height: 70)).maskWithEllipse(borderWidth: 5, borderColor: UIColor.yellow).image
        
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 25.7565756, longitude: -80.3739487, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker1 = GMSMarker()
        marker1.position = CLLocationCoordinate2D(latitude: 25.769, longitude: -80.380)
        marker1.title = "Active"
        marker1.snippet = "Throwing a get together at my place"
        marker1.icon = newmig
        marker1.map = mapView
        
        // Creates a marker in the center of the map.
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2D(latitude: 25.763, longitude: -80.380)
        marker2.title = "Unavailable"
        marker2.snippet = "Having dinner with my family"
        marker2.icon = newbran
        marker2.map = mapView
        
        // Creates a marker in the center of the map.
        let marker3 = GMSMarker()
        marker3.position = CLLocationCoordinate2D(latitude: 25.759, longitude: -80.371)
        marker3.title = "Available"
        marker3.snippet = "Getting a coffee on campus"
        marker3.icon = newgia
        marker3.map = mapView
        
        // Creates a marker in the center of the map.
        let marker4 = GMSMarker()
        marker4.position = CLLocationCoordinate2D(latitude: 25.753, longitude: -80.380)
        marker4.title = "Available"
        marker4.snippet = "Talking a walk through the trail"
        marker4.icon = newale
        marker4.map = mapView
        
        //setupNavigationBarItemMap()
        print("hello")
        
    }
    
    func checkIfUserIsLoggedIn() {
        if FIRAuth.auth()?.currentUser?.uid == nil {
            perform(#selector(handleLogout), with: nil, afterDelay: 0)
        } else {
            let uid = FIRAuth.auth()?.currentUser?.uid
            FIRDatabase.database().reference().child("users").child(uid!).observeSingleEvent(of: .value, with: { (snapshot) in
                
                if let dictionary = snapshot.value as? [String: AnyObject] {
                    self.navigationItem.title = dictionary["name"] as? String
                }
                
            }, withCancel: nil)
        }
    }
    
    func handleLogout() {
        
        do {
            try FIRAuth.auth()?.signOut()
        } catch let logoutError {
            print(logoutError)
        }
        
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
    
}
