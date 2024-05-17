//
//  LocationsModel.swift
//  Africa
//
//  Created by Ricardo Sousa on 16/05/2024.
//

import Foundation


struct location: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
}
