//
//  CoverImageView.swift
//  Africa
//
//  Created by Ricardo Sousa on 05/05/2024.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: PROPERTIES
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: BODY
    
    
    
    var body: some View {
        TabView {
            
            ForEach(coverImages) { item in
                Image(item.name)
                        .resizable()
                    .scaledToFill()
            }
             //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        
    }
    
}


struct CoverImageView_Preview: PreviewProvider {
    
    static var previews: some View{
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
    
}

    

