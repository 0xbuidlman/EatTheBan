//
//  Restaurant.swift
//  EatTheBan
//
//  Created by Kayla Galway on 2/25/17.
//  Copyright © 2017 kaylagalway. All rights reserved.
//

import Foundation

class Restaurant: ContentItem {
  
  var name: String
  var location: String
  
  init?(withRestaurantDict dict: [String: AnyObject]) {
    guard let name = dict["name"] as? String else {
      return nil
    }
    self.name = name
    guard let location = dict["location"] as? String else {
      return nil
    }
    self.location = location
    super.init()
  }
  
}
