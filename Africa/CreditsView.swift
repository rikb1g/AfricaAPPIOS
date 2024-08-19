//
//  CreditsView.swift
//  Africa
//
//  Created by Ricardo Sousa on 22/05/2024.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
    Copyright © Ricardo Sousa
    All rigj reserved
    Better Apps ♡ Less Code
    """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        }//: VSTACK
        .padding()
        .opacity(0.4)
    }
}

#Preview {
    CreditsView()
        .previewLayout(.sizeThatFits)
        .padding()
}
