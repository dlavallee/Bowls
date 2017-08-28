//
//  ViewController.swift
//  Test
//
//  Created by David Lavallee on 8/27/17.
//  Copyright © 2017 David Lavallee. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path (forResource: "bowla", ofType: "wav")!))
            audioPlayer.prepareToPlay()
        }
        catch {
            print(error)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func BowlAPlay(_ sender: Any) {
    }
   
    @IBAction func BowlBPlay(_ sender: Any) {
    }

    @IBAction func BurmesePlay(_ sender: Any) {
    }
    @IBAction func CinesePlay(_ sender: Any) {
    }
}

