//
//  HomePageViewModel.swift
//  EatTheBan
//
//  Created by Kayla Galway on 2/25/17.
//  Copyright © 2017 kaylagalway. All rights reserved.
//

import Foundation
import UIKit

struct HomePageViewModel {
  
  var countries = [Country]()
  var countryNames = ["All Countries", "Iran", "Iraq", "Somalia", "Syria", "Yemen", "Sudan", "Libya"]
  var countryFlags: [UIImage] = [#imageLiteral(resourceName: "globe"), #imageLiteral(resourceName: "iran_flag"), #imageLiteral(resourceName: "iraq_flag"), #imageLiteral(resourceName: "somalia_flag"), #imageLiteral(resourceName: "syria_flag"), #imageLiteral(resourceName: "yemen_flag"),#imageLiteral(resourceName: "sudan_flag"),#imageLiteral(resourceName: "libya_flag")]
  
  
}
