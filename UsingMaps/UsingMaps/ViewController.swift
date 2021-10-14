//
//  ViewController.swift
//  UsingMaps
//
//  Created by Pedro Lucas de Almeida on 04/10/21.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mainMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set initial location
//        let initialLocation = CLLocation(latitude: -23.426273, longitude: -46.481674)

//        mainMap.centerToLocation(initialLocation)
        let latitude: CLLocationDegrees = -23.426273
        let longitude: CLLocationDegrees = -46.481674

        let deltaLatitude: CLLocationDegrees = 0.01
        let deltaLongitude: CLLocationDegrees = 0.01
        
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        let visualArea: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:deltaLatitude, longitudeDelta:deltaLongitude)

        let region: MKCoordinateRegion = MKCoordinateRegion(center: localizacao, span: visualArea)

        mainMap.setRegion(region, animated: true)
    }


}

//private extension MKMapView {
//  func centerToLocation(_ location: CLLocation, regionRadius: CLLocationDistance = 1000){
//      let coordinateRegion = MKCoordinateRegion(
//            center: location.coordinate,
//            latitudinalMeters: regionRadius,
//            longitudinalMeters: regionRadius)
//      setRegion(coordinateRegion, animated: true)
//  }
//}


