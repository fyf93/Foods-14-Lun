//
//  formaggioCustomView.swift
//
//  Code generated using QuartzCode 1.63.0 on 18/12/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class formaggioCustomView: UIView, CAAnimationDelegate {
	
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
		self.color = UIColor(red:0.776, green: 0.702, blue:0, alpha:1)
	}
	
	func setupLayers(){
		self.backgroundColor = UIColor(red:1, green: 1, blue:1, alpha:0)
		
		let formaggio = CALayer()
		self.layer.addSublayer(formaggio)
		layers["formaggio"] = formaggio
		
		let boccaformaggio = CAShapeLayer()
		self.layer.addSublayer(boccaformaggio)
		layers["boccaformaggio"] = boccaformaggio
		
		resetLayerProperties(forLayerIdentifiers: nil)
		setupLayerFrames()
	}
	
	func resetLayerProperties(forLayerIdentifiers layerIds: [String]!){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if layerIds == nil || layerIds.contains("formaggio"){
			let formaggio = layers["formaggio"] as! CALayer
			formaggio.setValue(-269.7 * CGFloat.pi/180, forKeyPath:"transform.rotation")
			formaggio.contents = UIImage(named:"formaggio")?.cgImage
		}
		if layerIds == nil || layerIds.contains("boccaformaggio"){
			let boccaformaggio = layers["boccaformaggio"] as! CAShapeLayer
			boccaformaggio.fillColor   = self.color.cgColor
			boccaformaggio.strokeColor = self.color.cgColor
		}
		
		CATransaction.commit()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let formaggio = layers["formaggio"]{
			formaggio.transform = CATransform3DIdentity
			formaggio.frame     = CGRect(x: -0.045 * formaggio.superlayer!.bounds.width, y: -0.64533 * formaggio.superlayer!.bounds.height, width: 1.31 * formaggio.superlayer!.bounds.width, height: 2.33003 * formaggio.superlayer!.bounds.height)
			formaggio.setValue(-269.7 * CGFloat.pi/180, forKeyPath:"transform.rotation")
		}
		
		if let boccaformaggio = layers["boccaformaggio"] as? CAShapeLayer{
			boccaformaggio.frame = CGRect(x: 0.405 * boccaformaggio.superlayer!.bounds.width, y: 0.70536 * boccaformaggio.superlayer!.bounds.height, width: 0.2 * boccaformaggio.superlayer!.bounds.width, height: 0.04964 * boccaformaggio.superlayer!.bounds.height)
			boccaformaggio.path  = boccaformaggioPath(bounds: layers["boccaformaggio"]!.bounds).cgPath
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addMovimentoboccaformaggioAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let boccaformaggio = layers["boccaformaggio"] as! CAShapeLayer
		
		////Boccaformaggio animation
		let boccaformaggioTransformAnim      = CAKeyframeAnimation(keyPath:"transform")
		boccaformaggioTransformAnim.values   = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, 0.3, 1))]
		boccaformaggioTransformAnim.keyTimes = [0, 1]
		boccaformaggioTransformAnim.duration = 0.3
		boccaformaggioTransformAnim.repeatCount = Float.infinity
		boccaformaggioTransformAnim.autoreverses = true
		
		let boccaformaggioMovimentoboccaformaggioAnim : CAAnimationGroup = QCMethod.group(animations: [boccaformaggioTransformAnim], fillMode:fillMode)
		boccaformaggio.add(boccaformaggioMovimentoboccaformaggioAnim, forKey:"boccaformaggioMovimentoboccaformaggioAnim")
	}
	
	func addMovimento(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let formaggio = layers["formaggio"] as! CALayer
		
		////Formaggio animation
		let formaggioTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		formaggioTransformAnim.values       = [NSValue(caTransform3D: CATransform3DMakeRotation(269.7 * CGFloat.pi/180, 0, 0, -1)), 
			 NSValue(caTransform3D: CATransform3DConcat(CATransform3DMakeTranslation(-0.1 * formaggio.superlayer!.bounds.width, 0, 0), CATransform3DMakeRotation(-269.7 * CGFloat.pi/180, -0, 0, 1)))]
		formaggioTransformAnim.keyTimes     = [0, 1]
		formaggioTransformAnim.duration     = 0.5
		formaggioTransformAnim.repeatCount  = Float.infinity
		formaggioTransformAnim.autoreverses = true
		
		let formaggioMovimentoFormaggioAnim : CAAnimationGroup = QCMethod.group(animations: [formaggioTransformAnim], fillMode:fillMode)
		formaggio.add(formaggioMovimentoFormaggioAnim, forKey:"formaggioMovimentoFormaggioAnim")
		
		let boccaformaggio = layers["boccaformaggio"] as! CAShapeLayer
		
		////Boccaformaggio animation
		let boccaformaggioTransformAnim      = CAKeyframeAnimation(keyPath:"transform")
		boccaformaggioTransformAnim.values   = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * boccaformaggio.superlayer!.bounds.height, 0))]
		boccaformaggioTransformAnim.keyTimes = [0, 1]
		boccaformaggioTransformAnim.duration = 0.5
		boccaformaggioTransformAnim.repeatCount = Float.infinity
		boccaformaggioTransformAnim.autoreverses = true
		
		let boccaformaggioMovimentoFormaggioAnim : CAAnimationGroup = QCMethod.group(animations: [boccaformaggioTransformAnim], fillMode:fillMode)
		boccaformaggio.add(boccaformaggioMovimentoFormaggioAnim, forKey:"boccaformaggioMovimentoFormaggioAnim")
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
		if identifier == "movimentoboccaformaggio"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccaformaggio"]!.animation(forKey: "boccaformaggioMovimentoboccaformaggioAnim"), theLayer:layers["boccaformaggio"]!)
		}
		else if identifier == "movimentoFormaggio"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["formaggio"]!.animation(forKey: "formaggioMovimentoFormaggioAnim"), theLayer:layers["formaggio"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccaformaggio"]!.animation(forKey: "boccaformaggioMovimentoFormaggioAnim"), theLayer:layers["boccaformaggio"]!)
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "movimentoboccaformaggio"{
			layers["boccaformaggio"]?.removeAnimation(forKey: "boccaformaggioMovimentoboccaformaggioAnim")
		}
		else if identifier == "movimentoFormaggio"{
			layers["formaggio"]?.removeAnimation(forKey: "formaggioMovimentoFormaggioAnim")
			layers["boccaformaggio"]?.removeAnimation(forKey: "boccaformaggioMovimentoFormaggioAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			layer.removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func boccaformaggioPath(bounds: CGRect) -> UIBezierPath{
		let boccaformaggioPath = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		boccaformaggioPath.move(to: CGPoint(x:minX + 0.48972 * w, y: minY + 0.19708 * h))
		boccaformaggioPath.addCurve(to: CGPoint(x:minX, y: minY + 0.19708 * h), controlPoint1:CGPoint(x:minX + 0.21358 * w, y: minY + 0.19708 * h), controlPoint2:CGPoint(x:minX, y: minY + -0.24635 * h))
		boccaformaggioPath.addCurve(to: CGPoint(x:minX + 0.5 * w, y: minY + h), controlPoint1:CGPoint(x:minX, y: minY + 0.64052 * h), controlPoint2:CGPoint(x:minX + 0.22386 * w, y: minY + h))
		boccaformaggioPath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.19708 * h), controlPoint1:CGPoint(x:minX + 0.77614 * w, y: minY + h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.64052 * h))
		boccaformaggioPath.addCurve(to: CGPoint(x:minX + 0.48972 * w, y: minY + 0.19708 * h), controlPoint1:CGPoint(x:minX + w, y: minY + -0.24635 * h), controlPoint2:CGPoint(x:minX + 0.76587 * w, y: minY + 0.19708 * h))
		
		return boccaformaggioPath
	}
	
	
}
