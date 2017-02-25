//
//  Country.swift
//  EatTheBan
//
//  Created by Kayla Galway on 2/25/17.
//  Copyright © 2017 kaylagalway. All rights reserved.
//

import Foundation

class Country: ContentItem {
  
  var countryName: String
  var countryDetails: String
  
  init(withName name: String, description: String) {
    self.countryName = name
    self.countryDetails = description
  }
  
}
