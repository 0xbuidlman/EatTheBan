//
//  MapViewModel.swift
//  EatTheBan
//
//  Created by Kayla Galway on 3/2/17.
//  Copyright © 2017 kaylagalway. All rights reserved.
//

import Foundation

struct MapViewModel {
  
  var restaurants = [Restaurant]()
  
  init() {
    let restaurantDict: [String: Any] = ["name":"Ravaugh", "location": ["latitude": 40.727395, "longitude": -73.985732], "country": "Iran"]
    if let restaurant = Restaurant(withRestaurantDict: restaurantDict) {
      restaurants.append(restaurant)
    }
  }
  
}
