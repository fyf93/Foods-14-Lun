//
//  CaramelleCustomView.swift
//
//  Code generated using QuartzCode 1.57.0 on 09/03/18.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class CaramelleCustomView: UIView, CAAnimationDelegate {
	
	var layers : Dictionary<String, AnyObject> = [:]
	var completionBlocks : Dictionary<CAAnimation, (Bool) -> Void> = [:]
	var updateLayerValueForCompletedAnimation : Bool = false
	
	var color : UIColor!
	var color1 : UIColor!
	var color2 : UIColor!
	var color3 : UIColor!
	var color4 : UIColor!
	var color5 : UIColor!
	var color6 : UIColor!
	var color7 : UIColor!
	var color8 : UIColor!
	
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
		self.color = UIColor(red:0.937, green: 0.0263, blue:0, alpha:1)
		self.color1 = UIColor(red:0.662, green: 0.0188, blue:0.00636, alpha:1)
		self.color2 = UIColor.black
		self.color3 = UIColor(red:0.412, green: 0.0117, blue:0.00396, alpha:1)
		self.color4 = UIColor(red:0.693, green: 0.283, blue:0.0654, alpha:1)
		self.color5 = UIColor(red:0, green: 0.239, blue:0.614, alpha:1)
		self.color6 = UIColor(red:0, green: 0.239, blue:0.614, alpha:1)
		self.color7 = UIColor(red:0, green: 0.479, blue:0.225, alpha:1)
		self.color8 = UIColor(red:0.365, green: 0.0116, blue:0.538, alpha:1)
	}
	
	func setupLayers(){
		self.backgroundColor = UIColor(red:0.995, green: 0.99, blue:1, alpha:0)
		
		let caramelle = CALayer()
		self.layer.addSublayer(caramelle)
		caramelle.contents = UIImage(named:"caramelle")?.cgImage
		layers["caramelle"] = caramelle
		
		let caramellabocca = CAShapeLayer()
		self.layer.addSublayer(caramellabocca)
		caramellabocca.fillColor   = self.color5.cgColor
		caramellabocca.strokeColor = self.color5.cgColor
		layers["caramellabocca"] = caramellabocca
		
		let caramellabocca2 = CAShapeLayer()
		self.layer.addSublayer(caramellabocca2)
		caramellabocca2.fillColor   = self.color7.cgColor
		caramellabocca2.strokeColor = self.color7.cgColor
		layers["caramellabocca2"] = caramellabocca2
		
		let caramellabocca3 = CAShapeLayer()
		self.layer.addSublayer(caramellabocca3)
		caramellabocca3.fillColor   = self.color8.cgColor
		caramellabocca3.strokeColor = self.color8.cgColor
		layers["caramellabocca3"] = caramellabocca3
		setupLayerFrames()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let caramelle : CALayer = layers["caramelle"] as? CALayer{
			caramelle.frame = CGRect(x: 0.01 * caramelle.superlayer!.bounds.width, y: -0.16858 * caramelle.superlayer!.bounds.height, width:  caramelle.superlayer!.bounds.width, height: 1.35894 * caramelle.superlayer!.bounds.height)
		}
		
		if let caramellabocca : CAShapeLayer = layers["caramellabocca"] as? CAShapeLayer{
			caramellabocca.frame = CGRect(x: 0.235 * caramellabocca.superlayer!.bounds.width, y: 0.28392 * caramellabocca.superlayer!.bounds.height, width: 0.13427 * caramellabocca.superlayer!.bounds.width, height: 0.09831 * caramellabocca.superlayer!.bounds.height)
			caramellabocca.path  = caramellaboccaPath(bounds: (layers["caramellabocca"] as! CAShapeLayer).bounds).cgPath
		}
		
		if let caramellabocca2 : CAShapeLayer = layers["caramellabocca2"] as? CAShapeLayer{
			caramellabocca2.frame = CGRect(x: 0.645 * caramellabocca2.superlayer!.bounds.width, y: 0.50166 * caramellabocca2.superlayer!.bounds.height, width: 0.13427 * caramellabocca2.superlayer!.bounds.width, height: 0.09831 * caramellabocca2.superlayer!.bounds.height)
			caramellabocca2.path  = caramellabocca2Path(bounds: (layers["caramellabocca2"] as! CAShapeLayer).bounds).cgPath
		}
		
		if let caramellabocca3 : CAShapeLayer = layers["caramellabocca3"] as? CAShapeLayer{
			caramellabocca3.frame = CGRect(x: 0.335 * caramellabocca3.superlayer!.bounds.width, y: 0.84259 * caramellabocca3.superlayer!.bounds.height, width: 0.13427 * caramellabocca3.superlayer!.bounds.width, height: 0.09831 * caramellabocca3.superlayer!.bounds.height)
			caramellabocca3.path  = caramellabocca3Path(bounds: (layers["caramellabocca3"] as! CAShapeLayer).bounds).cgPath
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addMovimentoCaramelleBoccaAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let caramellabocca = layers["caramellabocca"] as! CAShapeLayer
		
		////Caramellabocca animation
		let caramellaboccaTransformAnim      = CAKeyframeAnimation(keyPath:"transform")
		caramellaboccaTransformAnim.values   = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, 0.44, 1))]
		caramellaboccaTransformAnim.keyTimes = [0, 1]
		caramellaboccaTransformAnim.duration = 0.302
		caramellaboccaTransformAnim.repeatCount = Float.infinity
		caramellaboccaTransformAnim.autoreverses = true
		
		let caramellaboccaMovimentoCaramelleBoccaAnim : CAAnimationGroup = QCMethod.group(animations: [caramellaboccaTransformAnim], fillMode:fillMode)
		caramellabocca.add(caramellaboccaMovimentoCaramelleBoccaAnim, forKey:"caramellaboccaMovimentoCaramelleBoccaAnim")
		
		let caramellabocca2 = layers["caramellabocca2"] as! CAShapeLayer
		
		////Caramellabocca2 animation
		let caramellabocca2TransformAnim      = CAKeyframeAnimation(keyPath:"transform")
		caramellabocca2TransformAnim.values   = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, 0.44, 1))]
		caramellabocca2TransformAnim.keyTimes = [0, 1]
		caramellabocca2TransformAnim.duration = 0.302
		caramellabocca2TransformAnim.repeatCount = Float.infinity
		caramellabocca2TransformAnim.autoreverses = true
		
		let caramellabocca2MovimentoCaramelleBoccaAnim : CAAnimationGroup = QCMethod.group(animations: [caramellabocca2TransformAnim], fillMode:fillMode)
		caramellabocca2.add(caramellabocca2MovimentoCaramelleBoccaAnim, forKey:"caramellabocca2MovimentoCaramelleBoccaAnim")
		
		let caramellabocca3 = layers["caramellabocca3"] as! CAShapeLayer
		
		////Caramellabocca3 animation
		let caramellabocca3TransformAnim      = CAKeyframeAnimation(keyPath:"transform")
		caramellabocca3TransformAnim.values   = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, 0.44, 1))]
		caramellabocca3TransformAnim.keyTimes = [0, 1]
		caramellabocca3TransformAnim.duration = 0.302
		caramellabocca3TransformAnim.repeatCount = Float.infinity
		caramellabocca3TransformAnim.autoreverses = true
		
		let caramellabocca3MovimentoCaramelleBoccaAnim : CAAnimationGroup = QCMethod.group(animations: [caramellabocca3TransformAnim], fillMode:fillMode)
		caramellabocca3.add(caramellabocca3MovimentoCaramelleBoccaAnim, forKey:"caramellabocca3MovimentoCaramelleBoccaAnim")
	}
	
	func addMovimentoCaramelleAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let caramelle = layers["caramelle"] as! CALayer
		
		////Caramelle animation
		let caramelleTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		caramelleTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.19231 * caramelle.superlayer!.bounds.height, 0))]
		caramelleTransformAnim.keyTimes     = [0, 1]
		caramelleTransformAnim.duration     = 0.5
		caramelleTransformAnim.repeatCount  = Float.infinity
		caramelleTransformAnim.autoreverses = true
		
		let caramelleMovimentoCaramelleAnim : CAAnimationGroup = QCMethod.group(animations: [caramelleTransformAnim], fillMode:fillMode)
		caramelle.add(caramelleMovimentoCaramelleAnim, forKey:"caramelleMovimentoCaramelleAnim")
		
		let caramellabocca = layers["caramellabocca"] as! CAShapeLayer
		
		////Caramellabocca animation
		let caramellaboccaTransformAnim      = CAKeyframeAnimation(keyPath:"transform")
		caramellaboccaTransformAnim.values   = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.19231 * caramellabocca.superlayer!.bounds.height, 0))]
		caramellaboccaTransformAnim.keyTimes = [0, 1]
		caramellaboccaTransformAnim.duration = 0.5
		caramellaboccaTransformAnim.repeatCount = Float.infinity
		caramellaboccaTransformAnim.autoreverses = true
		
		let caramellaboccaMovimentoCaramelleAnim : CAAnimationGroup = QCMethod.group(animations: [caramellaboccaTransformAnim], fillMode:fillMode)
		caramellabocca.add(caramellaboccaMovimentoCaramelleAnim, forKey:"caramellaboccaMovimentoCaramelleAnim")
		
		let caramellabocca2 = layers["caramellabocca2"] as! CAShapeLayer
		
		////Caramellabocca2 animation
		let caramellabocca2TransformAnim      = CAKeyframeAnimation(keyPath:"transform")
		caramellabocca2TransformAnim.values   = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.19231 * caramellabocca2.superlayer!.bounds.height, 0))]
		caramellabocca2TransformAnim.keyTimes = [0, 1]
		caramellabocca2TransformAnim.duration = 0.5
		caramellabocca2TransformAnim.repeatCount = Float.infinity
		caramellabocca2TransformAnim.autoreverses = true
		
		let caramellabocca2MovimentoCaramelleAnim : CAAnimationGroup = QCMethod.group(animations: [caramellabocca2TransformAnim], fillMode:fillMode)
		caramellabocca2.add(caramellabocca2MovimentoCaramelleAnim, forKey:"caramellabocca2MovimentoCaramelleAnim")
		
		let caramellabocca3 = layers["caramellabocca3"] as! CAShapeLayer
		
		////Caramellabocca3 animation
		let caramellabocca3TransformAnim      = CAKeyframeAnimation(keyPath:"transform")
		caramellabocca3TransformAnim.values   = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.19231 * caramellabocca3.superlayer!.bounds.height, 0))]
		caramellabocca3TransformAnim.keyTimes = [0, 1]
		caramellabocca3TransformAnim.duration = 0.5
		caramellabocca3TransformAnim.repeatCount = Float.infinity
		caramellabocca3TransformAnim.autoreverses = true
		
		let caramellabocca3MovimentoCaramelleAnim : CAAnimationGroup = QCMethod.group(animations: [caramellabocca3TransformAnim], fillMode:fillMode)
		caramellabocca3.add(caramellabocca3MovimentoCaramelleAnim, forKey:"caramellabocca3MovimentoCaramelleAnim")
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
		if identifier == "movimentoCaramelleBocca"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["caramellabocca"] as! CALayer).animation(forKey: "caramellaboccaMovimentoCaramelleBoccaAnim"), theLayer:(layers["caramellabocca"] as! CALayer))
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["caramellabocca2"] as! CALayer).animation(forKey: "caramellabocca2MovimentoCaramelleBoccaAnim"), theLayer:(layers["caramellabocca2"] as! CALayer))
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["caramellabocca3"] as! CALayer).animation(forKey: "caramellabocca3MovimentoCaramelleBoccaAnim"), theLayer:(layers["caramellabocca3"] as! CALayer))
		}
		else if identifier == "movimentoCaramelle"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["caramelle"] as! CALayer).animation(forKey: "caramelleMovimentoCaramelleAnim"), theLayer:(layers["caramelle"] as! CALayer))
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["caramellabocca"] as! CALayer).animation(forKey: "caramellaboccaMovimentoCaramelleAnim"), theLayer:(layers["caramellabocca"] as! CALayer))
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["caramellabocca2"] as! CALayer).animation(forKey: "caramellabocca2MovimentoCaramelleAnim"), theLayer:(layers["caramellabocca2"] as! CALayer))
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["caramellabocca3"] as! CALayer).animation(forKey: "caramellabocca3MovimentoCaramelleAnim"), theLayer:(layers["caramellabocca3"] as! CALayer))
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "movimentoCaramelleBocca"{
			(layers["caramellabocca"] as! CALayer).removeAnimation(forKey: "caramellaboccaMovimentoCaramelleBoccaAnim")
			(layers["caramellabocca2"] as! CALayer).removeAnimation(forKey: "caramellabocca2MovimentoCaramelleBoccaAnim")
			(layers["caramellabocca3"] as! CALayer).removeAnimation(forKey: "caramellabocca3MovimentoCaramelleBoccaAnim")
		}
		else if identifier == "movimentoCaramelle"{
			(layers["caramelle"] as! CALayer).removeAnimation(forKey: "caramelleMovimentoCaramelleAnim")
			(layers["caramellabocca"] as! CALayer).removeAnimation(forKey: "caramellaboccaMovimentoCaramelleAnim")
			(layers["caramellabocca2"] as! CALayer).removeAnimation(forKey: "caramellabocca2MovimentoCaramelleAnim")
			(layers["caramellabocca3"] as! CALayer).removeAnimation(forKey: "caramellabocca3MovimentoCaramelleAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			(layer as! CALayer).removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func caramellaboccaPath(bounds: CGRect) -> UIBezierPath{
		let caramellaboccaPath = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		caramellaboccaPath.move(to: CGPoint(x:minX + 0.47691 * w, y: minY))
		caramellaboccaPath.addCurve(to: CGPoint(x:minX, y: minY + 0.89067 * h), controlPoint1:CGPoint(x:minX + 0.20077 * w, y: minY), controlPoint2:CGPoint(x:minX, y: minY + 0.72861 * h))
		caramellaboccaPath.addCurve(to: CGPoint(x:minX + 0.51189 * w, y: minY + 0.89067 * h), controlPoint1:CGPoint(x:minX, y: minY + 1.05273 * h), controlPoint2:CGPoint(x:minX + 0.23575 * w, y: minY + 0.89067 * h))
		caramellaboccaPath.addCurve(to: CGPoint(x:minX + 0.99999 * w, y: minY + 0.89067 * h), controlPoint1:CGPoint(x:minX + 0.78803 * w, y: minY + 0.89067 * h), controlPoint2:CGPoint(x:minX + 1.00175 * w, y: minY + 1.13666 * h))
		caramellaboccaPath.addCurve(to: CGPoint(x:minX + 0.47691 * w, y: minY), controlPoint1:CGPoint(x:minX + 0.99823 * w, y: minY + 0.64467 * h), controlPoint2:CGPoint(x:minX + 0.75305 * w, y: minY))
		
		return caramellaboccaPath
	}
	
	func caramellabocca2Path(bounds: CGRect) -> UIBezierPath{
		let caramellabocca2Path = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		caramellabocca2Path.move(to: CGPoint(x:minX + 0.47691 * w, y: minY))
		caramellabocca2Path.addCurve(to: CGPoint(x:minX, y: minY + 0.89067 * h), controlPoint1:CGPoint(x:minX + 0.20077 * w, y: minY), controlPoint2:CGPoint(x:minX, y: minY + 0.72861 * h))
		caramellabocca2Path.addCurve(to: CGPoint(x:minX + 0.51189 * w, y: minY + 0.89067 * h), controlPoint1:CGPoint(x:minX, y: minY + 1.05273 * h), controlPoint2:CGPoint(x:minX + 0.23575 * w, y: minY + 0.89067 * h))
		caramellabocca2Path.addCurve(to: CGPoint(x:minX + 0.99999 * w, y: minY + 0.89067 * h), controlPoint1:CGPoint(x:minX + 0.78803 * w, y: minY + 0.89067 * h), controlPoint2:CGPoint(x:minX + 1.00175 * w, y: minY + 1.13666 * h))
		caramellabocca2Path.addCurve(to: CGPoint(x:minX + 0.47691 * w, y: minY), controlPoint1:CGPoint(x:minX + 0.99823 * w, y: minY + 0.64467 * h), controlPoint2:CGPoint(x:minX + 0.75305 * w, y: minY))
		
		return caramellabocca2Path
	}
	
	func caramellabocca3Path(bounds: CGRect) -> UIBezierPath{
		let caramellabocca3Path = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		caramellabocca3Path.move(to: CGPoint(x:minX + 0.47691 * w, y: minY))
		caramellabocca3Path.addCurve(to: CGPoint(x:minX, y: minY + 0.89067 * h), controlPoint1:CGPoint(x:minX + 0.20077 * w, y: minY), controlPoint2:CGPoint(x:minX, y: minY + 0.72861 * h))
		caramellabocca3Path.addCurve(to: CGPoint(x:minX + 0.51189 * w, y: minY + 0.89067 * h), controlPoint1:CGPoint(x:minX, y: minY + 1.05273 * h), controlPoint2:CGPoint(x:minX + 0.23575 * w, y: minY + 0.89067 * h))
		caramellabocca3Path.addCurve(to: CGPoint(x:minX + 0.99999 * w, y: minY + 0.89067 * h), controlPoint1:CGPoint(x:minX + 0.78803 * w, y: minY + 0.89067 * h), controlPoint2:CGPoint(x:minX + 1.00175 * w, y: minY + 1.13666 * h))
		caramellabocca3Path.addCurve(to: CGPoint(x:minX + 0.47691 * w, y: minY), controlPoint1:CGPoint(x:minX + 0.99823 * w, y: minY + 0.64467 * h), controlPoint2:CGPoint(x:minX + 0.75305 * w, y: minY))
		
		return caramellabocca3Path
	}
	
	
}
