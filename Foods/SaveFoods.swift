//
//  ViewController.swift
//  SaveFriendlyFood
//
//  Created by Piero Junior Gaetani on 15/12/17.
//  Copyright © 2017 Piero Junior Gaetani. All rights reserved.
//



var gravity: UIGravityBehavior!
var animator: UIDynamicAnimator!//Animazione associata alla gravità
var collision: UICollisionBehavior!

var gravity2: UIGravityBehavior!
var animator2: UIDynamicAnimator!
var collision2: UICollisionBehavior!

var gravity3: UIGravityBehavior!
var animator3: UIDynamicAnimator!
var collision3: UICollisionBehavior!

var gravity4: UIGravityBehavior!
var animator4: UIDynamicAnimator!
var collision4: UICollisionBehavior!

var gravity5: UIGravityBehavior!
var animator5: UIDynamicAnimator!
var collision5: UICollisionBehavior!

var gravity6: UIGravityBehavior!
var animator6: UIDynamicAnimator!
var collision6: UICollisionBehavior!

var gravity7P: UIGravityBehavior!
var animator7P: UIDynamicAnimator!
var collision7P: UICollisionBehavior!

var gravity8P: UIGravityBehavior!
var animator8P: UIDynamicAnimator!
var collision8P: UICollisionBehavior!

//Inizializzazione per creare una forza di gravità personalizzata
var pushBehavior :UIPushBehavior!
var pushBehaviorII :UIPushBehavior!
enum PushType {
    case Continuous, Istantaneous
    //    Continuos sempre uguale, istantaneo decresce man mano
}
//Variabili necessarie per l'audio
var player: AVAudioPlayer = AVAudioPlayer()
var player2: AVAudioPlayer = AVAudioPlayer()
var player3: AVAudioPlayer = AVAudioPlayer()
let session = AVAudioSession.sharedInstance()

var i = 0

var corX = Int(arc4random_uniform(700))
var corX2 = Int(arc4random_uniform(700))
var corY = Int(arc4random_uniform(15))
var numberRandom = 0
var goodFoods: [UIImage] = [UIImage(named: "apple")!,UIImage(named: "banana")!,UIImage(named: "broccoli")!,UIImage(named: "carrot")!,UIImage(named: "cereals")!,UIImage(named: "cheese")!,UIImage(named: "cherries")!,UIImage(named: "chicken thigh")!,UIImage(named: "eggplant")!,UIImage(named: "eggs")!,UIImage(named: "fish")!,UIImage(named: "grapes")!,UIImage(named: "kiwi")!,UIImage(named: "lemon")!,UIImage(named: "milk")!,UIImage(named: "orange")!,UIImage(named: "peach")!,UIImage(named: "pear")!,UIImage(named: "peas")!,UIImage(named: "pineapple")!,UIImage(named: "potato")!,UIImage(named: "pumpkin")!,UIImage(named: "salad")!,UIImage(named: "strawberry")!,UIImage(named: "tomato")!,UIImage(named: "water")!,UIImage(named: "watermelon")!]

var junkFoods: [UIImage] = [UIImage(named: "candies")!,UIImage(named: "cola")!,UIImage(named: "donut")!,UIImage(named: "fries")!,UIImage(named: "hamburger")!,UIImage(named: "hot dog")!,UIImage(named: "ketchup")!,UIImage(named: "salt")!,UIImage(named: "snack")!]
//700point-AsseX-è il punto massimo di inserimento per una immagine da 75x75
//Serie di inizializzazioni dei pulsanti cibi
var square = UIButton(frame: CGRect(x: corX, y: corY, width: 75, height: 75))
var square2 = UIButton(frame: CGRect(x: corX2, y: 10, width: 75, height: 75))
var square3 = UIButton(frame: CGRect(x: corX, y: corY, width: 75, height: 75))
var square4 = UIButton(frame: CGRect(x: corX, y: 10, width: 75, height: 75))
var square5 = UIButton(frame: CGRect(x: corX, y: corY, width: 75, height: 75))
var square6 = UIButton(frame: CGRect(x: corX, y: 10, width: 75, height: 75))
var square7P = UIButton(frame: CGRect(x: corX, y: corY, width: 75, height: 75))
var square8P = UIButton(frame: CGRect(x: corX, y: 10, width: 75, height: 75))
//Array di pulsanti già inizializzati
var foodButton: [UIButton] = [square , square2 , square3 , square4 , square5 , square6 ]
let barrier = UIView(frame: CGRect(x: 0, y: 360, width: 750, height: 15))




