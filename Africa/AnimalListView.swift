//
//  AnimalListView.swift
//  Africa
//
//  Created by Ricardo Sousa on 05/05/2024.
//

import SwiftUI

struct AnimalListView: View {
    //: MARK: PROPERTIES
    
    let animal: Animal
    
    //: BODY
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                RoundedRectangle(cornerRadius: 12)
        )
            VStack(alignment: .leading, spacing: 12) {
                Text(animal.name)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }//: VSTACK
            
        }//: HSTACK
    }
}

struct AnimalListView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalListView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
