//
//  ViewController.swift
//  SwiftPiano
//
//  Created by MikiyaFukuda on 2014/11/24.
//  Copyright (c) 2014年 MikiyaFukuda. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer = AVAudioPlayer()
    let sounds = ["C3", "C#", "D", "D#","E","F", "F#", "G", "G#", "A", "A#", "B", "C4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func touchC(sender: UIButton) {
        println(sender.tag)
        let contentURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(sounds[sender.tag], ofType: "mp3")!)
        audioPlayer = AVAudioPlayer(contentsOfURL: contentURL, error: nil)
        audioPlayer.play()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

