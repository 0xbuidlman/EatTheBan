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
  
  @IBOutlet weak var foodNearMeButton: UIButton!
  
  
  let homeVM = HomePageViewModel()
  
  override func viewDidLoad() {
    setUpCustomTableViewCells()
    roundButtonEdges()
  }
  
  static func storyboardInstance() -> HomePageViewController? {
    let storyboard = UIStoryboard(name:
      StoryboardConstants.homeVC, bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: VCConstants.homeVC) as? HomePageViewController
  }
  
  func setUpCustomTableViewCells() {
    countriesTableView.dataSource = self
    countriesTableView.delegate = self
    let cellNib = UINib.init(nibName: StoryboardConstants.countryCell, bundle: nil)
    countriesTableView.register(cellNib, forCellReuseIdentifier: ViewIDConstants.countryCell)
  }
  
  func roundButtonEdges() {
    foodNearMeButton.layoutIfNeeded()
    foodNearMeButton.layer.cornerRadius = foodNearMeButton.frame.height * 0.2
    foodNearMeButton.layer.masksToBounds = true
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = countriesTableView.dequeueReusableCell(withIdentifier: ViewIDConstants.countryCell) as! CountryTableViewCell
    cell.countryNameLabel.text = homeVM.countryNames[indexPath.row]
    cell.flagImageView.image = homeVM.countryFlags[indexPath.row]
    return cell
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 7
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      return (countriesTableView.frame.height - countriesTableView.sectionHeaderHeight) / 7
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //addNavigationController()
    let detailsStoryboard = UIStoryboard.init(name: StoryboardConstants.countryDetailsVC, bundle: nil)
    let detailsVC = detailsStoryboard.instantiateViewController(withIdentifier: VCConstants.countryDetailsVC) as! CountryDetailsViewController
    present(detailsVC, animated: true, completion: nil)
  }
  
  @IBAction func foodNearMeButtonTapped(_ sender: Any) {
    
    
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
