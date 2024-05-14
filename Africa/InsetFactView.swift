//
//  InsetFactView.swift
//  Africa
//
//  Created by Ricardo Sousa on 10/05/2024.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: PROPERTIES
    
    let animal: Animal
    
    // MARK: BODY
    
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact, id: \.self){ iten in
                    Text(iten)
                    
                }
                
            } //: TABs
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//: SCROOL
    }
}


struct InsetFactView_Preview: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
