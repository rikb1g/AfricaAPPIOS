//
//  MainView.swift
//  Africa
//
//  Created by Ricardo Sousa on 05/05/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Locations")
                    
                }
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Photos")
                }
            
        } //: TAB
    }
}

#Preview {
    MainView()
}
