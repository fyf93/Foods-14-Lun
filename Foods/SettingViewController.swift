//
//  SettingViewController.swift
//  Foods
//
//  Created by Piero Junior Gaetani on 11/01/18.
//  Copyright © 2018 Anna Grazia Cervo. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer

var globalInizio = 0
var globalFine = 0




class SettingViewController: UIViewController {
    
    @IBOutlet weak var labelFromTime: UILabel!
    @IBOutlet weak var labelToTime: UILabel!
    @IBOutlet weak var homeBackBack: UIButton!
    
    var player: AVAudioPlayer = AVAudioPlayer()
    let session = AVAudioSession.sharedInstance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        audio()
        player.numberOfLoops = -1
        
        
        
        
        //Funzione che blocca l'audio quando clicco un bottone e vado in un'altra view
        homeBackBack.addTarget(self, action: #selector(SettingViewController.stop), for: .touchUpInside)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func switchTouchID(_ sender: UISwitch) {
        
        if (sender.isOn)
        {
            print ("attivo")
            flagsSetting.shared.flagTouchIDControl = true
            
            
        }
        else{
            print ("no")
            flagsSetting.shared.flagTouchIDControl = false
            
            
        }
        
    }
    
    @IBAction func fromStepper(_ sender: UIStepper) {
        
        flagsSetting.shared.inzioOrario = Int(sender.value)
        globalInizio = Int(sender.value)
        
        if (globalInizio>=globalFine){
            sender.value = Double(globalFine - 1)
        }
        
        if (sender.value==24){
            sender.value=0
        }
        
        labelFromTime.text = Int(sender.value).description
        
        
        print (flagsSetting.shared.inzioOrario)
    }
    
    @IBAction func ToStepper(_ sender: UIStepper) {
        
        flagsSetting.shared.fineOrario = Int(sender.value)
        globalFine = Int(sender.value)
        
        if (sender.value==25){
            sender.value=0
            globalFine = Int(sender.value)
        }
        
        if (globalInizio>=globalFine){
            sender.value = Double(Int(globalInizio + 1))
        }
        
        
        
        labelToTime.text = Int(sender.value).description
        
        
        print (flagsSetting.shared.fineOrario)
        
    }
    
    //Funzione per l'audio di sottofondo
    @objc func audio(){
        do
        {
            player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Setting", ofType: "mp3")!))
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
    
    
    //Funzione per mettere in pausa la musica
    @objc func stop() {
        if player.isPlaying{
            player.pause()
        }
        else{
        }
    }
    
}


