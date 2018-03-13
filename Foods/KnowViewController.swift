//
//  KnowViewController.swift
//  Foods
//
//  Created by Anna Grazia Cervo on 18/12/17.
//  Copyright © 2017 Anna Grazia Cervo. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer
class KnowViewController: UIViewController {

    var indice: Int = 0
    var upperlimit = 3
    @IBOutlet weak var appleView: appleCustomView!
    
    @IBOutlet weak var WaterMelonView: cocomeroCustomView!
    @IBOutlet weak var snackView: MerendinaCustomView!
    @IBOutlet weak var CerealsView: CerealsCustomView!
    @IBOutlet weak var CarotView: CarotaCustomView!
    @IBOutlet weak var ChipsView: PatatineCustomView!
    @IBOutlet weak var ChickenView: polloCustomView!
    @IBOutlet weak var HotdogView: hotdogCustomView!
    @IBOutlet weak var ColaView: colaCustomView!
    @IBOutlet weak var CheeseView: formaggioCustomView!
    @IBOutlet weak var CandiesView: CaramelleCustomView!
    
    
    @IBAction func AppleButton(_ sender: UIButton) {
    removeMove()
        appleView.addMovimentoboccamelaAnimation()
        
        
        
        indice = Int(arc4random_uniform(UInt32(upperlimit)))
        
        if indice == 0{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Mela1", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(2.5){
                self.activeMove()
            }
        }
        if indice == 1 {
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Mela_2", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(5){
                self.activeMove()
            }
        }
        if indice == 2{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Mela_3", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(7){
                self.activeMove()
            }
        }
        
    }
    
    @IBAction func WaterMelonButton(_ sender: UIButton) {
        
       removeMove()
        WaterMelonView.addMovimentoboccacocomeroAnimation()
        
        indice = Int(arc4random_uniform(UInt32(upperlimit)))
        
        if indice == 0{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Anguria_1", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(2.5){
                self.activeMove()
            }
        }
        if indice == 1 {
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Anguria_2", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(5){
                self.activeMove()
            }
        }
        if indice == 2{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Anguria_3", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(7){
                self.activeMove()
            }
        }
        //parla
        //delay dura quanto la parlata
        //activeMove
        
    }
    
    @IBAction func ColaButton(_ sender: UIButton) {
        removeMove()
        ColaView.addMovimentoboccacolaAnimation()
        
        indice = Int(arc4random_uniform(UInt32(upperlimit)))
        
        if indice == 0{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Cola_1", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(2.5){
                self.activeMove()
            }
        }
        if indice == 1 {
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Cola_2", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(5){
                self.activeMove()
            }
        }
        if indice == 2{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Cola_3", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(7){
                self.activeMove()
            }
        }
        //parla
        //delay dura quanto la parlata
        //activeMove
    }
    
    @IBAction func CheeseButton(_ sender: UIButton) {
        removeMove()
        CheeseView.addMovimentoboccaformaggioAnimation()
        
        indice = Int(arc4random_uniform(UInt32(upperlimit)))
        
        if indice == 0{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Cheese_1", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(5){
                self.activeMove()
            }
        }
        if indice == 1 {
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Cheese_2", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(3){
                self.activeMove()
            }
        }
        if indice == 2{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Cheese_3", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(7){
                self.activeMove()
            }
        }
    }
    
    @IBAction func HotDogButton(_ sender: UIButton) {
        removeMove()
        HotdogView.addMovimentoboccahotdogAnimation()
        
        indice = Int(arc4random_uniform(UInt32(upperlimit)))
        
        if indice == 0{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Hotdog_1", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(2.5){
                self.activeMove()
            }
        }
        if indice == 1 {
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Hotdog_2", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(5){
                self.activeMove()
            }
        }
        if indice == 2{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Hotdog_3", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(7){
                self.activeMove()
            }
        }
        
        
    }
    
    
    @IBAction func SnackButton(_ sender: UIButton) {
        removeMove()
        snackView.addMovimentomerendinaAnimation()
        
        indice = Int(arc4random_uniform(UInt32(upperlimit)))
        
        if indice == 0{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Merendina_1", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(2.5){
                self.activeMove()
            }
        }
        if indice == 1 {
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Merendina_2", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(5){
                self.activeMove()
            }
        }
        if indice == 2{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Merendina_3", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(7){
                self.activeMove()
            }
        }
    }
    
    
    @IBAction func CandiesButton(_ sender: UIButton) {
        removeMove()
        CandiesView.addMovimentoCaramelleBoccaAnimation()
        
        indice = Int(arc4random_uniform(UInt32(upperlimit)))
        
        if indice == 0{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Cramelle_1", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(2.5){
                self.activeMove()
            }
        }
        if indice == 1 {
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Caramelle_2", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(5){
                self.activeMove()
            }
        }
        if indice == 2{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Caramelle3", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(7){
                self.activeMove()
            }
        }
    }
    
    @IBAction func ChickenButton(_ sender: UIButton) {
        removeMove()
        ChickenView.addMovimentoboccapolloAnimation()
        
        indice = Int(arc4random_uniform(UInt32(upperlimit)))
        
        if indice == 0{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Pollo_1", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(2.5){
                self.activeMove()
            }
        }
        if indice == 1 {
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Pollo_2", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(5){
                self.activeMove()
            }
        }
        if indice == 2{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Pollo_3", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(7){
                self.activeMove()
            }
        }
    }
    
    
    @IBAction func ChipsButton(_ sender: UIButton) {
        removeMove()
        ChipsView.addMovimentoBoccapatatineAnimation()
        
        indice = Int(arc4random_uniform(UInt32(upperlimit)))
        
        if indice == 0{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Chips_1", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(2.5){
                self.activeMove()
            }
        }
        if indice == 1 {
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Chips_2", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(5){
                self.activeMove()
            }
        }
        if indice == 2{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Chips_3", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(7){
                self.activeMove()
            }
        }
    }
    
    
    @IBAction func CarotButton(_ sender: UIButton) {
        removeMove()
        CarotView.addMovimentoboccacarotaAnimation()
        
        indice = Int(arc4random_uniform(UInt32(upperlimit)))
        
        if indice == 0{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Carrot_1", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(2.5){
                self.activeMove()
            }
        }
        if indice == 1 {
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Carrot_2", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(5){
                self.activeMove()
            }
        }
        if indice == 2{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Carrot_3", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(7){
                self.activeMove()
            }
        }
    }
    
    @IBAction func CerealsButton(_ sender: UIButton) {
        removeMove()
        CerealsView.addMovimentoBoccaCerealsAnimation()
        
        indice = Int(arc4random_uniform(UInt32(upperlimit)))
        
        if indice == 0{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Cereals_1", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(2.5){
                self.activeMove()
            }
        }
        if indice == 1 {
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Cereals_2", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(5){
                self.activeMove()
            }
        }
        if indice == 2{
            do
            {
                player = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "Cereals_3", ofType: "mp3")!))
            }
            catch { // process error
            }
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch { // process error
            }
            player.play()
            delayWithSeconds(7){
                self.activeMove()
            }
        }
    }
    
    
    override func viewDidLoad() {
        activeMove()
        super.viewDidLoad()
        appleView.addMovimentomelaAnimation()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func activeMove() {
        appleView.addMovimentomelaAnimation()
        WaterMelonView.addMovimentococomeroAnimation()
        snackView.addMovimentoMerendinaAnimation()
        CandiesView.addMovimentoCaramelleAnimation()
        CerealsView.addMovimentoCerealsAnimation()
        CarotView.addMovimentocarotaAnimation()
        ChipsView.addMovimentoPatatineAnimation()
        ChickenView.addMovimentoPolloAnimation()
        HotdogView.addMovimentoHotdogAnimation()
        ColaView.addMovimentoColaAnimation()
        CheeseView.addMovimento()
        
    }
    func removeMove(){
        appleView.removeAllAnimations()
        WaterMelonView.removeAllAnimations()
        snackView.removeAllAnimations()
        CandiesView.removeAllAnimations()
        CerealsView.removeAllAnimations()
        CarotView.removeAllAnimations()
        ChipsView.removeAllAnimations()
        ChickenView.removeAllAnimations()
        HotdogView.removeAllAnimations()
        ColaView.removeAllAnimations()
        CheeseView.removeAllAnimations()
    }
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
       }
        
    }

}
