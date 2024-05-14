//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Ricardo Sousa on 10/05/2024.
//

import SwiftUI

struct InsetGalleryView: View {
        
    // MARK: PROPERTIES
    let animal : Animal
    
    // BODY: BODY

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }//: LOOP
            }//: HSTACK
        }//: SCROOL
        
        
    }
}



struct InsetGallery_Preview: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    
    static var previews: some View{
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
