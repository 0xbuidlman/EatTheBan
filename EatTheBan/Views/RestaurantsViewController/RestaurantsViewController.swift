//
//  File.swift
//  EatTheBan
//
//  Created by Kayla Galway on 2/25/17.
//  Copyright © 2017 kaylagalway. All rights reserved.
//

import Foundation
import UIKit

class RestaurantsViewController: MainViewController {
  
  @IBOutlet weak var countryOptionView: UIView!
  @IBOutlet weak var openNowView: UIView!
  @IBOutlet weak var topBlueView: UIView!
  @IBOutlet weak var restaurantDetailView: UIView!
  
  
  override func viewDidLoad() {
    roundTopViewEdges()
    addShadows()
  }
  
  private func addShadows() {
    topBlueView.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
    topBlueView.layer.shadowColor = UIColor.black.cgColor
    topBlueView.layer.shadowRadius = 1.0
    topBlueView.layer.shadowOpacity = 0.3
    
    restaurantDetailView.layer.shadowOffset = CGSize.zero
    restaurantDetailView.layer.shadowColor = UIColor.black.cgColor
    restaurantDetailView.layer.shadowRadius = 1.0
    restaurantDetailView.layer.shadowOpacity = 0.6
    restaurantDetailView.layer.shadowPath = UIBezierPath(rect: restaurantDetailView.bounds).cgPath
  }
  
  private func roundTopViewEdges() {
    countryOptionView.layer.cornerRadius = countryOptionView.frame.height * 0.2
    countryOptionView.layer.borderColor = UIColor.white.cgColor
    countryOptionView.layer.borderWidth = 0.7
    countryOptionView.layer.masksToBounds = true
    openNowView.layer.cornerRadius = openNowView.frame.height * 0.2
    openNowView.layer.borderWidth = 0.7
    openNowView.layer.borderColor = UIColor.white.cgColor
    openNowView.layer.masksToBounds = true
  }
  
  @IBAction func leftToggleButtonTapped(_ sender: Any) {
  }
  
  @IBAction func rightToggleButtonTapped(_ sender: Any) {
  }
  
  
 
}

