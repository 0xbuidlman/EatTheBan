//
//  HomeNavigationBar.swift
//  EatTheBan
//
//  Created by Kayla Galway on 3/2/17.
//  Copyright © 2017 kaylagalway. All rights reserved.
//

import Foundation
import UIKit

class HomeNavigationBar: UINavigationBar {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.isOpaque = true
    self.isTranslucent = true
    self.backgroundColor = UIColor.blue
    self.setBackgroundImage(UIImage(), for: .default)
    self.shadowImage = UIImage()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
}
