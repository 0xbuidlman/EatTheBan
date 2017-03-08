//
//  CountryDetailsPage.swift
//  EatTheBan
//
//  Created by Kayla Galway on 2/25/17.
//  Copyright © 2017 kaylagalway. All rights reserved.
//

import Foundation
import UIKit

//ViewController presented when you click Home Page tableviewcell
//Shows details on country, gives you the option to look at restaurants map
class CountryDetailsViewController: MainViewController {
  
  @IBOutlet weak var leftUnderline: UIView!
  @IBOutlet weak var rightUnderline: UIView!
  @IBOutlet weak var overviewLabel: UILabel!
  @IBOutlet weak var restaurantsLabel: UILabel!
  
  override func viewDidLoad() {
    title = "IRAN"
  }
  
  override func viewWillAppear(_ animated: Bool) {
    navigationController?.setNavigationBarHidden(false, animated: false)
  }
  
  static func storyboardInstance() -> CountryDetailsViewController? {
    let storyboard = UIStoryboard(name:
      StoryboardConstants.countryDetailsVC, bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: VCConstants.countryDetailsVC) as? CountryDetailsViewController
  }
  
}
