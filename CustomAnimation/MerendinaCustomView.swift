//
//  MerendinaCustomView.swift
//
//  Code generated using QuartzCode 1.63.0 on 18/12/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class MerendinaCustomView: UIView, CAAnimationDelegate {
	
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
		self.color = UIColor(red:0, green: 0.547, blue:0.184, alpha:1)
	}
	
	func setupLayers(){
		self.backgroundColor = UIColor(red:1, green: 1, blue:1, alpha:0)
		
		let merendina = CALayer()
		self.layer.addSublayer(merendina)
		layers["merendina"] = merendina
		
		let Boccamerendina = CAShapeLayer()
		self.layer.addSublayer(Boccamerendina)
		layers["Boccamerendina"] = Boccamerendina
		
		resetLayerProperties(forLayerIdentifiers: nil)
		setupLayerFrames()
	}
	
	func resetLayerProperties(forLayerIdentifiers layerIds: [String]!){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if layerIds == nil || layerIds.contains("merendina"){
			let merendina = layers["merendina"] as! CALayer
			merendina.contents = UIImage(named:"merendina")?.cgImage
		}
		if layerIds == nil || layerIds.contains("Boccamerendina"){
			let Boccamerendina = layers["Boccamerendina"] as! CAShapeLayer
			Boccamerendina.fillColor   = self.color.cgColor
			Boccamerendina.strokeColor = self.color.cgColor
		}
		
		CATransaction.commit()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let merendina = layers["merendina"]{
			merendina.frame = CGRect(x: -0.51734 * merendina.superlayer!.bounds.width, y: -0.0973 * merendina.superlayer!.bounds.height, width: 1.99652 * merendina.superlayer!.bounds.width, height: 1.25262 * merendina.superlayer!.bounds.height)
		}
		
		if let Boccamerendina = layers["Boccamerendina"] as? CAShapeLayer{
			Boccamerendina.frame = CGRect(x: 0.3722 * Boccamerendina.superlayer!.bounds.width, y: 0.68081 * Boccamerendina.superlayer!.bounds.height, width: 0.14742 * Boccamerendina.superlayer!.bounds.width, height: 0.01358 * Boccamerendina.superlayer!.bounds.height)
			Boccamerendina.path  = BoccamerendinaPath(bounds: layers["Boccamerendina"]!.bounds).cgPath
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addMovimentomerendinaAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let Boccamerendina = layers["Boccamerendina"] as! CAShapeLayer
		
		////Boccamerendina animation
		let BoccamerendinaTransformAnim      = CAKeyframeAnimation(keyPath:"transform")
		BoccamerendinaTransformAnim.values   = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, 1.8, 1))]
		BoccamerendinaTransformAnim.keyTimes = [0, 1]
		BoccamerendinaTransformAnim.duration = 0.345
		BoccamerendinaTransformAnim.repeatCount = Float.infinity
		BoccamerendinaTransformAnim.autoreverses = true
		
		let BoccamerendinaMovimentomerendinaAnim : CAAnimationGroup = QCMethod.group(animations: [BoccamerendinaTransformAnim], fillMode:fillMode)
		Boccamerendina.add(BoccamerendinaMovimentomerendinaAnim, forKey:"BoccamerendinaMovimentomerendinaAnim")
	}
	
	func addMovimentoMerendinaAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let merendina = layers["merendina"] as! CALayer
		
		////Merendina animation
		let merendinaTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		merendinaTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * merendina.superlayer!.bounds.height, 0))]
		merendinaTransformAnim.keyTimes     = [0, 1]
		merendinaTransformAnim.duration     = 0.5
		merendinaTransformAnim.repeatCount  = Float.infinity
		merendinaTransformAnim.autoreverses = true
		
		let merendinaMovimentoMerendinaAnim : CAAnimationGroup = QCMethod.group(animations: [merendinaTransformAnim], fillMode:fillMode)
		merendina.add(merendinaMovimentoMerendinaAnim, forKey:"merendinaMovimentoMerendinaAnim")
		
		let Boccamerendina = layers["Boccamerendina"] as! CAShapeLayer
		
		////Boccamerendina animation
		let BoccamerendinaTransformAnim      = CAKeyframeAnimation(keyPath:"transform")
		BoccamerendinaTransformAnim.values   = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * Boccamerendina.superlayer!.bounds.height, 0))]
		BoccamerendinaTransformAnim.keyTimes = [0, 1]
		BoccamerendinaTransformAnim.duration = 0.5
		BoccamerendinaTransformAnim.repeatCount = Float.infinity
		BoccamerendinaTransformAnim.autoreverses = true
		
		let BoccamerendinaMovimentoMerendinaAnim : CAAnimationGroup = QCMethod.group(animations: [BoccamerendinaTransformAnim], fillMode:fillMode)
		Boccamerendina.add(BoccamerendinaMovimentoMerendinaAnim, forKey:"BoccamerendinaMovimentoMerendinaAnim")
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
		if identifier == "movimentomerendina"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Boccamerendina"]!.animation(forKey: "BoccamerendinaMovimentomerendinaAnim"), theLayer:layers["Boccamerendina"]!)
		}
		else if identifier == "movimentoMerendina"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["merendina"]!.animation(forKey: "merendinaMovimentoMerendinaAnim"), theLayer:layers["merendina"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Boccamerendina"]!.animation(forKey: "BoccamerendinaMovimentoMerendinaAnim"), theLayer:layers["Boccamerendina"]!)
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "movimentomerendina"{
			layers["Boccamerendina"]?.removeAnimation(forKey: "BoccamerendinaMovimentomerendinaAnim")
		}
		else if identifier == "movimentoMerendina"{
			layers["merendina"]?.removeAnimation(forKey: "merendinaMovimentoMerendinaAnim")
			layers["Boccamerendina"]?.removeAnimation(forKey: "BoccamerendinaMovimentoMerendinaAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			layer.removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func BoccamerendinaPath(bounds: CGRect) -> UIBezierPath{
		let BoccamerendinaPath = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		BoccamerendinaPath.move(to: CGPoint(x:minX + 0.5191 * w, y: minY))
		BoccamerendinaPath.addCurve(to: CGPoint(x:minX, y: minY + 0.9886 * h), controlPoint1:CGPoint(x:minX + 0.24296 * w, y: minY), controlPoint2:CGPoint(x:minX, y: minY + 0.8902 * h))
		BoccamerendinaPath.addCurve(to: CGPoint(x:minX + 0.52853 * w, y: minY + 0.51616 * h), controlPoint1:CGPoint(x:minX, y: minY + 1.08699 * h), controlPoint2:CGPoint(x:minX + 0.25239 * w, y: minY + 0.51616 * h))
		BoccamerendinaPath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.9886 * h), controlPoint1:CGPoint(x:minX + 0.80467 * w, y: minY + 0.51616 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 1.08699 * h))
		BoccamerendinaPath.addCurve(to: CGPoint(x:minX + 0.5191 * w, y: minY), controlPoint1:CGPoint(x:minX + w, y: minY + 0.8902 * h), controlPoint2:CGPoint(x:minX + 0.79525 * w, y: minY))
		
		return BoccamerendinaPath
	}
	
	
}
