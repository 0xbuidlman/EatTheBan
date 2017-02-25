//
//  HomePageViewController.swift
//  EatTheBan
//
//  Created by Kayla Galway on 2/25/17.
//  Copyright © 2017 kaylagalway. All rights reserved.
//

import Foundation
import UIKit

class HomePageViewController: MainViewController, UITableViewDelegate, UITableViewDataSource {
  
  @IBOutlet weak var countriesTableView: UITableView!
  @IBOutlet weak var bannerImageView: UIImageView!
  
  
  override func viewDidLoad() {
    setUpCustomTableViewCells()
  }
  
  static func storyboardInstance() -> HomePageViewController? {
    let storyboard = UIStoryboard(name:
      "HomePageViewController", bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: "HomePage") as? HomePageViewController
  }
  
  func setUpCustomTableViewCells() {
    countriesTableView.dataSource = self
    countriesTableView.delegate = self
    let cellNib = UINib.init(nibName: "CountryTableViewCell", bundle: nil)
    countriesTableView.register(cellNib, forCellReuseIdentifier: "CountryCell")
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = countriesTableView.dequeueReusableCell(withIdentifier: "CountryCell") as! CountryTableViewCell
    return cell
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 8
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//    guard let tabController = tabBarController else {
      return countriesTableView.frame.height / 8
//    }
//    let tableViewHeight = view.frame.height - tabController.tabBar.frame.height - bannerImageView.frame.height
//    return tableViewHeight
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //addNavigationController()
    let detailsStoryboard = UIStoryboard.init(name: "CountryDetailsViewController", bundle: nil)
    let detailsVC = detailsStoryboard.instantiateViewController(withIdentifier: "CountryDetails") as! CountryDetailsViewController
    present(detailsVC, animated: true, completion: nil)
    
    //navigationController?.pushViewController(detailsVC, animated: true)
  }
  
  func addNavigationController() {
    let navController = UINavigationController(rootViewController: self)
    navController.setNavigationBarHidden(true, animated: false)
    navController.view.layer.backgroundColor = UIColor.white.cgColor
    let navBar = navController.navigationBar
    navBar.setBackgroundImage(UIImage(), for: .default)
    navBar.shadowImage = UIImage()
    navBar.isTranslucent = true
  }
  
}
