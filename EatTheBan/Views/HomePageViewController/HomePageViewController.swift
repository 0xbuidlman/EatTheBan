//
//  HomePageViewController.swift
//  EatTheBan
//
//  Created by Kayla Galway on 2/25/17.
//  Copyright © 2017 kaylagalway. All rights reserved.
//

import Foundation
import UIKit

//Home page ViewController
//Shows tableview of country restaurant options
class HomePageViewController: MainViewController, UITableViewDelegate, UITableViewDataSource {
  
  @IBOutlet weak var countriesTableView: UITableView!
  @IBOutlet weak var bannerImageView: UIImageView!
  @IBOutlet weak var foodNearMeButton: UIButton!
  
  let homeVM = HomePageViewModel()
  
  override func viewDidLoad() {
    setUpCustomTableViewCells()
    customizeFoodNearMeButton()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    navigationController?.setNavigationBarHidden(true, animated: false)
    customizeNavigationBar()
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    if let indexPath = countriesTableView.indexPathForSelectedRow {
      countriesTableView.deselectRow(at: indexPath, animated: animated)
    }
  }
  
  static func storyboardInstance() -> HomePageViewController? {
    let storyboard = UIStoryboard(name:
      StoryboardConstants.homeVC, bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: VCConstants.homeVC) as? HomePageViewController
  }
  
  private func customizeNavigationBar() {
    let navBar = navigationController?.navigationBar
    navBar?.backgroundColor = UIColor.clear
    navBar?.setBackgroundImage(UIImage(), for: .default)
    navBar?.shadowImage = UIImage()
  }
  
  private func setUpCustomTableViewCells() {
    countriesTableView.dataSource = self
    countriesTableView.delegate = self
    let cellNib = UINib.init(nibName: StoryboardConstants.countryCell, bundle: nil)
    countriesTableView.register(cellNib, forCellReuseIdentifier: ViewIDConstants.countryCell)
  }
  
  private func customizeFoodNearMeButton() {
    foodNearMeButton.layoutIfNeeded()
    foodNearMeButton.layer.cornerRadius = foodNearMeButton.frame.height * 0.2
    foodNearMeButton.layer.shadowOffset = CGSize.zero
    foodNearMeButton.layer.shadowColor = UIColor.black.cgColor
    foodNearMeButton.layer.shadowRadius = 5.0
    foodNearMeButton.layer.shadowOpacity = 0.4
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
    return countriesTableView.frame.height / 7
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let detailsStoryboard = UIStoryboard.init(name: StoryboardConstants.countryDetailsVC, bundle: nil)
    let detailsVC = detailsStoryboard.instantiateViewController(withIdentifier: VCConstants.countryDetailsVC) as! CountryDetailsViewController
    navigationController?.pushViewController(detailsVC, animated: true)
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
