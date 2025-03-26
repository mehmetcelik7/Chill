//
//  playSound.swift
//  Chill
//
//  Created by mehmet Çelik on 26.03.2025.
//

import Foundation
import AVKit
var audioPlayer: AVAudioPlayer? = AVAudioPlayer()


func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            
            audioPlayer?.numberOfLoops = -1
            audioPlayer?.play()
        }catch{
            print("Error")
        }
    }
}