import UIKit
import MediaPlayer
import Foundation

class SaveFoods: UIViewController {

    @IBOutlet weak var mood: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    
    var globalCounter = 0
    var score = 0
    
    @IBAction func backBackButton(_ sender: UIButton) {
        score = 0
        globalCounter = 0
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        score = 0
        globalCounter = 0
        
        managementAvatar()
        
        audio()
//   //Loop dopo 76 secondi
//   Timer.scheduledTimer(timeInterval: 90, target: self, selector:
//   #selector(SaveFoods.audio), userInfo: nil, repeats: true)
     
//        //Funzione che blocca l'audio quando clicco un bottone e vado in un'altra view
//        backButton.addTarget(self, action: #selector(SaveFoods.stop), for: .touchUpInside)
        iCounter()
        iCounterII()
        iCounterIII()
        iCounterIV()
        iCounterV()
        iCounterVI()
        
        iCounterVII()
        iCounterVIII()
        
        square.addTarget(self, action: #selector(SaveFoods.goodFoodsButton(_:)), for:.touchUpInside)
        square2.addTarget(self, action: #selector(SaveFoods.goodFoodsButton(_:)), for:.touchUpInside)
        square3.addTarget(self, action: #selector(SaveFoods.goodFoodsButton(_:)), for:.touchUpInside)
        square4.addTarget(self, action: #selector(SaveFoods.goodFoodsButton(_:)), for:.touchUpInside)
        square5.addTarget(self, action: #selector(SaveFoods.junkFoodsButton(_:)), for:.touchUpInside)
        square6.addTarget(self, action: #selector(SaveFoods.junkFoodsButton(_:)), for:.touchUpInside)
        square7P.addTarget(self, action: #selector(SaveFoods.goodFoodsButton(_:)), for:.touchUpInside)
        square8P.addTarget(self, action: #selector(SaveFoods.junkFoodsButton(_:)), for:.touchUpInside)
        barrier.backgroundColor = UIColor.green
        view.addSubview(barrier)
        
        
    }
    
    
    
    override func viewWillDisappear(_ animated: Bool) {
        player.pause()
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //_______________________Func dedicata alla personalizzazione della gravità_____________________//
    func add_push(objects: [UIView], type: PushType, power : CGFloat) {
        switch type {
        case .Continuous:
            pushBehavior = UIPushBehavior(items: objects, mode: UIPushBehaviorMode.continuous)
        case .Istantaneous:
            pushBehavior = UIPushBehavior(items: objects, mode: UIPushBehaviorMode.instantaneous)
        }
        pushBehavior.setAngle(CGFloat(Double.pi / 2),  magnitude: power)
        animator.addBehavior(pushBehavior)
    }
    //_____________________________END FUNC Gravità Personalizzata___________________________//
    
    
    
    
    
    //____1____Funzione di creazione del cibo con coordinate random sull'asseX_______//
    func createRandomFoodOnX(sender : UIButton) {
        corX = Int(arc4random_uniform(600))
        corY = Int(arc4random_uniform(35))
        numberRandom = Int(arc4random_uniform(27))
        sender.center = CGPoint (x: corX, y: corY)
        sender.setImage(goodFoods[numberRandom], for : .normal)
        view.addSubview(sender)
        print ("stamp")
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [sender])
        add_push(objects: [sender], type: PushType.Continuous, power: 0.15)
        //Tutto del Collision.. deve essere integrato nella funzione
        collision = UICollisionBehavior(items: [sender])
        collision.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: barrier.frame))
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        
//        delayWithSeconds(6){
//            self.createRandomFoodOnX(sender: sender)
//        }
    }
    //____2____Funzione di creazione del cibo con coordinate random sull'asseX_______//
    
    func createRandomFoodOnXII(sender : UIButton) {
        corX2 = Int(arc4random_uniform(600))
        corY = Int(arc4random_uniform(10))
        numberRandom = Int(arc4random_uniform(27))
        sender.center = CGPoint (x: corX2, y: corY)
        sender.setImage(goodFoods[numberRandom], for : .normal)
        view.addSubview(sender)
        
        animator2 = UIDynamicAnimator(referenceView: view)
        gravity2 = UIGravityBehavior(items: [sender])
        add_push(objects: [sender], type: PushType.Continuous, power: 0.20)
        //Tutto del Collision.. deve essere integrato nella funzione
        collision2 = UICollisionBehavior(items: [sender])
        collision2.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: barrier.frame))
        collision2.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision2)
        
//        delayWithSeconds(6){
//            self.createRandomFoodOnXII(sender: sender)
//        }
        
        
    }
    
    
    //____3____Funzione di creazione del cibo con coordinate random sull'asseX_______//
    func createRandomFoodOnXIII(sender : UIButton) {
        corX = Int(arc4random_uniform(600))
        corY = Int(arc4random_uniform(15))
        numberRandom = Int(arc4random_uniform(27))
        sender.center = CGPoint (x: corX, y: corY)
        sender.setImage(goodFoods[numberRandom], for : .normal)
        self.view.addSubview.self(sender)
        
        animator3 = UIDynamicAnimator(referenceView: view)
        gravity3 = UIGravityBehavior(items: [sender])
        add_push(objects: [sender], type: PushType.Continuous, power: 0.35)
        //Tutto del Collision.. deve essere integrato nella funzione
        collision = UICollisionBehavior(items: [sender])
        collision.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: barrier.frame))
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        
//        delayWithSeconds(6){
//            self.createRandomFoodOnXIII(sender: sender)
//        }
    }
    //____4____Funzione di creazione del cibo con coordinate random sull'asseX_______//
    
    func createRandomFoodOnXIV(sender : UIButton) {
        corX = Int(arc4random_uniform(600))
        corY = Int(arc4random_uniform(125))
        numberRandom = Int(arc4random_uniform(27))
        sender.center = CGPoint (x: corX, y: corY)
        sender.setImage(goodFoods[numberRandom], for : .normal)
        self.view.addSubview.self(sender)
        
        animator4 = UIDynamicAnimator(referenceView: view)
        gravity4 = UIGravityBehavior(items: [sender])
        add_push(objects: [sender], type: PushType.Continuous, power: 0.25)
        //Tutto del Collision.. deve essere integrato nella funzione
        collision = UICollisionBehavior(items: [sender])
        collision.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: barrier.frame))
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        
//        delayWithSeconds(6){
//            self.createRandomFoodOnXIV(sender: sender)
//        }
    }
    
    //____5____Funzione di creazione del cibo con coordinate random sull'asseX_______//
    func createRandomFoodOnXV(sender : UIButton) {
        corX = Int(arc4random_uniform(600))
        corY = Int(arc4random_uniform(25))
        numberRandom = Int(arc4random_uniform(9))
        sender.center = CGPoint (x: corX, y: corY)
        sender.setImage(junkFoods[numberRandom], for : .normal)
        self.view.addSubview.self(sender)
        
        animator5 = UIDynamicAnimator(referenceView: view)
        gravity5 = UIGravityBehavior(items: [sender])
        add_push(objects: [sender], type: PushType.Continuous, power: 0.25)
        //Tutto del Collision.. deve essere integrato nella funzione
        collision = UICollisionBehavior(items: [sender])
        collision.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: barrier.frame))
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        
//        delayWithSeconds(6){
//            self.createRandomFoodOnXV(sender: sender)
//        }
    }
    //____6____Funzione di creazione del cibo con coordinate random sull'asseX_______//
    
    func createRandomFoodOnXVI(sender : UIButton) {
        corX = Int(arc4random_uniform(600))
        corY = Int(arc4random_uniform(65))
        numberRandom = Int(arc4random_uniform(9))
        sender.center = CGPoint (x: corX, y: corY)
        sender.setImage(junkFoods[numberRandom], for : .normal)
        self.view.addSubview.self(sender)
        
        animator6 = UIDynamicAnimator(referenceView: view)
        gravity6 = UIGravityBehavior(items: [sender])
        add_push(objects: [sender], type: PushType.Continuous, power: 0.15)
        //Tutto del Collision.. deve essere integrato nella funzione
        collision = UICollisionBehavior(items: [sender])
        collision.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: barrier.frame))
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        
        print (score)
        
