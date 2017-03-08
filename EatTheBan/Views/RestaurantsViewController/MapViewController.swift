//
//  MapViewController.swift
//  EatTheBan
//
//  Created by Kayla Galway on 2/28/17.
//  Copyright © 2017 kaylagalway. All rights reserved.
//

import Foundation
import UIKit
import GoogleMaps

class MapViewController: MainViewController {
  
  let viewModel = MapViewModel()
  
  override func loadView() {
    let camera = GMSCameraPosition.camera(withLatitude: 40.730610, longitude: -73.935242, zoom: 11.0)
    let googleMapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
    view = googleMapView
    addMarkersToMap(googleMapView: googleMapView)
  }
  
  private func addMarkersToMap(googleMapView: GMSMapView) {
    guard viewModel.restaurants.count > 0 else {
      return
    }
    for restaurant in viewModel.restaurants {
      let marker = createMarker(restaurant: restaurant)
      marker.map = googleMapView
    }
  }
  
  private func createMarker(restaurant: Restaurant) -> GMSMarker {
    let marker = GMSMarker()
    marker.position = restaurant.location
    marker.title = restaurant.name
    marker.snippet = restaurant.country
    return marker
  }
  
}
