//
//  VideoListItem.swift
//  Africa
//
//  Created by Ricardo Sousa on 14/05/2024.
//

import SwiftUI

struct VideoListItemView: View {
    // MARK: - PROPERTIES
    let video : Video
    
    // MARK: - BODY
    
    var body: some View {
        HStack (spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .cornerRadius(9)
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 33)
                    .shadow(radius: 3)
            }//:ZSTACK
            
            VStack(alignment: .leading,spacing: 10) {
                Text(video.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            } // VSTACK
        }//: HSTACK
        
    }
}

struct VideoListItem_Previews: PreviewProvider {
    static let videos: [Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListItemView(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
    
}
