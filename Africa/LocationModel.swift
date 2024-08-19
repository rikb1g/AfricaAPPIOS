//
//  LocationsModel.swift
//  Africa
//
//  Created by Ricardo Sousa on 16/05/2024.
//

import Foundation
import MapKit


struct NationalParkLocation : Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    // Computed Property
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
