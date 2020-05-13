//
//  PlaySoundViewController.swift
//  PitchMod
//
//  Created by Paul on 13/05/2020.
//  Copyright © 2020 Paul. All rights reserved.
//

import UIKit

class PlaySoundViewController: UIViewController {
    
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var slowButton: UIButton!
    @IBOutlet weak var highPitchButton: UIButton!
    @IBOutlet weak var fastButton: UIButton!
    @IBOutlet weak var slowPitchButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    
    var recordedAudioURL: URL!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
