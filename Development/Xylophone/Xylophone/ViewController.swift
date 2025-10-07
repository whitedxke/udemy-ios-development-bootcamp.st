//
//  ViewController.swift
//  Xylophone
//
//  Created by Pavel Betenya on 7.10.25.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var player: AVAudioPlayer?
    
    @IBAction func soundPressed(_ sender: UIButton) {
        playSound(
            soundName: sender.currentTitle!,
        )
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(
            forResource: soundName,
            withExtension: "wav",
        )
        
        player = try! AVAudioPlayer(
            contentsOf: url!,
        )
        player?.play()
    }
}
