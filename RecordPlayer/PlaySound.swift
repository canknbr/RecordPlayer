//
//  PlaySound.swift
//  RecordPlayer
//
//  Created by Can Kanbur on 3.04.2023.
//

import AVFoundation
import Foundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("error")
        }
    }
    
}
