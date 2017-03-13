//
//  ViewController.swift
//  MusicApp
//
//  Created by Jenny Kao on 2017-03-13.
//  Copyright © 2017 Jenny Kao. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
    {
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {

        super.viewDidLoad()
        
        // Get file path
        let filePath = Bundle.main.path(forResource: "Ween - Joppa Road", ofType: "mp3")
        let audioPath = URL(fileURLWithPath: filePath!)
        
        do {
            // Initialize audio player
            audioPlayer = try AVAudioPlayer(contentsOf: audioPath)
            audioPlayer.prepareToPlay()
        } catch {
            print("Error")
        }
    }
    @IBAction func ClickedPlay(_ sender: Any)
    {
        // Play
        audioPlayer.play()
    }
    @IBAction func ClickedStop(_ sender: Any)
    {
        // Stop
        audioPlayer.stop()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

