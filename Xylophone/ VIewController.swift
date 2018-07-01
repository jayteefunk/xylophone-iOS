//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func notePressed(_ sender: UIButton) {
        //let selectedSoundFileName = soundArray[sender.tag - 1]
        //playSound(soundFileName: selectedSoundFileName)
        
        playSound(soundFileName: soundArray[sender.tag - 1])
        
    }

    func playSound(soundFileName : String) {
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            
        } catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }
    
}


//var xylophoneSound : String = ""
//var keyTag : Int = 0
//        //print(sender.tag)
//        let url = Bundle.main.url(forResource: xylophoneSound, withExtension: "wav")!
//        //sender.tag = Int (keyTag)
//        switch sender.tag {
//        case 1:
//            xylophoneSound = "note1"
//        case 2:
//            xylophoneSound = "note2"
//        case 3:
//            xylophoneSound = "note3"
//        case 4:
//            xylophoneSound = "note4"
//        case 5:
//            xylophoneSound = "note5"
//        case 6:
//            xylophoneSound = "note6"
//        case 7:
//            xylophoneSound = "note7"
//        default:
//            print("error with finding url name")
//        }
//        do {
//            let sound = try AVAudioPlayer(contentsOf: url)
//            self.player = sound
//            sound.numberOfLoops = 1
//            sound.prepareToPlay()
//            sound.play()
//        } catch {
//            print("error loading file")
//            // couldn't load file :(
//        }
