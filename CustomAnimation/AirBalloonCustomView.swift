//
//  AirBalloonCustomView.swift
//
//  Code generated using QuartzCode 1.63.0 on 19/12/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class AirBalloonCustomView: UIView, CAAnimationDelegate {
	
	var layers = [String: CALayer]()
	var completionBlocks = [CAAnimation: (Bool) -> Void]()
	var updateLayerValueForCompletedAnimation : Bool = false
	
	
	
	//MARK: - Life Cycle
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupProperties()
		setupLayers()
	}
	
	required init?(coder aDecoder: NSCoder)
	{
		super.init(coder: aDecoder)
		setupProperties()
		setupLayers()
	}
	
	override var frame: CGRect{
		didSet{
			setupLayerFrames()
		}
	}
	
	override var bounds: CGRect{
		didSet{
			setupLayerFrames()
		}
	}
	
	func setupProperties(){
		
	}
	
	func setupLayers(){
		self.backgroundColor = UIColor(red:1, green: 1, blue:1, alpha:0)
		
		let mongolfiera = CALayer()
		self.layer.addSublayer(mongolfiera)
		layers["mongolfiera"] = mongolfiera
		
		resetLayerProperties(forLayerIdentifiers: nil)
		setupLayerFrames()
	}
	
	func resetLayerProperties(forLayerIdentifiers layerIds: [String]!){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if layerIds == nil || layerIds.contains("mongolfiera"){
			let mongolfiera = layers["mongolfiera"] as! CALayer
			mongolfiera.contents = UIImage(named:"mongolfiera")?.cgImage
		}
		
		CATransaction.commit()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let mongolfiera = layers["mongolfiera"]{
			mongolfiera.frame = CGRect(x: 0.125 * mongolfiera.superlayer!.bounds.width, y: 0.18732 * mongolfiera.superlayer!.bounds.height, width: 0.75 * mongolfiera.superlayer!.bounds.width, height: 0.79934 * mongolfiera.superlayer!.bounds.height)
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addMovAirBalloonAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let mongolfiera = layers["mongolfiera"] as! CALayer
		
		////Mongolfiera animation
		let mongolfieraPositionAnim          = CAKeyframeAnimation(keyPath:"position")
		mongolfieraPositionAnim.values       = [NSValue(cgPoint: CGPoint(x: 0.5 * mongolfiera.superlayer!.bounds.width, y: 0.587 * mongolfiera.superlayer!.bounds.height)), NSValue(cgPoint: CGPoint(x: 0.5 * mongolfiera.superlayer!.bounds.width, y: 0.40566 * mongolfiera.superlayer!.bounds.height))]
		mongolfieraPositionAnim.keyTimes     = [0, 1]
		mongolfieraPositionAnim.duration     = 1.97
		mongolfieraPositionAnim.repeatCount  = Float.infinity
		mongolfieraPositionAnim.autoreverses = true
		
		let mongolfieraMovAirBalloonAnim : CAAnimationGroup = QCMethod.group(animations: [mongolfieraPositionAnim], fillMode:fillMode)
		mongolfiera.add(mongolfieraMovAirBalloonAnim, forKey:"mongolfieraMovAirBalloonAnim")
	}
	
	//MARK: - Animation Cleanup
	
	func animationDidStop(_ anim: CAAnimation, finished flag: Bool){
		if let completionBlock = completionBlocks[anim]{
			completionBlocks.removeValue(forKey: anim)
			if (flag && updateLayerValueForCompletedAnimation) || anim.value(forKey: "needEndAnim") as! Bool{
				updateLayerValues(forAnimationId: anim.value(forKey: "animId") as! String)
				removeAnimations(forAnimationId: anim.value(forKey: "animId") as! String)
			}
			completionBlock(flag)
		}
	}
	
	func updateLayerValues(forAnimationId identifier: String){
		if identifier == "movAirBalloon"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["mongolfiera"]!.animation(forKey: "mongolfieraMovAirBalloonAnim"), theLayer:layers["mongolfiera"]!)
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "movAirBalloon"{
			layers["mongolfiera"]?.removeAnimation(forKey: "mongolfieraMovAirBalloonAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			layer.removeAllAnimations()
		}
	}
	
}
