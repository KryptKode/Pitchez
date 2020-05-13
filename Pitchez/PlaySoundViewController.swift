//
//  PlaySoundViewController.swift
//  PitchMod
//
//  Created by Paul on 13/05/2020.
//  Copyright © 2020 Paul. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundViewController: UIViewController {
    
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var slowButton: UIButton!
    @IBOutlet weak var highPitchButton: UIButton!
    @IBOutlet weak var fastButton: UIButton!
    @IBOutlet weak var lowPitchButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    
    var recordedAudioURL: URL!
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int {
        case slow = 0, fast, chipmunk, vader, echo, reverb
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configureUI(.notPlaying)
    }
    
    @IBAction
    func playSoundForButton(_ sender: UIButton){
        print("Play sound button pressed")
    }
    
    @IBAction
    func handleStopPressed(_ sender: AnyObject){
        print("Stop button pressed")
    }
    
    
}
