//
//  appleCustomView.swift
//
//  Code generated using QuartzCode 1.63.0 on 18/12/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class appleCustomView: UIView, CAAnimationDelegate {
	
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
		self.color = UIColor(red:0.724, green: 0, blue:0, alpha:1)
	}
	
	func setupLayers(){
		self.backgroundColor = UIColor(red:1, green: 1, blue:1, alpha:0)
		
		let mela = CALayer()
		self.layer.addSublayer(mela)
		layers["mela"] = mela
		
		let boccamela = CAShapeLayer()
		self.layer.addSublayer(boccamela)
		layers["boccamela"] = boccamela
		
		resetLayerProperties(forLayerIdentifiers: nil)
		setupLayerFrames()
	}
	
	func resetLayerProperties(forLayerIdentifiers layerIds: [String]!){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if layerIds == nil || layerIds.contains("mela"){
			let mela = layers["mela"] as! CALayer
			mela.contents = UIImage(named:"mela")?.cgImage
		}
		if layerIds == nil || layerIds.contains("boccamela"){
			let boccamela = layers["boccamela"] as! CAShapeLayer
			boccamela.fillColor   = UIColor(red:0.724, green: 0, blue:0, alpha:1).cgColor
			boccamela.strokeColor = self.color.cgColor
		}
		
		CATransaction.commit()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let mela = layers["mela"]{
			mela.frame = CGRect(x: -0.36 * mela.superlayer!.bounds.width, y: 0.02773 * mela.superlayer!.bounds.height, width: 1.58 * mela.superlayer!.bounds.width, height: 0.88832 * mela.superlayer!.bounds.height)
		}
		
		if let boccamela = layers["boccamela"] as? CAShapeLayer{
			boccamela.frame = CGRect(x: 0.41326 * boccamela.superlayer!.bounds.width, y: 0.62189 * boccamela.superlayer!.bounds.height, width: 0.22348 * boccamela.superlayer!.bounds.width, height: 0.04323 * boccamela.superlayer!.bounds.height)
			boccamela.path  = boccamelaPath(bounds: layers["boccamela"]!.bounds).cgPath
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addMovimentoboccamelaAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let boccamela = layers["boccamela"] as! CAShapeLayer
		
		////Boccamela animation
		let boccamelaTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		boccamelaTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, 0.3, 1))]
		boccamelaTransformAnim.keyTimes     = [0, 1]
		boccamelaTransformAnim.duration     = 0.3
		boccamelaTransformAnim.repeatCount  = Float.infinity
		boccamelaTransformAnim.autoreverses = true
		
		let boccamelaMovimentoboccamelaAnim : CAAnimationGroup = QCMethod.group(animations: [boccamelaTransformAnim], fillMode:fillMode)
		boccamela.add(boccamelaMovimentoboccamelaAnim, forKey:"boccamelaMovimentoboccamelaAnim")
	}
	
	func addMovimentomelaAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let mela = layers["mela"] as! CALayer
		
		////Mela animation
		let melaTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		melaTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.3 * mela.superlayer!.bounds.height, 0))]
		melaTransformAnim.keyTimes     = [0, 1]
		melaTransformAnim.duration     = 0.5
		melaTransformAnim.repeatCount  = Float.infinity
		melaTransformAnim.autoreverses = true
		
		let melaMovimentomelaAnim : CAAnimationGroup = QCMethod.group(animations: [melaTransformAnim], fillMode:fillMode)
		mela.add(melaMovimentomelaAnim, forKey:"melaMovimentomelaAnim")
		
		let boccamela = layers["boccamela"] as! CAShapeLayer
		
		////Boccamela animation
		let boccamelaTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		boccamelaTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.3 * boccamela.superlayer!.bounds.height, 0))]
		boccamelaTransformAnim.keyTimes     = [0, 1]
		boccamelaTransformAnim.duration     = 0.5
		boccamelaTransformAnim.repeatCount  = Float.infinity
		boccamelaTransformAnim.autoreverses = true
		
		let boccamelaMovimentomelaAnim : CAAnimationGroup = QCMethod.group(animations: [boccamelaTransformAnim], fillMode:fillMode)
		boccamela.add(boccamelaMovimentomelaAnim, forKey:"boccamelaMovimentomelaAnim")
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
		if identifier == "movimentoboccamela"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccamela"]!.animation(forKey: "boccamelaMovimentoboccamelaAnim"), theLayer:layers["boccamela"]!)
		}
		else if identifier == "movimentomela"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["mela"]!.animation(forKey: "melaMovimentomelaAnim"), theLayer:layers["mela"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["boccamela"]!.animation(forKey: "boccamelaMovimentomelaAnim"), theLayer:layers["boccamela"]!)
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "movimentoboccamela"{
			layers["boccamela"]?.removeAnimation(forKey: "boccamelaMovimentoboccamelaAnim")
		}
		else if identifier == "movimentomela"{
			layers["mela"]?.removeAnimation(forKey: "melaMovimentomelaAnim")
			layers["boccamela"]?.removeAnimation(forKey: "boccamelaMovimentomelaAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			layer.removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func boccamelaPath(bounds: CGRect) -> UIBezierPath{
		let boccamelaPath = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		boccamelaPath.move(to: CGPoint(x:minX + 0.4885 * w, y: minY + 0.19708 * h))
		boccamelaPath.addCurve(to: CGPoint(x:minX, y: minY + 0.19708 * h), controlPoint1:CGPoint(x:minX + 0.21236 * w, y: minY + 0.19708 * h), controlPoint2:CGPoint(x:minX, y: minY + -0.24635 * h))
		boccamelaPath.addCurve(to: CGPoint(x:minX + 0.5 * w, y: minY + h), controlPoint1:CGPoint(x:minX, y: minY + 0.64052 * h), controlPoint2:CGPoint(x:minX + 0.22386 * w, y: minY + h))
		boccamelaPath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.19708 * h), controlPoint1:CGPoint(x:minX + 0.77614 * w, y: minY + h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.64052 * h))
		boccamelaPath.addCurve(to: CGPoint(x:minX + 0.4885 * w, y: minY + 0.19708 * h), controlPoint1:CGPoint(x:minX + w, y: minY + -0.24635 * h), controlPoint2:CGPoint(x:minX + 0.76464 * w, y: minY + 0.19708 * h))
		
		return boccamelaPath
	}
	
	
}
