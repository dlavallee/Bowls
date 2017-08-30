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

class ViewController: UIViewController, AVAudioPlayerDelegate {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //Set the backgropund color to black
        view.backgroundColor = .black
        
        
        //setup wav files to play
        ////////////////////////////
        
        //BowlA
        do {
            playBowlA = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path (forResource: "bowla", ofType: "wav")!))
            playBowlA.delegate = self
            playBowlA.prepareToPlay()
                    }
        catch {
            print(error)
        }
        
        //BowlB
        do {
            playBowlB = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path (forResource: "bowlb", ofType: "wav")!))
            playBowlB.delegate = self
            playBowlB.prepareToPlay()
        }
        catch {
            print(error)
        }
        
        //Burmese
        do {
            playBurmese = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path (forResource: "gong-burmese", ofType: "wav")!))
            playBurmese.delegate = self
            playBurmese.prepareToPlay()
        }
        catch {
            print(error)
        }
        
        //Chinese
        do {
            playChinese = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path (forResource: "gong-chinese", ofType: "wav")!))
            playChinese.delegate = self
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

    @IBOutlet weak var GongImage: UIImageView!
    
    //bowl a button
    @IBAction func BowlABtn(_ sender: Any) {
        playBowlA.play()
        GongImage.StartRotating()
            
        
       
    }
    
    //bowl b button
    @IBAction func BowlBBtn(_ sender: Any) {
        playBowlB.play()
        
        GongImage.StartRotating()
    }
    
    //burmese gong button
    @IBAction func BurmeseBtn(_ sender: Any) {
        playBurmese.play()
        
        GongImage.StartRotating()
    }
    
    //chinese gong button
    @IBAction func ChineseBtn(_ sender: Any) {
        playChinese.play()
        
        GongImage.StartRotating()
    }
    
    
    
    //stops Gong from spinning if NO sound file is playing//
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        GongImage.stopRotating()
    }
    
}
