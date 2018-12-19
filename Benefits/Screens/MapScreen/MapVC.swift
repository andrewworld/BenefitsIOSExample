//
//  MapVC.swift
//  Benefits
//
//  Created by Andrew on 28/11/2018.
//  Copyright © 2018 Andrew Inc. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {
    @IBOutlet private weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadLocations()
    }
    
    private func loadLocations(){
        apollo.fetch(query: GetLocationsQuery()) { result, error in
            guard let data = result?.data?.getBenefits else { return }
            
            let annotations = data.map{Location(coordinate: CLLocationCoordinate2D(latitude: $0.locations[0].lat, longitude: $0.locations[0].lng), title: $0.name)}
            
            self.mapView.addAnnotations(annotations)
        }
    }
}

