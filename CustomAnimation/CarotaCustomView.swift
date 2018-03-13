//
//  CarotaCustomView.swift
//
//  Code generated using QuartzCode 1.63.0 on 18/12/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class CarotaCustomView: UIView, CAAnimationDelegate {
	
	var layers = [String: CALayer]()
	var completionBlocks = [CAAnimation: (Bool) -> Void]()
	var updateLayerValueForCompletedAnimation : Bool = false
	
	var color : UIColor!
	var color1 : UIColor!
	
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
		self.color = UIColor(red:0.404, green: 0.404, blue:0.404, alpha:1)
		self.color1 = UIColor(red:0.783, green: 0.31, blue:0, alpha:1)
	}
	
	func setupLayers(){
		self.backgroundColor = UIColor(red:1, green: 1, blue:1, alpha:0)
		
		let carota = CALayer()
		self.layer.addSublayer(carota)
		layers["carota"] = carota
		
		let boccacarota = CAShapeLayer()
		self.layer.addSublayer(boccacarota)
		layers["boccacarota"] = boccacarota
		
		resetLayerProperties(forLayerIdentifiers: nil)
		setupLayerFrames()
	}
	
	func resetLayerProperties(forLayerIdentifiers layerIds: [String]!){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if layerIds == nil || layerIds.contains("carota"){
			let carota = layers["carota"] as! CALayer
			carota.setValue(-270.18 * CGFloat.pi/180, forKeyPath:"transform.rotation")
			carota.contents = UIImage(named:"carota")?.cgImage
		}
		if layerIds == nil || layerIds.contains("boccacarota"){
			let boccacarota = layers["boccacarota"] as! CAShapeLayer
			boccacarota.fillColor   = UIColor(red:0.783, green: 0.31, blue:0, alpha:1).cgColor
			boccacarota.strokeColor = self.color1.cgColor
		}
		
		CATransaction.commit()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let carota = layers["carota"]{
			carota.transform = CATransform3DIdentity
			carota.frame     = CGRect(x: 0, y: -0.45094 * carota.superlayer!.bounds.height, width: 1.08 * carota.superlayer!.bounds.width, height: 1.92094 * carota.superlayer!.bounds.height)
			carota.setValue(-270.18 * CGFloat.pi/180, forKeyPath:"transform.rotation")
		}
		
		if let boccacarota = layers["boccacarota"] as? CAShapeLayer{
			boccacarota.frame = CGRect(x: 0.465 * boccacarota.superlayer!.bounds.width, y: 0.595 * boccacarota.superlayer!.bounds.height, width: 0.1 * boccacarota.superlayer!.bounds.width, height: 0.04 * boccacarota.superlayer!.bounds.height)
			boccacarota.path  = boccacarotaPath(bounds: layers["boccacarota"]!.bounds).cgPath
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addMovimentoboccacarotaAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let boccacarota = layers["boccacarota"] as! CAShapeLayer
		
		////Boccacarota animation
		let boccacarotaTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		boccacarotaTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, 0.3, 1))]
		boccacarotaTransformAnim.keyTimes     = [0, 1]
		boccacarotaTransformAnim.duration     = 0.3
		boccacarotaTransformAnim.repeatCount  = Float.infinity
		boccacarotaTransformAnim.autoreverses = true
		
		let boccacarotaMovimentoboccacarotaAnim : CAAnimationGroup = QCMethod.group(animations: [boccacarotaTransformAnim], fillMode:fillMode)
		boccacarota.add(boccacarotaMovimentoboccacarotaAnim, forKey:"boccacarotaMovimentoboccacarotaAnim")
	}
	
	func addMovimentocarotaAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let carota = layers["carota"] as! CALayer
		
		////Carota animation
		let carotaTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		carotaTransformAnim.values       = [NSValue(caTransform3D: CATransform3DMakeRotation(270.18 * CGFloat.pi/180, 0, 0, -1)), 
			 NSValue(caTransform3D: CATransform3DConcat(CATransform3DMakeTranslation(-0.1 * carota.superlayer!.bounds.width, 0, 0), CATransform3DMakeRotation(-270.18 * CGFloat.pi/180, -0, 0, 1)))]
		carotaTransformAnim.keyTimes     = [0, 1]
		carotaTransformAnim.duration     = 0.5
		carotaTransformAnim.repeatCount  = Float.infinity
		carotaTransformAnim.autoreverses = true
		
		let carotaMovimentocarotaAnim : CAAnimationGroup = QCMethod.group(animations: [carotaTransformAnim], fillMode:fillMode)
		carota.add(carotaMovimentocarotaAnim, forKey:"carotaMovimentocarotaAnim")
		
		let boccacarota = layers["boccacarota"] as! CAShapeLayer
		
		////Boccacarota animation
		let boccacarotaTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		boccacarotaTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * boccacarota.superlayer!.bounds.height, 0))]
		boccacarotaTransformAnim.keyTimes     = [0, 1]
		boccacarotaTransformAnim.duration     = 0.5
		boccacarotaTransformAnim.repeatCount  = Float.infinity
		boccacarotaTransformAnim.autoreverses = true
		
		let boccacarotaMovimentocarotaAnim : CAAnimationGroup = QCMethod.group(animations: [boccacarotaTransformAnim], fillMode:fillMode)
		boccacarota.add(boccacarotaMovimentocarotaAnim, forKey:"boccacarotaMovimentocarotaAnim")
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
		if identifier == "movimentoboccacarota"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccacarota"]!.animation(forKey: "boccacarotaMovimentoboccacarotaAnim"), theLayer:layers["boccacarota"]!)
		}
		else if identifier == "movimentocarota"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["carota"]!.animation(forKey: "carotaMovimentocarotaAnim"), theLayer:layers["carota"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccacarota"]!.animation(forKey: "boccacarotaMovimentocarotaAnim"), theLayer:layers["boccacarota"]!)
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "movimentoboccacarota"{
			layers["boccacarota"]?.removeAnimation(forKey: "boccacarotaMovimentoboccacarotaAnim")
		}
		else if identifier == "movimentocarota"{
			layers["carota"]?.removeAnimation(forKey: "carotaMovimentocarotaAnim")
			layers["boccacarota"]?.removeAnimation(forKey: "boccacarotaMovimentocarotaAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			layer.removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func boccacarotaPath(bounds: CGRect) -> UIBezierPath{
		let boccacarotaPath = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		boccacarotaPath.move(to: CGPoint(x:minX + 0.49284 * w, y: minY + 0.4653 * h))
		boccacarotaPath.addCurve(to: CGPoint(x:minX, y: minY + 0.14971 * h), controlPoint1:CGPoint(x:minX + 0.2167 * w, y: minY + 0.4653 * h), controlPoint2:CGPoint(x:minX, y: minY + -0.31989 * h))
		boccacarotaPath.addCurve(to: CGPoint(x:minX + 0.5 * w, y: minY + h), controlPoint1:CGPoint(x:minX, y: minY + 0.61931 * h), controlPoint2:CGPoint(x:minX + 0.22386 * w, y: minY + h))
		boccacarotaPath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.14971 * h), controlPoint1:CGPoint(x:minX + 0.77614 * w, y: minY + h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.61931 * h))
		boccacarotaPath.addCurve(to: CGPoint(x:minX + 0.49284 * w, y: minY + 0.4653 * h), controlPoint1:CGPoint(x:minX + w, y: minY + -0.31989 * h), controlPoint2:CGPoint(x:minX + 0.76898 * w, y: minY + 0.4653 * h))
		
		return boccacarotaPath
	}
	
	
}
