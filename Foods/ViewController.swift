//
//  ViewController.swift
//  Foods
//
//  Created by Anna Grazia Cervo on 15/12/17.
//  Copyright © 2017 Anna Grazia Cervo. All rights reserved.
//


var allowFlag : Bool = false

import UIKit
import WebKit
import AVFoundation
import MediaPlayer
import LocalAuthentication

var num = 10


class ViewController: UIViewController {

    
    //Variabili
    @IBOutlet weak var flagStop: UIButton!
    @IBOutlet weak var play: UIButton!  //Bottone play
    @IBOutlet weak var parents: UIButton! //Bottone parantes
    @IBOutlet weak var setting: UIButton!
    
    
    
    
    //Variabili necessarie per l'audio
    var player: AVAudioPlayer = AVAudioPlayer()
    let session = AVAudioSession.sharedInstance()
    
    @IBOutlet weak var StartView: UovoCustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StartView.addUntitled1Animation()
        //Chiamata della funzione per l'audio di sottofondo
        audio()
       player.numberOfLoops = -1
        
        
  
        
        //Funzione che blocca l'audio quando clicco un bottone e vado in un'altra view
        play.addTarget(self, action: #selector(ViewController.stop), for: .touchUpInside)
         setting.addTarget(self, action: #selector(ViewController.stop), for: .touchUpInside)
        
        let calendar = Calendar.current
        let now = Date()
        let eight_today = calendar.date(
            bySettingHour:  flagsSetting.shared.inzioOrario,
            minute: 0,
            second: 0,
            of: now)!
        
        let twentyone_thirty_today = calendar.date(
            bySettingHour:  flagsSetting.shared.fineOrario ,
            minute: 0,
            second: 0,
            of: now)!
        
        if now >= eight_today &&
            now <= twentyone_thirty_today
        {
            allowFlag = true
            print("orario compreso tra \(flagsSetting.shared.inzioOrario) e \(flagsSetting.shared.fineOrario)")
        }
        else {
            allowFlag = false
            print("NO")
        }
        
        if (allowFlag == true || flagsSetting.shared.flagTouchIDControl == false){
             flagStop.removeFromSuperview()
        }
        if (allowFlag == false && flagsSetting.shared.flagTouchIDControl == true){
            flagStop.addTarget(self, action: #selector(ViewController.authWithTouchID), for: .touchUpInside)
        }
        
     
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //Funzione per l'audio di sottofondo
    @objc func audio(){
        do
        {
            player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Play", ofType: "mp3")!))
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
    
    
    @objc func Try() {
        print ("Funziona")
        flagStop.removeFromSuperview()
    }
    
    @objc func authWithTouchID(_ sender: Any) {
        // variabilki di prtenza di funzione //
        let context = LAContext()
        var error: NSError?
        
       
        //----parte di codice per ottenere la disponiilità del touch id---//
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            let reason = "Authenticate with Touch ID"
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason, reply:
                {(succes, error) in
                    // --- Conseguenze in base al risultato del touch id inserito --- //
                    if succes {
                        self.showAlertController("Touch ID Authentication Succeeded")
                        self.Try()
                        self.flagStop.removeFromSuperview()
                    }
                    else {
                        self.showAlertController("Touch ID Authentication Failed")
                    }
                    } as (Bool , Error?) -> Void)
        }
            // --- In caso di non dispobilità touch id --- //
        else {
            showAlertController("Touch ID not available")
        }
    }
    
    
    func showAlertController(_ message: String) {
        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
}
    
    
                


