//
//  AlternateViewController.swift
//  UsingMaps
//
//  Created by Pedro Lucas de Almeida on 13/10/21.
//  This is an alternate version on how to set a map

import UIKit
import MapKit

class AternateViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mainMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set initial location
        let initialLocation = CLLocation(latitude: -23.426273, longitude: -46.481674)
        //Show map
        mainMap.centerToLocation(initialLocation)

    }


}

//this provides an encapsulated method to set the map
private extension MKMapView {
  func centerToLocation(_ location: CLLocation, regionRadius: CLLocationDistance = 1000){
      let coordinateRegion = MKCoordinateRegion(
            center: location.coordinate,
            latitudinalMeters: regionRadius,
            longitudinalMeters: regionRadius)
      setRegion(coordinateRegion, animated: true)
  }
}


