//
//  ViewController.swift
//  Hitchhiker's Guide
//
//  Created by admin on 12/04/2018.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation

class ViewController: UIViewController {
    //var startupSound: SystemSoundID!
        
    @IBAction func backToMenu(_ segue:UIStoryboardSegue) {
    }
    
    var player:AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do
        {
            let audioPath = Bundle.main.path(forResource: "startup", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
        {
            //PROCESS ERROR
        }
        
        let session = AVAudioSession.sharedInstance()
        
        do
        {
            try session.setCategory(AVAudioSessionCategoryPlayback)
        }
        catch
        {
            
        }
        
        player.play()
    }
    
    struct entry {
        var title: String
        var content: String
        var soundByte: AudioFileID
    }
    
    //var babelFishEntry = entry(
      //  title : "Babel Fish",
        //content: "The Babel fish is small, yellow, leech-like, and probably the oddest thing in the Universe. It feeds on brainwave energy received not from its own carrier, but from those around it. It absorbs all unconscious mental frequencies from this brainwave energy to nourish itself with. It then excretes into the mind of its carrier a telepathic matrix formed by combining the conscious thought frequencies with nerve signals picked up from the speech centres of the brain which has supplied them. The practical upshot of all this is that if you stick a Babel fish in your ear you can instantly understand anything said to you in any form of language. The speech patterns you actually hear decode the brainwave matrix which has been fed into your mind by your Babel fish. Now it is such a bizarrely improbable coincidence that something so mind-bogglingly useful could have evolved purely by chance that some thinkers have chosen to see it as a final and clinching proof of the non-existence of God.The argument goes something like this: 'I refuse to prove that I exist,' says God, 'for proof denies faith, and without faith, I am nothing.' 'But, says Man, the Babel fish is a dead giveaway, isn't it? It could not have evolved by chance. It proves you exist, and, by your own arguments, you don't. QED.' 'Oh dear,' says God, 'I hadn't thought of that,' and vanishes in a puff of logic. 'Oh, that was easy,' says Man, and for an encore goes on to prove that black is white and gets himself killed on the next zebra crossing. Most leading theologians claim that this argument is a load of dingo's kidneys, but that didn't stop Oolon Colluphid making a small fortune when he used it as the theme of his best-selling book, Well That About Wraps It Up For God. Meanwhile, the poor Babel fish, by effectively removing all barriers to communication between different races and cultures, has caused more and bloodier wars than anything else in the history of creation.",
        //soundByte: <#AudioFileID#>
    //)

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  /*  func createSounds() {
        var soundID: SystemSoundID = 0
    
        var soundURL = CFBundleCopyResourceURL(CFBundleGetMainBundle(), "startup" as CFString!, "wav" as CFString!, nil)
        AudioServicesCreateSystemSoundID(soundURL!, &soundID)
        startupSound = soundID
    }*/

}

