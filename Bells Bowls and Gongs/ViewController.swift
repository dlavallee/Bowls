//
//  ViewController.swift
//  Bells Bowls and Gongs
//
//  Created by David Lavallee on 8/28/17.
//  Copyright © 2017 David Lavallee. All rights reserved.
//

import UIKit
import AVFoundation


var playBowlA = AVAudioPlayer()
var playBowlB = AVAudioPlayer()
var playBurmese = AVAudioPlayer()
var playChinese = AVAudioPlayer()

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //setup wav files to play
        ////////////////////////////
        
        //BowlA
        do {
            playBowlA = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path (forResource: "bowla", ofType: "wav")!))
            playBowlA.prepareToPlay()
        }
        catch {
            print(error)
        }
        
        //BowlB
        do {
            playBowlB = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path (forResource: "bowla", ofType: "wav")!))
            playBowlB.prepareToPlay()
        }
        catch {
            print(error)
        }
        
        //Burmese
        do {
            playBurmese = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path (forResource: "bowla", ofType: "wav")!))
            playBurmese.prepareToPlay()
        }
        catch {
            print(error)
        }
        
        //Chinese
        do {
            playChinese = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path (forResource: "bowla", ofType: "wav")!))
            playChinese.prepareToPlay()
        }
        catch {
            print(error)
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
}

