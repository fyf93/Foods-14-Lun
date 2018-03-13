//
//  hotdogCustomView.swift
//
//  Code generated using QuartzCode 1.63.0 on 18/12/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class hotdogCustomView: UIView, CAAnimationDelegate {
	
	var layers = [String: CALayer]()
	var completionBlocks = [CAAnimation: (Bool) -> Void]()
	var updateLayerValueForCompletedAnimation : Bool = false
	
	var color : UIColor!
	
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
		self.color = UIColor(red:0.474, green: 0, blue:0.128, alpha:1)
	}
	
	func setupLayers(){
		self.backgroundColor = UIColor(red:1, green: 1, blue:1, alpha:0)
		
		let Hotdog = CALayer()
		self.layer.addSublayer(Hotdog)
		layers["Hotdog"] = Hotdog
		
		let boccahotdog = CAShapeLayer()
		self.layer.addSublayer(boccahotdog)
		layers["boccahotdog"] = boccahotdog
		
		resetLayerProperties(forLayerIdentifiers: nil)
		setupLayerFrames()
	}
	
	func resetLayerProperties(forLayerIdentifiers layerIds: [String]!){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if layerIds == nil || layerIds.contains("Hotdog"){
			let Hotdog = layers["Hotdog"] as! CALayer
			Hotdog.contents = UIImage(named:"Hotdog")?.cgImage
		}
		if layerIds == nil || layerIds.contains("boccahotdog"){
			let boccahotdog = layers["boccahotdog"] as! CAShapeLayer
			boccahotdog.fillColor   = self.color.cgColor
			boccahotdog.strokeColor = self.color.cgColor
		}
		
		CATransaction.commit()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let Hotdog = layers["Hotdog"]{
			Hotdog.frame = CGRect(x: 0.04 * Hotdog.superlayer!.bounds.width, y: 0.02548 * Hotdog.superlayer!.bounds.height, width: 0.94 * Hotdog.superlayer!.bounds.width, height: 0.96452 * Hotdog.superlayer!.bounds.height)
		}
		
		if let boccahotdog = layers["boccahotdog"] as? CAShapeLayer{
			boccahotdog.frame = CGRect(x: 0.70785 * boccahotdog.superlayer!.bounds.width, y: 0.27538 * boccahotdog.superlayer!.bounds.height, width: 0.04576 * boccahotdog.superlayer!.bounds.width, height: 0.01 * boccahotdog.superlayer!.bounds.height)
			boccahotdog.path  = boccahotdogPath(bounds: layers["boccahotdog"]!.bounds).cgPath
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addMovimentoboccahotdogAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let boccahotdog = layers["boccahotdog"] as! CAShapeLayer
		
		////Boccahotdog animation
		let boccahotdogTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		boccahotdogTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, 2, 1))]
		boccahotdogTransformAnim.keyTimes     = [0, 1]
		boccahotdogTransformAnim.duration     = 0.403
		boccahotdogTransformAnim.repeatCount  = Float.infinity
		boccahotdogTransformAnim.autoreverses = true
		
		let boccahotdogMovimentoboccahotdogAnim : CAAnimationGroup = QCMethod.group(animations: [boccahotdogTransformAnim], fillMode:fillMode)
		boccahotdog.add(boccahotdogMovimentoboccahotdogAnim, forKey:"boccahotdogMovimentoboccahotdogAnim")
	}
	
	func addMovimentoHotdogAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let Hotdog = layers["Hotdog"] as! CALayer
		
		////Hotdog animation
		let HotdogTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		HotdogTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * Hotdog.superlayer!.bounds.height, 0))]
		HotdogTransformAnim.keyTimes     = [0, 1]
		HotdogTransformAnim.duration     = 0.5
		HotdogTransformAnim.repeatCount  = Float.infinity
		HotdogTransformAnim.autoreverses = true
		
		let HotdogMovimentoHotdogAnim : CAAnimationGroup = QCMethod.group(animations: [HotdogTransformAnim], fillMode:fillMode)
		Hotdog.add(HotdogMovimentoHotdogAnim, forKey:"HotdogMovimentoHotdogAnim")
		
		let boccahotdog = layers["boccahotdog"] as! CAShapeLayer
		
		////Boccahotdog animation
		let boccahotdogTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		boccahotdogTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * boccahotdog.superlayer!.bounds.height, 0))]
		boccahotdogTransformAnim.keyTimes     = [0, 1]
		boccahotdogTransformAnim.duration     = 0.5
		boccahotdogTransformAnim.repeatCount  = Float.infinity
		boccahotdogTransformAnim.autoreverses = true
		
		let boccahotdogMovimentoHotdogAnim : CAAnimationGroup = QCMethod.group(animations: [boccahotdogTransformAnim], fillMode:fillMode)
		boccahotdog.add(boccahotdogMovimentoHotdogAnim, forKey:"boccahotdogMovimentoHotdogAnim")
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
		if identifier == "movimentoboccahotdog"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccahotdog"]!.animation(forKey: "boccahotdogMovimentoboccahotdogAnim"), theLayer:layers["boccahotdog"]!)
		}
		else if identifier == "movimentoHotdog"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Hotdog"]!.animation(forKey: "HotdogMovimentoHotdogAnim"), theLayer:layers["Hotdog"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccahotdog"]!.animation(forKey: "boccahotdogMovimentoHotdogAnim"), theLayer:layers["boccahotdog"]!)
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "movimentoboccahotdog"{
			layers["boccahotdog"]?.removeAnimation(forKey: "boccahotdogMovimentoboccahotdogAnim")
		}
		else if identifier == "movimentoHotdog"{
			layers["Hotdog"]?.removeAnimation(forKey: "HotdogMovimentoHotdogAnim")
			layers["boccahotdog"]?.removeAnimation(forKey: "boccahotdogMovimentoHotdogAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			layer.removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func boccahotdogPath(bounds: CGRect) -> UIBezierPath{
		let boccahotdogPath = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		boccahotdogPath.move(to: CGPoint(x:minX + 0.48787 * w, y: minY))
		boccahotdogPath.addCurve(to: CGPoint(x:minX, y: minY + 0.93764 * h), controlPoint1:CGPoint(x:minX + 0.19975 * w, y: minY), controlPoint2:CGPoint(x:minX, y: minY + 0.64777 * h))
		boccahotdogPath.addCurve(to: CGPoint(x:minX + 0.47908 * w, y: minY + 0.41278 * h), controlPoint1:CGPoint(x:minX, y: minY + 1.22751 * h), controlPoint2:CGPoint(x:minX + 0.19097 * w, y: minY + 0.41278 * h))
		boccahotdogPath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.93764 * h), controlPoint1:CGPoint(x:minX + 0.7672 * w, y: minY + 0.41278 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 1.22751 * h))
		boccahotdogPath.addCurve(to: CGPoint(x:minX + 0.48787 * w, y: minY), controlPoint1:CGPoint(x:minX + w, y: minY + 0.64777 * h), controlPoint2:CGPoint(x:minX + 0.77599 * w, y: minY))
		
		return boccahotdogPath
	}
	
	
}
