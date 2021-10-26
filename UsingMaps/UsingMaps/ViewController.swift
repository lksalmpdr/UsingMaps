//
//  ViewController.swift
//  UsingMaps
//
//  Created by Pedro Lucas de Almeida on 04/10/21.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mainMap: MKMapView!
    
    var locationMngr = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationMngr.delegate = self
        locationMngr.desiredAccuracy = kCLLocationAccuracyBest
        locationMngr.requestWhenInUseAuthorization()
        locationMngr.startUpdatingLocation()

//        let latitude: CLLocationDegrees = -23.426273
//        let longitude: CLLocationDegrees = -46.481674
//
//        let deltaLatitude: CLLocationDegrees = 0.01
//        let deltaLongitude: CLLocationDegrees = 0.01
//
//        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
//
//        let visualArea: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:deltaLatitude, longitudeDelta:deltaLongitude)
//
//        let region: MKCoordinateRegion = MKCoordinateRegion(center: localizacao, span: visualArea)
//
//        mainMap.setRegion(region, animated: true)
//
//        let annotation = MKPointAnnotation()
//        annotation.coordinate = localizacao
//        annotation.title = "Saída para o Brasil"
//        annotation.subtitle = "A única saída para esse país maldito"
//
//        mainMap.addAnnotation(annotation)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocatioin = locations.last!
        let latitude: CLLocationDegrees = userLocatioin.coordinate.latitude
        let longitude: CLLocationDegrees = userLocatioin.coordinate.longitude

        let deltaLatitude: CLLocationDegrees = 0.01
        let deltaLongitude: CLLocationDegrees = 0.01

        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)

        let visualArea: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:deltaLatitude, longitudeDelta:deltaLongitude)

        let region: MKCoordinateRegion = MKCoordinateRegion(center: localizacao, span: visualArea)

        mainMap.setRegion(region, animated: true)
    }
}
