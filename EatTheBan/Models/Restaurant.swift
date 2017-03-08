//
//  Restaurant.swift
//  EatTheBan
//
//  Created by Kayla Galway on 2/25/17.
//  Copyright © 2017 kaylagalway. All rights reserved.
//

import Foundation
import CoreLocation

class Restaurant: ContentItem {
  
  var name: String
  var location: CLLocationCoordinate2D
  var country: String
  
  init?(withRestaurantDict dict: [String: Any]) {
    guard let name = dict["name"] as? String else {
      return nil
    }
    self.name = name
    
    guard let location = dict["location"] as? [String: Double], let lat = location["latitude"], let long = location["longitude"] else {
      return nil
    }
    self.location = CLLocationCoordinate2D(latitude: lat, longitude: long)
    
    guard let country = dict["country"] as? String else {
      return nil
    }
    self.country = country
    
    super.init()
  }
  
}
