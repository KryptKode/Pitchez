//
//  RecordSoundViewController.swift
//  PitchMod
//
//  Created by Paul on 09/05/2020.
//  Copyright © 2020 Paul. All rights reserved.
//

import AVFoundation
import UIKit

class RecordSoundViewController: UIViewController {

    @IBOutlet weak var recordStatusLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    var audioRecorder: AVAudioRecorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        disableStopButton()
        enableRecordButton()
    }


    @IBAction func recordAudio(_ sender: Any) {
        updateLabel(message: "Recording in progress")
        enableStopButton()
        disableRecordButton()
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))

        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord, with:AVAudioSession.CategoryOptions.defaultToSpeaker)

        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
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

