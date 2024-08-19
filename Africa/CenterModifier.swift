//
//  CenterModifier.swift
//  Africa
//
//  Created by Ricardo Sousa on 22/05/2024.
//

import Foundation
import SwiftUI


struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
