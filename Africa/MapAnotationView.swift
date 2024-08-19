//
//  MapAnotationView.swift
//  Africa
//
//  Created by Ricardo Sousa on 16/05/2024.
//

import SwiftUI

struct MapAnotationView: View {
    // MARK: - PROPERTIES
    
    var location: NationalParkLocation
    @State private var animation: Double = 0.0
    // MARK: - BODY

    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52,height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48,height: 59, alignment: .center)
            .clipShape(Circle())
        } //: ZSTACK
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)){
                animation = 1
            }
        }
        
    }
}


struct MapAnotationView_Previews: PreviewProvider {
    static var locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    static var previews: some View{
        MapAnotationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
    

