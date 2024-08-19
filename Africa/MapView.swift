//
//  MapView.swift
//  Africa
//
//  Created by Ricardo Sousa on 05/05/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: -PROPERTIES
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - BODY
    
    var body: some View {
        // MARK:  -No1 BASIC MAO
        //Map(coordinateRegion: $region)
        
        // MARK: No2 ADVANCE MAP
        Map(coordinateRegion: $region, annotationItems: locations,
            annotationContent: {
            item in
            // (A) PIN ; OLD STYLE (always static)
            //MapPin(coordinate: item.location, tint: .accentColor)
            
            // (B) MARKER: NEW STYLE (always static)
            //MapMarker(coordinate: item.location, tint: .accentColor)
            
            // (C) CUSTOM BASIC ANOTATION (it could be interative)
            
            //MapAnnotation(coordinate: item.location) {
            //  Image("logo")
            //      .resizable()
            //      .scaledToFit()
            //      .frame(width: 32, height: 32, alignment: .center)
            //  }
            
            // (D) CUSTOM ADVANCED ANNOTATION (It could be interactive)
            MapAnnotation(coordinate: item.location){
                MapAnotationView(location: item)
            }
            
        }) //: MAP
        .overlay(
            HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 12){
                Image("compass")
                .resizable()
                .scaledToFit()
            .frame(width: 48, height:48, alignment: .center)
                VStack (alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                    }//: HSTACK
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                    }//: HSTACK
                }//: VSTACK
            
                
                
            }//: HSTACK
                .padding(.vertical, 12)
                .padding(.horizontal,16)
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(8)
                ).padding()
            ,alignment: .top
        )
    }
}

#Preview {
    MapView()
}
