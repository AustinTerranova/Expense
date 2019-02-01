//
//  MapViewController.swift
//  MapView
//
//  Created by Austin Terranova on 10/4/18.
//  Copyright © 2018 Austin Terranova. All rights reserved.
//

import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapLocation: MKMapView!
     let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        locationManager.requestWhenInUseAuthorization()
        mapLocation.setUserTrackingMode(.follow, animated: true)
            locationManager.delegate = self
        
        mapLocation.userTrackingMode = .follow
        mapLocation.showsUserLocation = true
        
        locationManager.requestLocation()
    }
     
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations.last
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
