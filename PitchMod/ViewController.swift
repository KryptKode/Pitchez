//
//  ViewController.swift
//  PitchMod
//
//  Created by Paul on 09/05/2020.
//  Copyright © 2020 Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordStatusLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        disableStopButton()
        enableRecordButton()
    }


    @IBAction func recordAudio(_ sender: Any) {
        updateLabel(message: "Recording in progress")
        enableStopButton()
        disableRecordButton()
    }
    @IBAction func stopRecord(_ sender: Any) {
        updateLabel(message: "Tap to record")
        disableStopButton()
        enableRecordButton()
    }
    
    private func disableStopButton(){
         stopButton.isEnabled = false
    }
    
    private func enableStopButton(){
         stopButton.isEnabled = true
    }
    
    private func disableRecordButton(){
         recordButton.isEnabled = false
    }
    
    private func enableRecordButton(){
         recordButton.isEnabled = true
    }
    
   private func updateLabel(message:String){
        recordStatusLabel.text = message
    }
}

