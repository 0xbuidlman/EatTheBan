//
//  CountryDetailsPage.swift
//  EatTheBan
//
//  Created by Kayla Galway on 2/25/17.
//  Copyright © 2017 kaylagalway. All rights reserved.
//

import Foundation
import UIKit

class CountryDetailsViewController: MainViewController {
  
  @IBOutlet weak var leftUnderline: UIView!
  @IBOutlet weak var rightUnderline: UIView!
  @IBOutlet weak var overviewLabel: UILabel!
  @IBOutlet weak var restaurantsLabel: UILabel!
  
  
  override func viewDidLoad() {
    title = "Iran"
  }
  
  override func viewWillAppear(_ animated: Bool) {
    
  }
  
  
  
  static func storyboardInstance() -> CountryDetailsViewController? {
    let storyboard = UIStoryboard(name:
      StoryboardConstants.countryDetailsVC, bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: VCConstants.countryDetailsVC) as? CountryDetailsViewController
  }
  
  
}
