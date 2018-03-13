//
//  cocomeroCustomView.swift
//
//  Code generated using QuartzCode 1.63.0 on 18/12/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class cocomeroCustomView: UIView, CAAnimationDelegate {
	
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
		self.color = UIColor(red:0, green: 0.608, blue:0, alpha:1)
	}
	
	func setupLayers(){
		self.backgroundColor = UIColor(red:1, green: 1, blue:1, alpha:0)
		
		let cocomero = CALayer()
		self.layer.addSublayer(cocomero)
		layers["cocomero"] = cocomero
		
		let boccacocomero = CAShapeLayer()
		self.layer.addSublayer(boccacocomero)
		layers["boccacocomero"] = boccacocomero
		
		resetLayerProperties(forLayerIdentifiers: nil)
		setupLayerFrames()
	}
	
	func resetLayerProperties(forLayerIdentifiers layerIds: [String]!){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if layerIds == nil || layerIds.contains("cocomero"){
			let cocomero = layers["cocomero"] as! CALayer
			cocomero.contents = UIImage(named:"cocomero")?.cgImage
		}
		if layerIds == nil || layerIds.contains("boccacocomero"){
			let boccacocomero = layers["boccacocomero"] as! CAShapeLayer
			boccacocomero.fillColor   = self.color.cgColor
			boccacocomero.strokeColor = self.color.cgColor
		}
		
		CATransaction.commit()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let cocomero = layers["cocomero"]{
			cocomero.frame = CGRect(x: -0.325 * cocomero.superlayer!.bounds.width, y: -0.03263 * cocomero.superlayer!.bounds.height, width: 1.81 * cocomero.superlayer!.bounds.width, height: 1.01763 * cocomero.superlayer!.bounds.height)
		}
		
		if let boccacocomero = layers["boccacocomero"] as? CAShapeLayer{
			boccacocomero.frame = CGRect(x: 0.375 * boccacocomero.superlayer!.bounds.width, y: 0.52119 * boccacocomero.superlayer!.bounds.height, width: 0.32 * boccacocomero.superlayer!.bounds.width, height: 0.04426 * boccacocomero.superlayer!.bounds.height)
			boccacocomero.path  = boccacocomeroPath(bounds: layers["boccacocomero"]!.bounds).cgPath
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addMovimentoboccacocomeroAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let boccacocomero = layers["boccacocomero"] as! CAShapeLayer
		
		////Boccacocomero animation
		let boccacocomeroTransformAnim         = CAKeyframeAnimation(keyPath:"transform")
		boccacocomeroTransformAnim.values      = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, 0.3, 1))]
		boccacocomeroTransformAnim.keyTimes    = [0, 1]
		boccacocomeroTransformAnim.duration    = 0.3
		boccacocomeroTransformAnim.repeatCount = Float.infinity
		boccacocomeroTransformAnim.autoreverses = true
		
		let boccacocomeroMovimentoboccacocomeroAnim : CAAnimationGroup = QCMethod.group(animations: [boccacocomeroTransformAnim], fillMode:fillMode)
		boccacocomero.add(boccacocomeroMovimentoboccacocomeroAnim, forKey:"boccacocomeroMovimentoboccacocomeroAnim")
	}
	
	func addMovimentococomeroAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let cocomero = layers["cocomero"] as! CALayer
		
		////Cocomero animation
		let cocomeroTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		cocomeroTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * cocomero.superlayer!.bounds.height, 0))]
		cocomeroTransformAnim.keyTimes     = [0, 1]
		cocomeroTransformAnim.duration     = 0.5
		cocomeroTransformAnim.repeatCount  = Float.infinity
		cocomeroTransformAnim.autoreverses = true
		
		let cocomeroMovimentococomeroAnim : CAAnimationGroup = QCMethod.group(animations: [cocomeroTransformAnim], fillMode:fillMode)
		cocomero.add(cocomeroMovimentococomeroAnim, forKey:"cocomeroMovimentococomeroAnim")
		
		let boccacocomero = layers["boccacocomero"] as! CAShapeLayer
		
		////Boccacocomero animation
		let boccacocomeroTransformAnim         = CAKeyframeAnimation(keyPath:"transform")
		boccacocomeroTransformAnim.values      = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * boccacocomero.superlayer!.bounds.height, 0))]
		boccacocomeroTransformAnim.keyTimes    = [0, 1]
		boccacocomeroTransformAnim.duration    = 0.5
		boccacocomeroTransformAnim.repeatCount = Float.infinity
		boccacocomeroTransformAnim.autoreverses = true
		
		let boccacocomeroMovimentococomeroAnim : CAAnimationGroup = QCMethod.group(animations: [boccacocomeroTransformAnim], fillMode:fillMode)
		boccacocomero.add(boccacocomeroMovimentococomeroAnim, forKey:"boccacocomeroMovimentococomeroAnim")
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
		if identifier == "movimentoboccacocomero"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccacocomero"]!.animation(forKey: "boccacocomeroMovimentoboccacocomeroAnim"), theLayer:layers["boccacocomero"]!)
		}
		else if identifier == "movimentococomero"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["cocomero"]!.animation(forKey: "cocomeroMovimentococomeroAnim"), theLayer:layers["cocomero"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccacocomero"]!.animation(forKey: "boccacocomeroMovimentococomeroAnim"), theLayer:layers["boccacocomero"]!)
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "movimentoboccacocomero"{
			layers["boccacocomero"]?.removeAnimation(forKey: "boccacocomeroMovimentoboccacocomeroAnim")
		}
		else if identifier == "movimentococomero"{
			layers["cocomero"]?.removeAnimation(forKey: "cocomeroMovimentococomeroAnim")
			layers["boccacocomero"]?.removeAnimation(forKey: "boccacocomeroMovimentococomeroAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			layer.removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func boccacocomeroPath(bounds: CGRect) -> UIBezierPath{
		let boccacocomeroPath = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		boccacocomeroPath.move(to: CGPoint(x:minX + 0.51481 * w, y: minY + 0.19708 * h))
		boccacocomeroPath.addCurve(to: CGPoint(x:minX, y: minY + 0.19708 * h), controlPoint1:CGPoint(x:minX + 0.23867 * w, y: minY + 0.19708 * h), controlPoint2:CGPoint(x:minX, y: minY + -0.24635 * h))
		boccacocomeroPath.addCurve(to: CGPoint(x:minX + 0.5 * w, y: minY + h), controlPoint1:CGPoint(x:minX, y: minY + 0.64052 * h), controlPoint2:CGPoint(x:minX + 0.22386 * w, y: minY + h))
		boccacocomeroPath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.19708 * h), controlPoint1:CGPoint(x:minX + 0.77614 * w, y: minY + h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.64052 * h))
		boccacocomeroPath.addCurve(to: CGPoint(x:minX + 0.51481 * w, y: minY + 0.19708 * h), controlPoint1:CGPoint(x:minX + w, y: minY + -0.24635 * h), controlPoint2:CGPoint(x:minX + 0.79095 * w, y: minY + 0.19708 * h))
		
		return boccacocomeroPath
	}
	
	
}
