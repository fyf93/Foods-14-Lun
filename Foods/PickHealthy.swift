//
//  PickHealthy.swift
//  Foods
//
//  Created by Anna Grazia Cervo on 15/12/17.
//  Copyright © 2017 Anna Grazia Cervo. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer


class PickHealthy: UIViewController {

    @IBOutlet weak var door: UIButton!
    //Variabili necessarie per l'audio
    var player: AVAudioPlayer = AVAudioPlayer()
    var player2: AVAudioPlayer = AVAudioPlayer()
    var player3: AVAudioPlayer = AVAudioPlayer()
    let session = AVAudioSession.sharedInstance()
    
    var newScore: Int = 0
    var chooseArray = 0
    var chooseRandomImage = 0
    var currentScore: Int = 0

    var goodFoods: [UIImage] = [UIImage(named: "apple")!,UIImage(named: "banana")!,UIImage(named: "broccoli")!,UIImage(named: "carrot")!,UIImage(named: "cereals")!,UIImage(named: "cheese")!,UIImage(named: "cherries")!,UIImage(named: "chicken thigh")!,UIImage(named: "eggplant")!,UIImage(named: "eggs")!,UIImage(named: "fish")!,UIImage(named: "grapes")!,UIImage(named: "kiwi")!,UIImage(named: "lemon")!,UIImage(named: "milk")!,UIImage(named: "orange")!,UIImage(named: "peach")!,UIImage(named: "pear")!,UIImage(named: "peas")!,UIImage(named: "pineapple")!,UIImage(named: "potato")!,UIImage(named: "pumpkin")!,UIImage(named: "salad")!,UIImage(named: "strawberry")!,UIImage(named: "tomato")!,UIImage(named: "water")!,UIImage(named: "watermelon")!]
    
    var badFoods: [UIImage] = [UIImage(named: "candies")!,UIImage(named: "cola")!,UIImage(named: "donut")!,UIImage(named: "fries")!,UIImage(named: "hamburger")!,UIImage(named: "hot dog")!,UIImage(named: "ketchup")!,UIImage(named: "salt")!,UIImage(named: "snack")!]

    @IBOutlet weak var foods: UIImageView!
    @IBOutlet weak var avatar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatar.image = #imageLiteral(resourceName: "Neuter")
        audio()
        player.numberOfLoops = -1
        
        door.addTarget(self, action: #selector(PickHealthy.stop), for: .touchUpInside)
        
        // Do any additional setup after loading the view, typically from a nib.
        /*avatar.layer.cornerRadius = avatar.frame.size.width/2
        
        avatar.clipsToBounds = true
        
        avatar.layer.borderColor = UIColor.black.cgColor
        avatar.layer.masksToBounds = true
        avatar.layer.borderWidth = 2
        avatar.layer.backgroundColor = UIColor(red: 248/255.0, green: 234/255.0, blue: 82/255.0, alpha: 1.0).cgColor
        */
        create()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Funzione per l'audio di sottofondo
    @objc func audio(){
        do
        {
            player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "PickHealty", ofType: "mp3")!))
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
    
    @objc func YuppieAudio2(){
        do
        {
            player2 = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Yaoo", ofType: "mp3")!))
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
    
    @objc func OhOhAudio3(){
        do
        {
            player3 = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "ohoh", ofType: "mp3")!))
        }
        catch { // process error
        }
        do {
            try session.setCategory(AVAudioSessionCategoryPlayback)
        }
        catch { // process error
        }
        player3.play()
    }
    
    //Funzione per mettere in pausa la musica
    @objc func stop() {
        if player.isPlaying{
            player.pause()
        }
        else{
        }
    }
    
    func create(){
        chooseArray = Int(arc4random_uniform(UInt32(1)+1))
        let sizeGood = goodFoods.count-1
        let sizeBad = badFoods.count-1
        
        
        
        if chooseArray == 0 {
            chooseRandomImage = Int(arc4random_uniform(UInt32(sizeGood)))
            foods.image = goodFoods[chooseRandomImage]
        }
        if chooseArray == 1{
            chooseRandomImage = Int(arc4random_uniform(UInt32(sizeBad)))
            foods.image = badFoods[chooseRandomImage]
        }
    }
    
    
    
    @IBAction func goodButton(_ sender: UIButton) {
    
 
        if (chooseArray == 0 && newScore < 4){
            newScore += 1
        }
        if (chooseArray == 1 && newScore > -4)
        {
            newScore -= 1
        }
        
        if newScore == 1 {
            avatar.image = #imageLiteral(resourceName: "Happy +1")
            YuppieAudio2()
        }
        else if newScore == 0 {
            avatar.image = #imageLiteral(resourceName: "Neuter")
        }
        else if newScore == 2 {
            avatar.image = #imageLiteral(resourceName: "Happy +2")
            YuppieAudio2()
        }
        else if newScore == 3 {
            avatar.image = #imageLiteral(resourceName: "Happy +3")
            YuppieAudio2()
        }
        else if newScore == 4{
            avatar.image = #imageLiteral(resourceName: "Super Happy")
            YuppieAudio2()
        }
        else if newScore == -1 {
            avatar.image = #imageLiteral(resourceName: "Sad -1")
            OhOhAudio3()
        }
        else if newScore == -2 {
            avatar.image = #imageLiteral(resourceName: "Sad -2")
             OhOhAudio3()
        }
        else if newScore == -3 {
            avatar.image = #imageLiteral(resourceName: "Sad -3")
             OhOhAudio3()
        }
        else if newScore == -4{
            avatar.image = #imageLiteral(resourceName: "Super Sad")
             OhOhAudio3()
        }
       
        create()
    }
  
    
    @IBAction func badButton(_ sender: UIButton) {
    
        if (chooseArray == 1 && newScore < 4 ) {
            newScore += 1
        }
        if (chooseArray == 0 && newScore > -4) {
            newScore -= 1
        }
        
        
        
        if newScore == 1 {
            avatar.image = #imageLiteral(resourceName: "Happy +1")
            YuppieAudio2()
        }
        else if newScore == 0 {
            avatar.image = #imageLiteral(resourceName: "Neuter")
        }
        else if newScore == 2 {
            avatar.image = #imageLiteral(resourceName: "Happy +2")
            YuppieAudio2()
        }
        else if newScore == 3 {
            avatar.image = #imageLiteral(resourceName: "Happy +3")
            YuppieAudio2()
        }
        else if newScore == 4{
            avatar.image = #imageLiteral(resourceName: "Super Happy")
            YuppieAudio2()
        }
        else if newScore == -1 {
            avatar.image = #imageLiteral(resourceName: "Sad -1")
             OhOhAudio3()
        }
        else if newScore == -2 {
            avatar.image = #imageLiteral(resourceName: "Sad -2")
             OhOhAudio3()
        }
        else if newScore == -3 {
            avatar.image = #imageLiteral(resourceName: "Sad -3")
             OhOhAudio3()
        }
        else if newScore == -4{
            avatar.image = #imageLiteral(resourceName: "Super Sad")
            OhOhAudio3()
        }
        create()
       }
}
