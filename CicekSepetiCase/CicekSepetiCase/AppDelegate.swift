//
//  AppDelegate.swift
//  CicekSepetiCase
//
//  Created by Tolga Taş on 17.07.2019.
//  Copyright © 2019 Tolga Taş. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        if let mainView = window?.rootViewController as? MainTableViewController{
        _ = WebServiceImp.shared.fetchData().done{ result in
            let dataToShow = FilterHelper.shared.filterData(answer: result)
            mainView.productArray = dataToShow
            }
        }
        return true
    }
}

