//
//  InsetDescriptionView.swift
//  Africa
//
//  Created by Ricardo Sousa on 10/05/2024.
//

import SwiftUI

struct InsetDescriptionView: View {
    // MARK: PROPERTIES
    let animal: Animal
    
    // MARK: BODY
    var body: some View {
        Text(animal.description)
            .font(.footnote)
            .fontWeight(.light)
            .multilineTextAlignment(.center)
    }
}



struct InsetDescription_Preview: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
