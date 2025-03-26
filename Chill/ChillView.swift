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
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        let image = imageData[currentImageIndex]
        ZStack {
            
            Image(image.imageName)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                
            Text("Photo by \(image.photographer)")
                .padding()
                .onReceive(timer) { _ in
                    currentImageIndex = nextIndex(index:currentImageIndex)
                }
        }
    }
    func nextIndex(index: Int) -> Int {
        return (index + 1 ) % imageData.count
    }
}

#Preview {
    ChillView()
}
