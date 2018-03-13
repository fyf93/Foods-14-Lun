    //
    //  DragDrop.swift
    //  Foods
    //
    //  Created by Anna Grazia Cervo on 18/12/17.
    //  Copyright © 2017 Anna Grazia Cervo. All rights reserved.
    //

    import UIKit
    import AVFoundation
    import MediaPlayer

    class DragDrop: UIViewController {
        
        @IBOutlet weak var back: UIButton!
        @IBOutlet weak var foodImage: UIImageView!
            @IBOutlet weak var myView: UIView!
            @IBOutlet weak var goodBasket: UIImageView!
            @IBOutlet weak var mood: UIImageView!
            @IBOutlet weak var badBasket: UIImageView!
        
        
        //Variabili necessarie per l'audio
        var player: AVAudioPlayer = AVAudioPlayer()
        var player2: AVAudioPlayer = AVAudioPlayer()
        var player3: AVAudioPlayer = AVAudioPlayer()
        let session = AVAudioSession.sharedInstance()
    
        
        
            var food = UIImage()
            var good: [UIImage] = [UIImage(named: "apple")!,UIImage(named: "banana")!,UIImage(named: "broccoli")!,UIImage(named: "carrot")!,UIImage(named: "cereals")!,UIImage(named: "cheese")!,UIImage(named: "cherries")!,UIImage(named: "chicken thigh")!,UIImage(named: "eggplant")!,UIImage(named: "eggs")!,UIImage(named: "fish")!,UIImage(named: "grapes")!,UIImage(named: "kiwi")!,UIImage(named: "lemon")!,UIImage(named: "milk")!,UIImage(named: "orange")!,UIImage(named: "peach")!,UIImage(named: "pear")!,UIImage(named: "peas")!,UIImage(named: "pineapple")!,UIImage(named: "potato")!,UIImage(named: "pumpkin")!,UIImage(named: "salad")!,UIImage(named: "strawberry")!,UIImage(named: "tomato")!,UIImage(named: "water")!,UIImage(named: "watermelon")!]
            var bad: [UIImage] = [UIImage(named: "candies")!,UIImage(named: "cola")!,UIImage(named: "donut")!,UIImage(named: "fries")!,UIImage(named: "hamburger")!,UIImage(named: "hot dog")!,UIImage(named: "ketchup")!,UIImage(named: "salt")!,UIImage(named: "snack")!]
        
        var score: Int = 0
            var pangesture = UIPanGestureRecognizer ()
        
            let upperlimit : UInt32 = 2
            let sizeArray : UInt32 = 3
            var numberArray : Int = 0
        
            override func viewDidLoad() {
                super.viewDidLoad()
                //Chiamata della funzione per l'audio di sottofondo
                audio()
                player.numberOfLoops = -1
                
                //Funzione che blocca l'audio quando clicco un bottone e vado in un'altra view
                back.addTarget(self, action: #selector(ViewController.stop), for: .touchUpInside)
                mood.image = #imageLiteral(resourceName: "Neuter")
                view.addSubview(myView)
                create()
                
            }
        
            override func didReceiveMemoryWarning() {
                super.didReceiveMemoryWarning()
            }
        
        
            func create(){
                
                myView.center = CGPoint(x: 338, y: 160)
                myView.addSubview(foodImage)
                
                numberArray = Int(arc4random_uniform(upperlimit))
                let numberGood = good.count-1
                let numberBad = bad.count-1
                var index: Int
                
                if numberArray == 0
                {
                    index = Int(arc4random_uniform(UInt32(numberGood)))
                    food = good[index]
                    foodImage.image = food
                }
                else if numberArray == 1{
                    index = Int(arc4random_uniform(UInt32(numberBad)))
                    food = bad[index]
                    foodImage.image = food
                    }
                pangesture = UIPanGestureRecognizer.init(target: self, action: #selector(viewDidDragged))
                
                myView.addGestureRecognizer((pangesture))
                
            }
        
        
        
        
            @objc public func viewDidDragged(){
                
                let newpoint = pangesture.location(in: view)
                let newframe = CGRect(origin: CGPoint(x: newpoint.x, y: newpoint.y), size: CGSize (width: myView.frame.size.width, height: myView.frame.size.height)) //Una CGRect è una struct che rappresenta un rettangolo
                myView.frame = newframe  //frame di tipo CGRect
                
                
                if badBasket.frame.contains(myView.frame){ //contiene l'intero frame di imageview
                    
                    if (numberArray == 0 && score > -8){
                        score = score-1
                    }
                    if (numberArray == 1 && score < 8) {
                        score = score+1
                    }
                    if score == 0{
                        mood.image = #imageLiteral(resourceName: "Neuter")
                    } else if score == 2{
                        mood.image = #imageLiteral(resourceName: "Happy +1")
                         YuppieAudio2()
                    } else if score == 4{
                        mood.image = #imageLiteral(resourceName: "Happy +2")
                         YuppieAudio2()
                    } else if score == 6{
                    mood.image = #imageLiteral(resourceName: "Happy +3")
                         YuppieAudio2()
                }
                 else if score == 8{
                    mood.image = #imageLiteral(resourceName: "Super Happy")
                        YuppieAudio2()
                }else if score == -2{
                        mood.image = #imageLiteral(resourceName: "Sad -1")
                        OhOhAudio3()
                    }
                    else if score == -4{
                        mood.image = #imageLiteral(resourceName: "Sad -2")
                        OhOhAudio3()
                    }
                else if score == -6{
                    mood.image = #imageLiteral(resourceName: "Sad -3")
                        OhOhAudio3()
                }
                else if score == -8{
                    mood.image = #imageLiteral(resourceName: "Super Sad")
                        OhOhAudio3()
                }
                
                
                    
                    UIView.transition(with: self.myView, duration:1, options: .transitionCrossDissolve,animations: {}, completion: nil)
                    myView.removeFromSuperview()
                    view.addSubview(myView)
                    create()
                }else if goodBasket.frame.contains(myView.frame){//contiene l'intero frame di imageview
                    
                    
                    if (numberArray == 1 && score > -8){
                        score = score-1
                    }
                    if (numberArray == 0 && score < 8) {
                        score = score+1
                    }
                    
                    
                    if score == 0{
                        mood.image = #imageLiteral(resourceName: "Neuter")
                    } else if score == 2{
                        YuppieAudio2()
                        mood.image = #imageLiteral(resourceName: "Happy +1")
                    } else if score == 4{
                        YuppieAudio2()
                        mood.image = #imageLiteral(resourceName: "Happy +2")
                    } else if score == 6{
                        YuppieAudio2()
                        mood.image = #imageLiteral(resourceName: "Happy +3")
                    }
                    else if score == 8{
                          YuppieAudio2()
                        mood.image = #imageLiteral(resourceName: "Super Happy")
                    }else if score == -2{
                        mood.image = #imageLiteral(resourceName: "Sad -1")
                        OhOhAudio3()
                    }
                    else if score == -4{
                        mood.image = #imageLiteral(resourceName: "Sad -2")
                        OhOhAudio3()
                    }
                    else if score == -6{
                        mood.image = #imageLiteral(resourceName: "Sad -3")
                        OhOhAudio3()
                    }
                    else if score == -8{
                        mood.image = #imageLiteral(resourceName: "Super Sad")
                        OhOhAudio3()
                    }
                    
                    
                    UIView.transition(with: self.myView, duration:1, options: .transitionCrossDissolve,animations: {}, completion: nil)
                    myView.removeFromSuperview()
                    view.addSubview(myView)
                    create()
                }else if newpoint.x > 576 {
                    myView.center = CGPoint(x: newpoint.x, y: newpoint.y)
                }else if newpoint.y > 326{
                    myView.center = CGPoint(x: newpoint.x, y: newpoint.y)
                    
                }
                }
        
        
        //Funzione per l'audio di sottofondo
        @objc func audio(){
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "DragDrop", ofType: "mp3")!))
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
    }

        
        

