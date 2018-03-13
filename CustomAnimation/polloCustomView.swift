//
//  polloCustomView.swift
//
//  Code generated using QuartzCode 1.63.0 on 18/12/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class polloCustomView: UIView, CAAnimationDelegate {
	
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
		self.color = UIColor(red:0.383, green: 0, blue:0, alpha:1)
	}
	
	func setupLayers(){
		self.backgroundColor = UIColor(red:1, green: 1, blue:1, alpha:0)
		
		let pollo = CALayer()
		self.layer.addSublayer(pollo)
		layers["pollo"] = pollo
		
		let boccapollo = CAShapeLayer()
		self.layer.addSublayer(boccapollo)
		layers["boccapollo"] = boccapollo
		
		resetLayerProperties(forLayerIdentifiers: nil)
		setupLayerFrames()
	}
	
	func resetLayerProperties(forLayerIdentifiers layerIds: [String]!){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if layerIds == nil || layerIds.contains("pollo"){
			let pollo = layers["pollo"] as! CALayer
			pollo.contents = UIImage(named:"pollo")?.cgImage
		}
		if layerIds == nil || layerIds.contains("boccapollo"){
			let boccapollo = layers["boccapollo"] as! CAShapeLayer
			boccapollo.fillColor   = self.color.cgColor
			boccapollo.strokeColor = self.color.cgColor
		}
		
		CATransaction.commit()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let pollo = layers["pollo"]{
			pollo.frame = CGRect(x: 0.045 * pollo.superlayer!.bounds.width, y: 0.05871 * pollo.superlayer!.bounds.height, width: 0.91 * pollo.superlayer!.bounds.width, height: 0.85129 * pollo.superlayer!.bounds.height)
		}
		
		if let boccapollo = layers["boccapollo"] as? CAShapeLayer{
			boccapollo.frame = CGRect(x: 0.605 * boccapollo.superlayer!.bounds.width, y: 0.78511 * boccapollo.superlayer!.bounds.height, width: 0.13934 * boccapollo.superlayer!.bounds.width, height: 0.04989 * boccapollo.superlayer!.bounds.height)
			boccapollo.path  = boccapolloPath(bounds: layers["boccapollo"]!.bounds).cgPath
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addMovimentoboccapolloAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let boccapollo = layers["boccapollo"] as! CAShapeLayer
		
		////Boccapollo animation
		let boccapolloTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		boccapolloTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, 0.3, 1))]
		boccapolloTransformAnim.keyTimes     = [0, 1]
		boccapolloTransformAnim.duration     = 0.3
		boccapolloTransformAnim.repeatCount  = Float.infinity
		boccapolloTransformAnim.autoreverses = true
		
		let boccapolloMovimentoboccapolloAnim : CAAnimationGroup = QCMethod.group(animations: [boccapolloTransformAnim], fillMode:fillMode)
		boccapollo.add(boccapolloMovimentoboccapolloAnim, forKey:"boccapolloMovimentoboccapolloAnim")
	}
	
	func addMovimentoPolloAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let pollo = layers["pollo"] as! CALayer
		
		////Pollo animation
		let polloTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		polloTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * pollo.superlayer!.bounds.height, 0))]
		polloTransformAnim.keyTimes     = [0, 1]
		polloTransformAnim.duration     = 0.5
		polloTransformAnim.repeatCount  = Float.infinity
		polloTransformAnim.autoreverses = true
		
		let polloMovimentoPolloAnim : CAAnimationGroup = QCMethod.group(animations: [polloTransformAnim], fillMode:fillMode)
		pollo.add(polloMovimentoPolloAnim, forKey:"polloMovimentoPolloAnim")
		
		let boccapollo = layers["boccapollo"] as! CAShapeLayer
		
		////Boccapollo animation
		let boccapolloTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		boccapolloTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * boccapollo.superlayer!.bounds.height, 0))]
		boccapolloTransformAnim.keyTimes     = [0, 1]
		boccapolloTransformAnim.duration     = 0.5
		boccapolloTransformAnim.repeatCount  = Float.infinity
		boccapolloTransformAnim.autoreverses = true
		
		let boccapolloMovimentoPolloAnim : CAAnimationGroup = QCMethod.group(animations: [boccapolloTransformAnim], fillMode:fillMode)
		boccapollo.add(boccapolloMovimentoPolloAnim, forKey:"boccapolloMovimentoPolloAnim")
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
		if identifier == "movimentoboccapollo"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccapollo"]!.animation(forKey: "boccapolloMovimentoboccapolloAnim"), theLayer:layers["boccapollo"]!)
		}
		else if identifier == "movimentoPollo"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["pollo"]!.animation(forKey: "polloMovimentoPolloAnim"), theLayer:layers["pollo"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccapollo"]!.animation(forKey: "boccapolloMovimentoPolloAnim"), theLayer:layers["boccapollo"]!)
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "movimentoboccapollo"{
			layers["boccapollo"]?.removeAnimation(forKey: "boccapolloMovimentoboccapolloAnim")
		}
		else if identifier == "movimentoPollo"{
			layers["pollo"]?.removeAnimation(forKey: "polloMovimentoPolloAnim")
			layers["boccapollo"]?.removeAnimation(forKey: "boccapolloMovimentoPolloAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			layer.removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func boccapolloPath(bounds: CGRect) -> UIBezierPath{
		let boccapolloPath = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		boccapolloPath.move(to: CGPoint(x:minX + 0.50509 * w, y: minY + 0.19708 * h))
		boccapolloPath.addCurve(to: CGPoint(x:minX, y: minY + 0.19708 * h), controlPoint1:CGPoint(x:minX + 0.22894 * w, y: minY + 0.19708 * h), controlPoint2:CGPoint(x:minX, y: minY + -0.24635 * h))
		boccapolloPath.addCurve(to: CGPoint(x:minX + 0.5 * w, y: minY + h), controlPoint1:CGPoint(x:minX, y: minY + 0.64052 * h), controlPoint2:CGPoint(x:minX + 0.22386 * w, y: minY + h))
		boccapolloPath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.19708 * h), controlPoint1:CGPoint(x:minX + 0.77614 * w, y: minY + h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.64052 * h))
		boccapolloPath.addCurve(to: CGPoint(x:minX + 0.50509 * w, y: minY + 0.19708 * h), controlPoint1:CGPoint(x:minX + w, y: minY + -0.24635 * h), controlPoint2:CGPoint(x:minX + 0.78123 * w, y: minY + 0.19708 * h))
		
		return boccapolloPath
	}
	
	
}
