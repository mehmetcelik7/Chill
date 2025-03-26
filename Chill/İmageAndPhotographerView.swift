//
//  İmageAndPhotographerView.swift
//  Chill
//
//  Created by mehmet Çelik on 26.03.2025.
//

import SwiftUI

struct I_mageAndPhotographerView: View {
    let imageName: String
    let photographer: String
    let photographer_url: String
    let offsetValue = max(UIScreen.main.bounds.width, UIScreen.main.bounds.height)
    var body: some View {
        ZStack(alignment: .top) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            PhotoByView(photographer: photographer, photographer_url: photographer_url, offsetX: offsetValue)
                .padding()
                .opacity(0.7)
        }
    }
}

#Preview {
    I_mageAndPhotographerView(imageName: imageData[0].imageName, photographer: imageData[0].photographer, photographer_url: imageData[0].photographer_url)
}