//        delayWithSeconds(6){
//            self.createRandomFoodOnXVI(sender: sender)
//        }
    }
    
    
    //____7P____Funzione di creazione del cibo con coordinate random sull'asseX_______//
    
    func createRandomFoodOnXVII(sender : UIButton) {
//        delayWithSeconds(3){
            corX = Int(arc4random_uniform(600))
            corY = Int(arc4random_uniform(125))
            numberRandom = Int(arc4random_uniform(27))
            sender.center = CGPoint (x: corX, y: corY)
            sender.setImage(goodFoods[numberRandom], for : .normal)
            self.view.addSubview.self(sender)
            
            animator7P = UIDynamicAnimator(referenceView: self.view)
            gravity7P = UIGravityBehavior(items: [sender])
            self.add_push(objects: [sender], type: PushType.Continuous, power: 0.55)
            //Tutto del Collision.. deve essere integrato nella funzione
            collision = UICollisionBehavior(items: [sender])
            collision.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: barrier.frame))
            collision.translatesReferenceBoundsIntoBoundary = true
            animator.addBehavior(collision)
            
//            self.delayWithSeconds(6){
//                self.createRandomFoodOnXVII(sender: sender)
////            }
//        }
    }
    
    
    //____8P____Funzione di creazione del cibo con coordinate random sull'asseX_______//
    
    func createRandomFoodOnXVIII(sender : UIButton) {
//        delayWithSeconds(3){
            corX = Int(arc4random_uniform(600))
            corY = Int(arc4random_uniform(125))
            numberRandom = Int(arc4random_uniform(9))
            sender.center = CGPoint (x: corX, y: corY)
            sender.setImage(junkFoods[numberRandom], for : .normal)
            self.view.addSubview.self(sender)
            
            animator8P = UIDynamicAnimator(referenceView: self.view)
            gravity8P = UIGravityBehavior(items: [sender])
            self.add_push(objects: [sender], type: PushType.Continuous, power: 0.45)
            //Tutto del Collision.. deve essere integrato nella funzione
            collision = UICollisionBehavior(items: [sender])
            collision.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: barrier.frame))
            collision.translatesReferenceBoundsIntoBoundary = true
            animator.addBehavior(collision)
            
