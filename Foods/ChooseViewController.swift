//
//  ChooseViewController.swift
//  Foods
//
//  Created by Anna Grazia Cervo on 19/12/17.
//  Copyright © 2017 Anna Grazia Cervo. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer

class ChooseViewController: UIViewController {

    @IBOutlet weak var AirBalloonView: AirBalloonCustomView!
    @IBOutlet weak var FoodView: FoodCustomView!
    @IBOutlet weak var TreeView: TreeCustomView!
    @IBOutlet weak var BasketView: BasketCustomView!
    
    
    @IBOutlet weak var UpButton: UIButton!
    @IBOutlet weak var DownButton: UIButton!
    @IBOutlet weak var RightButton: UIButton!
    @IBOutlet weak var LeftButton: UIButton!
    
    
    var player2 = AVAudioPlayer()
    
    var player = AVAudioPlayer()
    var session = AVAudioSession.sharedInstance()
    
    
    // Loop video with threadmill pattern
    // Called by NotificationCenter, don't call directly
    func audio(){
        do
        {
            player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Home", ofType: "mp3")!))
        }
        catch { // process error
        }
        do {
            try session.setCategory(AVAudioSessionCategoryPlayback)
        }
        catch { // process error
        }
        player.play()
    }
    
    @objc func BubbleAudio2(){
        do
        {
            player2 = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "bubblePop", ofType: "mp3")!))
        }
        catch { // process error
        }
        do {
            try session.setCategory(AVAudioSessionCategoryPlayback)
        }
        catch { // process error
        }
        player2.play()
    }
    

    
    
    override func viewDidLoad() {
        BasketView.addUntitled1Animation()
        TreeView.addMoveTreeAnimation()
        FoodView.addCibiParlantiAnimation()
        AirBalloonView.addMovAirBalloonAnimation()
        
        UpButton.addTarget(self, action: #selector(ChooseViewController.BubbleAudio2), for: .touchUpInside)
           DownButton.addTarget(self, action: #selector(ChooseViewController.BubbleAudio2), for: .touchUpInside)
           LeftButton.addTarget(self, action: #selector(ChooseViewController.BubbleAudio2), for: .touchUpInside)
           RightButton.addTarget(self, action: #selector(ChooseViewController.BubbleAudio2), for: .touchUpInside)
        
        super.viewDidLoad()
            
            // To stop, call stop()
            audio()
            player.numberOfLoops = -1
        }
        
        
        
        
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        override func viewWillDisappear(_ animated: Bool) {
            player.stop()
            
            
            
            
        }

}
