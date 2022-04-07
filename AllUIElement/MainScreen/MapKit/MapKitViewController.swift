//
//  MapKitViewController.swift
//  AllUIElement
//
//  Created by Hong Vouchkim on 7/4/22.
//
import MapKit
import CoreLocation
import UIKit

class MapKitViewController: UIViewController, CLLocationManagerDelegate {

	@IBOutlet weak var mapView: MKMapView!
	@IBOutlet weak var buttonBack: UIButton!
	let manager = CLLocationManager()
	override func viewDidLoad() {
        super.viewDidLoad()
		 commitUI()
    }
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		manager.desiredAccuracy = kCLLocationAccuracyBest
		manager.delegate = self
		manager.requestWhenInUseAuthorization()
		manager.startUpdatingLocation()
	}
	
	private func commitUI() {
		buttonBack.layer.cornerRadius = 0.5 * buttonBack.bounds.size.width
	}
	
	@IBAction func buttonBackTapped(_ sender: Any) {
		dismiss(animated: true, completion: nil)
	}
	
	func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
		if let location = locations.first {
			manager.startUpdatingLocation()
			
			render(location)
		}
	}
	
	func render(_ location: CLLocation) {
		let coordinete = CLLocationCoordinate2D(latitude: 11.5564, longitude: 104.9282)
		let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
		let region = MKCoordinateRegion(center: coordinete, span: span)
		mapView.setRegion(region, animated: true)
		
		let pin = MKPointAnnotation()
		pin.coordinate = coordinete
		mapView.addAnnotation(pin)
		
	}
    
}
