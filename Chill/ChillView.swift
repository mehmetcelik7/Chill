//
//  ContentView.swift
//  Chill
//
//  Created by mehmet Çelik on 26.03.2025.
//

import SwiftUI

struct ChillView: View {
    let sound = "rain music"
    let type = "mp4"
    @State private var currentImageIndex: Int = 0
    let timer = Timer.publish(every: 10, on: .main, in: .common).autoconnect()
    
    var body: some View {
        let image = imageData[currentImageIndex]
        I_mageAndPhotographerView(
            imageName: image.imageName,
            photographer: image.photographer,
            photographer_url: image.photographer_url
        )
        .animation(.easeOut, value: currentImageIndex)
        .onReceive(timer) { _ in
            currentImageIndex = nextIndex(index: currentImageIndex)
        }
        .onTapGesture {
            currentImageIndex = nextIndex(index: currentImageIndex)
        }
        .onAppear {
            playSound(sound: sound, type: type)
        }
    }
    func nextIndex(index: Int) -> Int {
        return (index + 1 ) % imageData.count
    }
}

#Preview {
    ChillView()
}