//            self.delayWithSeconds(6){
//                self.createRandomFoodOnXVIII(sender: sender)
//            }
//        }
    }
    
    //_________________________Funzione di cancellazione del pulsante_________________________//
    func deleteFood(sender : UIButton) {
        sender.removeFromSuperview()
    }
    
    //_________________________Necessaria per l'utilizzo delay_________________________//
//    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
//        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
//            completion()
//        }
//
//    }
    
    //____1_____Funzione di semplice gestione del count i per il giusto utilizo dei pulsanti in array_________//
    @objc func  iCounter() {
        
        createRandomFoodOnX(sender: square)
    }
    
    //____2_____Funzione di semplice gestione del count i per il giusto utilizo dei pulsanti in array_________//
    @objc func  iCounterII() {
        
        createRandomFoodOnXII(sender: square2)
    }
    
    //____3_____Funzione di semplice gestione del count i per il giusto utilizo dei pulsanti in array_________//
    @objc func  iCounterIII() {
        
        createRandomFoodOnXIII(sender: square3)
    }
    
    //____4_____Funzione di semplice gestione del count i per il giusto utilizo dei pulsanti in array_________//
    @objc func  iCounterIV() {
        
        createRandomFoodOnXIV(sender: square4)
    }
    //____5_____Funzione di semplice gestione del count i per il giusto utilizo dei pulsanti in array_________//
    @objc func  iCounterV() {
        
        createRandomFoodOnXV(sender: square5)
    }
    
    //____6_____Funzione di semplice gestione del count i per il giusto utilizo dei pulsanti in array_________//
    @objc func  iCounterVI() {
        
        createRandomFoodOnXVI(sender: square6)
    }
    
    //____7P_____Funzione di semplice gestione del count i per il giusto utilizo dei pulsanti in array_________//
    @objc func  iCounterVII() {
        
        createRandomFoodOnXVII(sender: square7P)
    }
    
    //____8P_____Funzione di semplice gestione del count i per il giusto utilizo dei pulsanti in array_________//
    @objc func  iCounterVIII() {
        
        createRandomFoodOnXVIII(sender: square8P)
    }
    
    
    //________Funzione pulsanti buoni________//
    
    @objc func goodFoodsButton(_ sender : UIButton) {
        sender.removeFromSuperview()
        
        if(globalCounter<4){
            globalCounter=globalCounter+1
        }
        if(globalCounter>=4){
            restartAgain()
            globalCounter=0
            
        }
        
        if(score < 20 ){
            score = score+1
        }
        YuppieAudio2()
        managementAvatar()
    }
    
    //________Funzione pulsanti cattivi________//
    


    @objc func junkFoodsButton(_ sender : UIButton) {
        sender.removeFromSuperview()
        
        if(globalCounter<4){
            globalCounter=globalCounter+1
        }
        if(globalCounter>=4){
            restartAgain()
            globalCounter=0
            
        }
        
        if(score > -11 ){
            score = score-1
        }
        managementAvatar()
        OhOhAudio3()
        
    }
    

    
    //_____Funzione per l'audio di sottofondo_____//
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
    
    
    func managementAvatar() {
        if (score >= -3 && score < 3) {
            mood.image = #imageLiteral(resourceName: "Neuter")
        } else if score >= 3 && score < 6{
            mood.image = #imageLiteral(resourceName: "Happy +1")
        
        } else if (score >= 6 && score < 10) {
            mood.image = #imageLiteral(resourceName: "Happy +2")
        } else if (score >= 10 && score < 13){
            mood.image = #imageLiteral(resourceName: "Happy +3")
        }
        else if (score >= 13 && score < 20){
            mood.image = #imageLiteral(resourceName: "Super Happy")
        }else if (score < -3 && score <= -5){
            mood.image = #imageLiteral(resourceName: "Sad -1")
        }
        else if (score < -5 && score <= -7){
            mood.image = #imageLiteral(resourceName: "Sad -2")
        }
        else if (score < -7 && score <= -9){
            mood.image = #imageLiteral(resourceName: "Sad -3")
        }
        else if (score < -9 && score < -11){
            mood.image = #imageLiteral(resourceName: "Super Sad")
        }
    }
    
    
//    func managementFunction(sender : UIButton)  {
//        createRandomFoodOnX(sender: sender)
//        delayWithSeconds(7) {
//            self.deleteFood(sender: sender)
//            self.iCounter()
//            self.delayWithSeconds(0.5) {
//                self.managementFunction(sender: sender)
//            }
//        }
//    }
    
//    func managementFunction2(sender : UIButton)  {
//        createRandomFoodOnX(sender: sender)
//        delayWithSeconds(7) {
//            self.deleteFood(sender: sender)
//            self.iCounter()
//            self.delayWithSeconds(0.5) {
//                self.managementFunction2(sender: sender)
//            }
//        }
//
//
//    }
    
    
    func restartAgain(){
        iCounter()
        iCounterII()
        iCounterIII()
        iCounterIV()
        iCounterV()
        iCounterVI()
        
        iCounterVII()
        iCounterVIII()
    }
  
    
    
}







/*scheduleTimer(0.1,,,#selector:selector(handler))
 
 
 @objc func handler(){
 */




