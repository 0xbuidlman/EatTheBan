//
//  FirstTimeWelcome.swift
//  EatTheBan
//
//  Created by Kayla Galway on 2/25/17.
//  Copyright © 2017 kaylagalway. All rights reserved.
//

import Foundation
import UIKit

class FirstTimeWelcome: MainViewController {
  
  @IBOutlet weak var eatButton: UIButton!
  @IBOutlet weak var logoImageView: UIImageView!
  
  
  override func viewDidLoad() {
    makeLogoCircle()
    roundEatButtonEdges()
  }
  
  private func makeLogoCircle() {
    logoImageView.clipsToBounds = true
    logoImageView.layer.borderColor = UIColor.black.cgColor
    logoImageView.layer.borderWidth = 0.5
    logoImageView.layer.cornerRadius = logoImageView.frame.height * 0.5
    eatButton.layoutIfNeeded()
  }
  
  private func roundEatButtonEdges() {
    eatButton.clipsToBounds = true
    eatButton.layer.borderWidth = 0.5
    eatButton.layer.borderColor = UIColor.black.cgColor
    eatButton.layer.cornerRadius = eatButton.frame.height * 0.2
    eatButton.layoutIfNeeded()
    eatButton.layer.masksToBounds = true
  }
  
  
  @IBAction func eatButtonTapped(_ sender: Any) {
    
  }
  
  
  
}
