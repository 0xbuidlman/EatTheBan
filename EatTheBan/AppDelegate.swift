//
//  AppDelegate.swift
//  EatTheBan
//
//  Created by Kayla Galway on 2/25/17.
//  Copyright © 2017 kaylagalway. All rights reserved.
//

import UIKit
import Firebase
import GoogleMaps
import GooglePlaces

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    FIRApp.configure()

    setUpTabBar()
    return true
  }
  
  func setUpTabBar() {
    let tabBarController = UITabBarController()
    
    let homeStoryBoard = UIStoryboard(name: StoryboardConstants.homeVC, bundle: nil)
    let homeVC = homeStoryBoard.instantiateViewController(withIdentifier: VCConstants.homeVC) as! HomePageViewController
    homeVC.tabBarItem = UITabBarItem(title: "Home", image: nil, tag: 0)
    
    let restaurantsStoryboard = UIStoryboard(name: StoryboardConstants.restaurantsVC, bundle: nil)
    let restaurantsVC = restaurantsStoryboard.instantiateViewController(withIdentifier: VCConstants.restaurantsVC) as! RestaurantsViewController
    restaurantsVC.tabBarItem = UITabBarItem(title: "Restaurants", image: nil, tag: 2)
    
    let aboutStoryboard = UIStoryboard(name: StoryboardConstants.aboutVC, bundle: nil)
    let aboutVC = aboutStoryboard.instantiateViewController(withIdentifier: VCConstants.aboutVC) as! AboutViewController
    aboutVC.tabBarItem = UITabBarItem(title: "About", image: nil, tag: 3)
    
    let submitStoryboard = UIStoryboard(name: StoryboardConstants.submitVC, bundle: nil)
    let submitVC = submitStoryboard.instantiateViewController(withIdentifier: VCConstants.submitVC) as! SubmitViewController
    submitVC.tabBarItem = UITabBarItem(title: "Submit", image: nil, tag: 3)
    
    let controllers = [homeVC, restaurantsVC, aboutVC, submitVC]
    tabBarController.viewControllers = controllers
    tabBarController.selectedIndex = 0
    
    tabBarController.tabBar.barTintColor = UIColor.black
    
    if let mainVC = homeStoryBoard.instantiateInitialViewController(){
      tabBarController.setViewControllers([mainVC], animated: false)
    }
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = tabBarController
    window?.makeKeyAndVisible()
  }

  func applicationWillResignActive(_ application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(_ application: UIApplication) {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(_ application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }


}

