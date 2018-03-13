//
//  CerealsCustomView.swift
//
//  Code generated using QuartzCode 1.63.0 on 18/12/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class CerealsCustomView: UIView, CAAnimationDelegate {
	
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
		self.color = UIColor(red:0.657, green: 0.589, blue:0, alpha:1)
	}
	
	func setupLayers(){
		self.backgroundColor = UIColor(red:1, green: 1, blue:1, alpha:0)
		
		let cereals = CALayer()
		self.layer.addSublayer(cereals)
		layers["cereals"] = cereals
		
		let boccacereal = CAShapeLayer()
		self.layer.addSublayer(boccacereal)
		layers["boccacereal"] = boccacereal
		
		let boccaCereal2 = CAShapeLayer()
		self.layer.addSublayer(boccaCereal2)
		layers["boccaCereal2"] = boccaCereal2
		
		let boccaCereal3 = CAShapeLayer()
		self.layer.addSublayer(boccaCereal3)
		layers["boccaCereal3"] = boccaCereal3
		
		let boccaCereal4 = CAShapeLayer()
		self.layer.addSublayer(boccaCereal4)
		layers["boccaCereal4"] = boccaCereal4
		
		resetLayerProperties(forLayerIdentifiers: nil)
		setupLayerFrames()
	}
	
	func resetLayerProperties(forLayerIdentifiers layerIds: [String]!){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if layerIds == nil || layerIds.contains("cereals"){
			let cereals = layers["cereals"] as! CALayer
			cereals.contents = UIImage(named:"cereals")?.cgImage
		}
		if layerIds == nil || layerIds.contains("boccacereal"){
			let boccacereal = layers["boccacereal"] as! CAShapeLayer
			boccacereal.anchorPoint = CGPoint(x: 1, y: 1)
			boccacereal.frame       = CGRect(x: 0.32 * boccacereal.superlayer!.bounds.width, y: 0.55 * boccacereal.superlayer!.bounds.height, width: 0.02 * boccacereal.superlayer!.bounds.width, height: 0.01 * boccacereal.superlayer!.bounds.height)
			boccacereal.fillColor   = self.color.cgColor
			boccacereal.strokeColor = UIColor(red:0.404, green: 0.404, blue:0.404, alpha:1).cgColor
			boccacereal.lineWidth   = 0
		}
		if layerIds == nil || layerIds.contains("boccaCereal2"){
			let boccaCereal2 = layers["boccaCereal2"] as! CAShapeLayer
			boccaCereal2.anchorPoint = CGPoint(x: 1, y: 1)
			boccaCereal2.frame       = CGRect(x: 0.64 * boccaCereal2.superlayer!.bounds.width, y: 0.62 * boccaCereal2.superlayer!.bounds.height, width: 0.02 * boccaCereal2.superlayer!.bounds.width, height: 0.01 * boccaCereal2.superlayer!.bounds.height)
			boccaCereal2.fillColor   = self.color.cgColor
			boccaCereal2.strokeColor = UIColor(red:0.404, green: 0.404, blue:0.404, alpha:1).cgColor
			boccaCereal2.lineWidth   = 0
		}
		if layerIds == nil || layerIds.contains("boccaCereal3"){
			let boccaCereal3 = layers["boccaCereal3"] as! CAShapeLayer
			boccaCereal3.anchorPoint = CGPoint(x: 1, y: 1)
			boccaCereal3.frame       = CGRect(x: 0.74 * boccaCereal3.superlayer!.bounds.width, y: 0.66 * boccaCereal3.superlayer!.bounds.height, width: 0.02 * boccaCereal3.superlayer!.bounds.width, height: 0.01 * boccaCereal3.superlayer!.bounds.height)
			boccaCereal3.fillColor   = self.color.cgColor
			boccaCereal3.strokeColor = UIColor(red:0.404, green: 0.404, blue:0.404, alpha:1).cgColor
			boccaCereal3.lineWidth   = 0
		}
		if layerIds == nil || layerIds.contains("boccaCereal4"){
			let boccaCereal4 = layers["boccaCereal4"] as! CAShapeLayer
			boccaCereal4.anchorPoint = CGPoint(x: 1, y: 1)
			boccaCereal4.frame       = CGRect(x: 0.6 * boccaCereal4.superlayer!.bounds.width, y: 0.74 * boccaCereal4.superlayer!.bounds.height, width: 0.02 * boccaCereal4.superlayer!.bounds.width, height: 0.00748 * boccaCereal4.superlayer!.bounds.height)
			boccaCereal4.fillColor   = self.color.cgColor
			boccaCereal4.strokeColor = UIColor(red:0.404, green: 0.404, blue:0.404, alpha:1).cgColor
			boccaCereal4.lineWidth   = 0
		}
		
		CATransaction.commit()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let cereals = layers["cereals"]{
			cereals.frame = CGRect(x: 0.05 * cereals.superlayer!.bounds.width, y: 0.01 * cereals.superlayer!.bounds.height, width:  cereals.superlayer!.bounds.width, height:  cereals.superlayer!.bounds.height)
		}
		
		if let boccacereal = layers["boccacereal"] as? CAShapeLayer{
			boccacereal.frame = CGRect(x: 0.32 * boccacereal.superlayer!.bounds.width, y: 0.55 * boccacereal.superlayer!.bounds.height, width: 0.02 * boccacereal.superlayer!.bounds.width, height: 0.01 * boccacereal.superlayer!.bounds.height)
			boccacereal.path  = boccacerealPath(bounds: layers["boccacereal"]!.bounds).cgPath
		}
		
		if let boccaCereal2 = layers["boccaCereal2"] as? CAShapeLayer{
			boccaCereal2.frame = CGRect(x: 0.64 * boccaCereal2.superlayer!.bounds.width, y: 0.62 * boccaCereal2.superlayer!.bounds.height, width: 0.02 * boccaCereal2.superlayer!.bounds.width, height: 0.01 * boccaCereal2.superlayer!.bounds.height)
			boccaCereal2.path  = boccaCereal2Path(bounds: layers["boccaCereal2"]!.bounds).cgPath
		}
		
		if let boccaCereal3 = layers["boccaCereal3"] as? CAShapeLayer{
			boccaCereal3.frame = CGRect(x: 0.74 * boccaCereal3.superlayer!.bounds.width, y: 0.66 * boccaCereal3.superlayer!.bounds.height, width: 0.02 * boccaCereal3.superlayer!.bounds.width, height: 0.01 * boccaCereal3.superlayer!.bounds.height)
			boccaCereal3.path  = boccaCereal3Path(bounds: layers["boccaCereal3"]!.bounds).cgPath
		}
		
		if let boccaCereal4 = layers["boccaCereal4"] as? CAShapeLayer{
			boccaCereal4.frame = CGRect(x: 0.6 * boccaCereal4.superlayer!.bounds.width, y: 0.74 * boccaCereal4.superlayer!.bounds.height, width: 0.02 * boccaCereal4.superlayer!.bounds.width, height: 0.00748 * boccaCereal4.superlayer!.bounds.height)
			boccaCereal4.path  = boccaCereal4Path(bounds: layers["boccaCereal4"]!.bounds).cgPath
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addMovimentoBoccaCerealsAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let boccacereal = layers["boccacereal"] as! CAShapeLayer
		
		////Boccacereal animation
		let boccacerealTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		boccacerealTransformAnim.values       = [NSValue(caTransform3D: CATransform3DMakeScale(0.5, 0.5, 1)), 
			 NSValue(caTransform3D: CATransform3DMakeScale(0.5, 1, 1))]
		boccacerealTransformAnim.keyTimes     = [0, 1]
		boccacerealTransformAnim.duration     = 0.5
		boccacerealTransformAnim.repeatCount  = Float.infinity
		boccacerealTransformAnim.autoreverses = true
		
		let boccacerealMovimentoBoccaCerealsAnim : CAAnimationGroup = QCMethod.group(animations: [boccacerealTransformAnim], fillMode:fillMode)
		boccacereal.add(boccacerealMovimentoBoccaCerealsAnim, forKey:"boccacerealMovimentoBoccaCerealsAnim")
		
		let boccaCereal2 = layers["boccaCereal2"] as! CAShapeLayer
		
		////BoccaCereal2 animation
		let boccaCereal2TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		boccaCereal2TransformAnim.values       = [NSValue(caTransform3D: CATransform3DMakeScale(0.5, 1, 1)), 
			 NSValue(caTransform3D: CATransform3DMakeScale(0.5, 0.5, 1))]
		boccaCereal2TransformAnim.keyTimes     = [0, 1]
		boccaCereal2TransformAnim.duration     = 0.5
		boccaCereal2TransformAnim.repeatCount  = Float.infinity
		boccaCereal2TransformAnim.autoreverses = true
		
		let boccaCereal2MovimentoBoccaCerealsAnim : CAAnimationGroup = QCMethod.group(animations: [boccaCereal2TransformAnim], fillMode:fillMode)
		boccaCereal2.add(boccaCereal2MovimentoBoccaCerealsAnim, forKey:"boccaCereal2MovimentoBoccaCerealsAnim")
		
		let boccaCereal3 = layers["boccaCereal3"] as! CAShapeLayer
		
		////BoccaCereal3 animation
		let boccaCereal3TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		boccaCereal3TransformAnim.values       = [NSValue(caTransform3D: CATransform3DMakeScale(0.5, 0.5, 1)), 
			 NSValue(caTransform3D: CATransform3DMakeScale(0.5, 1, 1))]
		boccaCereal3TransformAnim.keyTimes     = [0, 1]
		boccaCereal3TransformAnim.duration     = 0.5
		boccaCereal3TransformAnim.repeatCount  = Float.infinity
		boccaCereal3TransformAnim.autoreverses = true
		
		let boccaCereal3MovimentoBoccaCerealsAnim : CAAnimationGroup = QCMethod.group(animations: [boccaCereal3TransformAnim], fillMode:fillMode)
		boccaCereal3.add(boccaCereal3MovimentoBoccaCerealsAnim, forKey:"boccaCereal3MovimentoBoccaCerealsAnim")
		
		let boccaCereal4 = layers["boccaCereal4"] as! CAShapeLayer
		
		////BoccaCereal4 animation
		let boccaCereal4TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		boccaCereal4TransformAnim.values       = [NSValue(caTransform3D: CATransform3DMakeScale(0.5, 0.5, 1)), 
			 NSValue(caTransform3D: CATransform3DMakeScale(0.5, 1, 1))]
		boccaCereal4TransformAnim.keyTimes     = [0, 1]
		boccaCereal4TransformAnim.duration     = 0.5
		boccaCereal4TransformAnim.repeatCount  = Float.infinity
		boccaCereal4TransformAnim.autoreverses = true
		
		let boccaCereal4MovimentoBoccaCerealsAnim : CAAnimationGroup = QCMethod.group(animations: [boccaCereal4TransformAnim], fillMode:fillMode)
		boccaCereal4.add(boccaCereal4MovimentoBoccaCerealsAnim, forKey:"boccaCereal4MovimentoBoccaCerealsAnim")
	}
	
	func addMovimentoCerealsAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let cereals = layers["cereals"] as! CALayer
		
		////Cereals animation
		let cerealsTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		cerealsTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * cereals.superlayer!.bounds.height, 0))]
		cerealsTransformAnim.keyTimes     = [0, 1]
		cerealsTransformAnim.duration     = 0.5
		cerealsTransformAnim.repeatCount  = Float.infinity
		cerealsTransformAnim.autoreverses = true
		
		let cerealsMovimentoCerealsAnim : CAAnimationGroup = QCMethod.group(animations: [cerealsTransformAnim], fillMode:fillMode)
		cereals.add(cerealsMovimentoCerealsAnim, forKey:"cerealsMovimentoCerealsAnim")
		
		let boccacereal = layers["boccacereal"] as! CAShapeLayer
		
		////Boccacereal animation
		let boccacerealTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		boccacerealTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * boccacereal.superlayer!.bounds.height, 0))]
		boccacerealTransformAnim.keyTimes     = [0, 1]
		boccacerealTransformAnim.duration     = 0.5
		boccacerealTransformAnim.repeatCount  = Float.infinity
		boccacerealTransformAnim.autoreverses = true
		
		let boccacerealMovimentoCerealsAnim : CAAnimationGroup = QCMethod.group(animations: [boccacerealTransformAnim], fillMode:fillMode)
		boccacereal.add(boccacerealMovimentoCerealsAnim, forKey:"boccacerealMovimentoCerealsAnim")
		
		let boccaCereal2 = layers["boccaCereal2"] as! CAShapeLayer
		
		////BoccaCereal2 animation
		let boccaCereal2TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		boccaCereal2TransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * boccaCereal2.superlayer!.bounds.height, 0))]
		boccaCereal2TransformAnim.keyTimes     = [0, 1]
		boccaCereal2TransformAnim.duration     = 0.5
		boccaCereal2TransformAnim.repeatCount  = Float.infinity
		boccaCereal2TransformAnim.autoreverses = true
		
		let boccaCereal2MovimentoCerealsAnim : CAAnimationGroup = QCMethod.group(animations: [boccaCereal2TransformAnim], fillMode:fillMode)
		boccaCereal2.add(boccaCereal2MovimentoCerealsAnim, forKey:"boccaCereal2MovimentoCerealsAnim")
		
		let boccaCereal3 = layers["boccaCereal3"] as! CAShapeLayer
		
		////BoccaCereal3 animation
		let boccaCereal3TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		boccaCereal3TransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * boccaCereal3.superlayer!.bounds.height, 0))]
		boccaCereal3TransformAnim.keyTimes     = [0, 1]
		boccaCereal3TransformAnim.duration     = 0.5
		boccaCereal3TransformAnim.repeatCount  = Float.infinity
		boccaCereal3TransformAnim.autoreverses = true
		
		let boccaCereal3MovimentoCerealsAnim : CAAnimationGroup = QCMethod.group(animations: [boccaCereal3TransformAnim], fillMode:fillMode)
		boccaCereal3.add(boccaCereal3MovimentoCerealsAnim, forKey:"boccaCereal3MovimentoCerealsAnim")
		
		let boccaCereal4 = layers["boccaCereal4"] as! CAShapeLayer
		
		////BoccaCereal4 animation
		let boccaCereal4TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		boccaCereal4TransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * boccaCereal4.superlayer!.bounds.height, 0))]
		boccaCereal4TransformAnim.keyTimes     = [0, 1]
		boccaCereal4TransformAnim.duration     = 0.5
		boccaCereal4TransformAnim.repeatCount  = Float.infinity
		boccaCereal4TransformAnim.autoreverses = true
		
		let boccaCereal4MovimentoCerealsAnim : CAAnimationGroup = QCMethod.group(animations: [boccaCereal4TransformAnim], fillMode:fillMode)
		boccaCereal4.add(boccaCereal4MovimentoCerealsAnim, forKey:"boccaCereal4MovimentoCerealsAnim")
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
		if identifier == "movimentoBoccaCereals"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccacereal"]!.animation(forKey: "boccacerealMovimentoBoccaCerealsAnim"), theLayer:layers["boccacereal"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccaCereal2"]!.animation(forKey: "boccaCereal2MovimentoBoccaCerealsAnim"), theLayer:layers["boccaCereal2"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccaCereal3"]!.animation(forKey: "boccaCereal3MovimentoBoccaCerealsAnim"), theLayer:layers["boccaCereal3"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccaCereal4"]!.animation(forKey: "boccaCereal4MovimentoBoccaCerealsAnim"), theLayer:layers["boccaCereal4"]!)
		}
		else if identifier == "movimentoCereals"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["cereals"]!.animation(forKey: "cerealsMovimentoCerealsAnim"), theLayer:layers["cereals"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccacereal"]!.animation(forKey: "boccacerealMovimentoCerealsAnim"), theLayer:layers["boccacereal"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccaCereal2"]!.animation(forKey: "boccaCereal2MovimentoCerealsAnim"), theLayer:layers["boccaCereal2"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccaCereal3"]!.animation(forKey: "boccaCereal3MovimentoCerealsAnim"), theLayer:layers["boccaCereal3"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccaCereal4"]!.animation(forKey: "boccaCereal4MovimentoCerealsAnim"), theLayer:layers["boccaCereal4"]!)
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "movimentoBoccaCereals"{
			layers["boccacereal"]?.removeAnimation(forKey: "boccacerealMovimentoBoccaCerealsAnim")
			layers["boccaCereal2"]?.removeAnimation(forKey: "boccaCereal2MovimentoBoccaCerealsAnim")
			layers["boccaCereal3"]?.removeAnimation(forKey: "boccaCereal3MovimentoBoccaCerealsAnim")
			layers["boccaCereal4"]?.removeAnimation(forKey: "boccaCereal4MovimentoBoccaCerealsAnim")
		}
		else if identifier == "movimentoCereals"{
			layers["cereals"]?.removeAnimation(forKey: "cerealsMovimentoCerealsAnim")
			layers["boccacereal"]?.removeAnimation(forKey: "boccacerealMovimentoCerealsAnim")
			layers["boccaCereal2"]?.removeAnimation(forKey: "boccaCereal2MovimentoCerealsAnim")
			layers["boccaCereal3"]?.removeAnimation(forKey: "boccaCereal3MovimentoCerealsAnim")
			layers["boccaCereal4"]?.removeAnimation(forKey: "boccaCereal4MovimentoCerealsAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			layer.removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func boccacerealPath(bounds: CGRect) -> UIBezierPath{
		let boccacerealPath = UIBezierPath(rect:bounds)
		return boccacerealPath
	}
	
	func boccaCereal2Path(bounds: CGRect) -> UIBezierPath{
		let boccaCereal2Path = UIBezierPath(rect:bounds)
		return boccaCereal2Path
	}
	
	func boccaCereal3Path(bounds: CGRect) -> UIBezierPath{
		let boccaCereal3Path = UIBezierPath(rect:bounds)
		return boccaCereal3Path
	}
	
	func boccaCereal4Path(bounds: CGRect) -> UIBezierPath{
		let boccaCereal4Path = UIBezierPath(rect:bounds)
		return boccaCereal4Path
	}
	
	
}
