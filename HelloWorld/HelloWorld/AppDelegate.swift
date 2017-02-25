//
//  AppDelegate.swift
//  HelloWorld
//
//  Created by Alexis San Javier on 2/24/17.
//  Copyright © 2017 San Javier. All rights reserved.
//

import UIKit
import GoogleMaps

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        GMSServices.provideAPIKey("AIzaSyDe6oyj2a52ZII9dyPYBUq_nUbBr_G22V0")
        return true
    }


}

