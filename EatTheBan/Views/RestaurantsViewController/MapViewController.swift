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
  
  override func loadView() {
    let camera = GMSCameraPosition.camera(withLatitude: 40.730610, longitude: -73.935242, zoom: 11.0)
    let googleMapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
    view = googleMapView
    

  }
  
  private func createMarkers(googleMapView: GMSMapView) {
    // Creates a marker in the center of the map.
    let marker = GMSMarker()
    marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
    marker.title = "Sydney"
    marker.snippet = "Australia"
    marker.map = googleMapView
  }
  
}
