//
//  BasketCustomView.swift
//
//  Code generated using QuartzCode 1.63.0 on 19/12/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class BasketCustomView: UIView, CAAnimationDelegate {
	
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
		
		let cestino = CALayer()
		self.layer.addSublayer(cestino)
		layers["cestino"] = cestino
		
		resetLayerProperties(forLayerIdentifiers: nil)
		setupLayerFrames()
	}
	
	func resetLayerProperties(forLayerIdentifiers layerIds: [String]!){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if layerIds == nil || layerIds.contains("cestino"){
			let cestino = layers["cestino"] as! CALayer
			cestino.contents = UIImage(named:"cestino")?.cgImage
		}
		
		CATransaction.commit()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let cestino = layers["cestino"]{
			cestino.frame = CGRect(x: 0.28 * cestino.superlayer!.bounds.width, y: 0.29627 * cestino.superlayer!.bounds.height, width: 0.44 * cestino.superlayer!.bounds.width, height: 0.40746 * cestino.superlayer!.bounds.height)
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addUntitled1Animation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let cestino = layers["cestino"] as! CALayer
		
		////Cestino animation
		let cestinoTransformAnim          = CAKeyframeAnimation(keyPath:"transform.rotation.z")
		cestinoTransformAnim.values       = [0, 
			 5 * CGFloat.pi/180, 
			 -5 * CGFloat.pi/180]
		cestinoTransformAnim.keyTimes     = [0, 0.5, 1]
		cestinoTransformAnim.duration     = 0.3
		cestinoTransformAnim.repeatCount  = Float.infinity
		cestinoTransformAnim.autoreverses = true
		
		let cestinoUntitled1Anim : CAAnimationGroup = QCMethod.group(animations: [cestinoTransformAnim], fillMode:fillMode)
		cestino.add(cestinoUntitled1Anim, forKey:"cestinoUntitled1Anim")
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
		if identifier == "Untitled1"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["cestino"]!.animation(forKey: "cestinoUntitled1Anim"), theLayer:layers["cestino"]!)
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "Untitled1"{
			layers["cestino"]?.removeAnimation(forKey: "cestinoUntitled1Anim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			layer.removeAllAnimations()
		}
	}
	
}
