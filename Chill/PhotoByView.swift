//
//  PhotoByView.swift
//  Chill
//
//  Created by mehmet Çelik on 26.03.2025.
//

import SwiftUI

struct PhotoByView: View {
    let photographer: String
    let photographer_url: String
    @State var offsetX: CGFloat
    var body: some View {
        HStack {
            Text("Photo by")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(colorPhotoBy)
            
            Text("\(photographer.capitalized)")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(colorPhotographerName)
            
            if let url = URL(string: photographer_url) {
                Link(destination: url, label: {
                    Image(systemName: "link.circle.fill")
                })
            }
            
        }.padding()
            .background(
                RoundedRectangle(cornerRadius: 5)
                    .fill(colorBackgroundPhotographer)
                    .offset(x: offsetX)
                    .animation(.spring.delay(0.5),value: offsetX)
                    .onAppear{
                        offsetX = 0
                    }
            )
    }
}

#Preview {
    PhotoByView(photographer: imageData[0].photographer, photographer_url: imageData[0].photographer_url, offsetX: 0)
}
