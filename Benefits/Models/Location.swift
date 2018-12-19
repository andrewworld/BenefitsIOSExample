//
//  Location.swift
//  Benefits
//
//  Created by Andrew on 29/11/2018.
//  Copyright © 2018 Andrew Inc. All rights reserved.
//

import UIKit
import MapKit

class Location: NSObject, MKAnnotation{
    var title: String?
    var coordinate: CLLocationCoordinate2D
    
    init(coordinate: CLLocationCoordinate2D, title: String?) {
        self.title = title
        self.coordinate = coordinate
    }
    
}
