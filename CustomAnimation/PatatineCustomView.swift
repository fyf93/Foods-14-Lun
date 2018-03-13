//
//  PatatineCustomView.swift
//
//  Code generated using QuartzCode 1.63.0 on 18/12/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class PatatineCustomView: UIView, CAAnimationDelegate {
	
	var layers = [String: CALayer]()
	var completionBlocks = [CAAnimation: (Bool) -> Void]()
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
	var color9 : UIColor!
	var color10 : UIColor!
	
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
		self.color = UIColor.red
		self.color1 = UIColor(red:0.725, green: 0, blue:0, alpha:1)
		self.color2 = UIColor.black
		self.color3 = UIColor(red:0.453, green: 0, blue:0, alpha:1)
		self.color4 = UIColor(red:0.75, green: 0.247, blue:0, alpha:1)
		self.color5 = UIColor(red:0, green: 0.244, blue:0.638, alpha:1)
		self.color6 = UIColor(red:0, green: 0.244, blue:0.638, alpha:1)
		self.color7 = UIColor(red:0, green: 0.489, blue:0.19, alpha:1)
		self.color8 = UIColor(red:0.402, green: 0, blue:0.56, alpha:1)
		self.color9 = UIColor(red:0, green: 0.489, blue:0.19, alpha:1)
		self.color10 = UIColor(red:0.488, green: 0.434, blue:0, alpha:1)
	}
	
	func setupLayers(){
		self.backgroundColor = UIColor(red:1, green: 1, blue:1, alpha:0)
		
		let patatine = CALayer()
		self.layer.addSublayer(patatine)
		patatine.contents = UIImage(named:"patatine")?.cgImage
		layers["patatine"] = patatine
		
		let Bocca = CAShapeLayer()
		self.layer.addSublayer(Bocca)
		Bocca.anchorPoint = CGPoint(x: 2.5, y: 1.2)
		Bocca.frame       = CGRect(x: 0.235 * Bocca.superlayer!.bounds.width, y: 0.22734 * Bocca.superlayer!.bounds.height, width: 0.0636 * Bocca.superlayer!.bounds.width, height: 0.00176 * Bocca.superlayer!.bounds.height)
		Bocca.fillColor   = UIColor(red:0.488, green: 0.434, blue:0, alpha:1).cgColor
		Bocca.strokeColor = UIColor(red:0.488, green: 0.434, blue:0, alpha:1).cgColor
		layers["Bocca"] = Bocca
		
		let Bocca2 = CAShapeLayer()
		self.layer.addSublayer(Bocca2)
		Bocca2.anchorPoint = CGPoint(x: 2.5, y: 1.2)
		Bocca2.frame       = CGRect(x: 0.48791 * Bocca2.superlayer!.bounds.width, y: 0.32657 * Bocca2.superlayer!.bounds.height, width: 0.0636 * Bocca2.superlayer!.bounds.width, height: 0.00176 * Bocca2.superlayer!.bounds.height)
		Bocca2.fillColor   = UIColor(red:0.488, green: 0.434, blue:0, alpha:1).cgColor
		Bocca2.strokeColor = UIColor(red:0.488, green: 0.434, blue:0, alpha:1).cgColor
		layers["Bocca2"] = Bocca2
		
		let Bocca3 = CAShapeLayer()
		self.layer.addSublayer(Bocca3)
		Bocca3.anchorPoint = CGPoint(x: 2.5, y: 1.2)
		Bocca3.frame       = CGRect(x: 0.37677 * Bocca3.superlayer!.bounds.width, y: 0.2148 * Bocca3.superlayer!.bounds.height, width: 0.03614 * Bocca3.superlayer!.bounds.width, height: 0)
		Bocca3.fillColor   = UIColor(red:0.488, green: 0.434, blue:0, alpha:1).cgColor
		Bocca3.strokeColor = UIColor(red:0.488, green: 0.434, blue:0, alpha:1).cgColor
		layers["Bocca3"] = Bocca3
		
		let Bocca4 = CAShapeLayer()
		self.layer.addSublayer(Bocca4)
		Bocca4.anchorPoint = CGPoint(x: 2.5, y: 1.2)
		Bocca4.frame       = CGRect(x: 0.35677 * Bocca4.superlayer!.bounds.width, y: 0.3758 * Bocca4.superlayer!.bounds.height, width: 0.03614 * Bocca4.superlayer!.bounds.width, height: 0)
		Bocca4.fillColor   = UIColor(red:0.488, green: 0.434, blue:0, alpha:1).cgColor
		Bocca4.strokeColor = UIColor(red:0.488, green: 0.434, blue:0, alpha:1).cgColor
		layers["Bocca4"] = Bocca4
		
		let Bocca5 = CAShapeLayer()
		self.layer.addSublayer(Bocca5)
		Bocca5.anchorPoint = CGPoint(x: 2.5, y: 1.2)
		Bocca5.frame       = CGRect(x: 0.62651 * Bocca5.superlayer!.bounds.width, y: 0.22657 * Bocca5.superlayer!.bounds.height, width: 0.03614 * Bocca5.superlayer!.bounds.width, height: 0)
		Bocca5.fillColor   = UIColor(red:0.488, green: 0.434, blue:0, alpha:1).cgColor
		Bocca5.strokeColor = UIColor(red:0.488, green: 0.434, blue:0, alpha:1).cgColor
		layers["Bocca5"] = Bocca5
		
		let Bocca6 = CAShapeLayer()
		self.layer.addSublayer(Bocca6)
		Bocca6.anchorPoint = CGPoint(x: 2.5, y: 1.2)
		Bocca6.frame       = CGRect(x: 0.73648 * Bocca6.superlayer!.bounds.width, y: 0.2198 * Bocca6.superlayer!.bounds.height, width: 0.05477 * Bocca6.superlayer!.bounds.width, height: 0.00501 * Bocca6.superlayer!.bounds.height)
		Bocca6.fillColor   = UIColor(red:0.488, green: 0.434, blue:0, alpha:1).cgColor
		Bocca6.strokeColor = UIColor(red:0.488, green: 0.434, blue:0, alpha:1).cgColor
		layers["Bocca6"] = Bocca6
		
		let Bocca7 = CAShapeLayer()
		self.layer.addSublayer(Bocca7)
		Bocca7.anchorPoint = CGPoint(x: 2.5, y: 1.2)
		Bocca7.frame       = CGRect(x: 0.61151 * Bocca7.superlayer!.bounds.width, y: 0.48503 * Bocca7.superlayer!.bounds.height, width: 0.0636 * Bocca7.superlayer!.bounds.width, height: 0.00176 * Bocca7.superlayer!.bounds.height)
		Bocca7.fillColor   = UIColor(red:0.488, green: 0.434, blue:0, alpha:1).cgColor
		Bocca7.strokeColor = UIColor(red:0.488, green: 0.434, blue:0, alpha:1).cgColor
		layers["Bocca7"] = Bocca7
		setupLayerFrames()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let patatine = layers["patatine"]{
			patatine.frame = CGRect(x: 0.17803 * patatine.superlayer!.bounds.width, y: 0.07129 * patatine.superlayer!.bounds.height, width: 0.69 * patatine.superlayer!.bounds.width, height: 0.851 * patatine.superlayer!.bounds.height)
		}
		
		if let Bocca = layers["Bocca"] as? CAShapeLayer{
			Bocca.frame = CGRect(x: 0.235 * Bocca.superlayer!.bounds.width, y: 0.22734 * Bocca.superlayer!.bounds.height, width: 0.0636 * Bocca.superlayer!.bounds.width, height: 0.00176 * Bocca.superlayer!.bounds.height)
			Bocca.path  = BoccaPath(bounds: layers["Bocca"]!.bounds).cgPath
		}
		
		if let Bocca2 = layers["Bocca2"] as? CAShapeLayer{
			Bocca2.frame = CGRect(x: 0.48791 * Bocca2.superlayer!.bounds.width, y: 0.32657 * Bocca2.superlayer!.bounds.height, width: 0.0636 * Bocca2.superlayer!.bounds.width, height: 0.00176 * Bocca2.superlayer!.bounds.height)
			Bocca2.path  = Bocca2Path(bounds: layers["Bocca2"]!.bounds).cgPath
		}
		
		if let Bocca3 = layers["Bocca3"] as? CAShapeLayer{
			Bocca3.frame = CGRect(x: 0.37677 * Bocca3.superlayer!.bounds.width, y: 0.2148 * Bocca3.superlayer!.bounds.height, width: 0.03614 * Bocca3.superlayer!.bounds.width, height: 0)
			Bocca3.path  = Bocca3Path(bounds: layers["Bocca3"]!.bounds).cgPath
		}
		
		if let Bocca4 = layers["Bocca4"] as? CAShapeLayer{
			Bocca4.frame = CGRect(x: 0.35677 * Bocca4.superlayer!.bounds.width, y: 0.3758 * Bocca4.superlayer!.bounds.height, width: 0.03614 * Bocca4.superlayer!.bounds.width, height: 0)
			Bocca4.path  = Bocca4Path(bounds: layers["Bocca4"]!.bounds).cgPath
		}
		
		if let Bocca5 = layers["Bocca5"] as? CAShapeLayer{
			Bocca5.frame = CGRect(x: 0.62651 * Bocca5.superlayer!.bounds.width, y: 0.22657 * Bocca5.superlayer!.bounds.height, width: 0.03614 * Bocca5.superlayer!.bounds.width, height: 0)
			Bocca5.path  = Bocca5Path(bounds: layers["Bocca5"]!.bounds).cgPath
		}
		
		if let Bocca6 = layers["Bocca6"] as? CAShapeLayer{
			Bocca6.frame = CGRect(x: 0.73648 * Bocca6.superlayer!.bounds.width, y: 0.2198 * Bocca6.superlayer!.bounds.height, width: 0.05477 * Bocca6.superlayer!.bounds.width, height: 0.00501 * Bocca6.superlayer!.bounds.height)
			Bocca6.path  = Bocca6Path(bounds: layers["Bocca6"]!.bounds).cgPath
		}
		
		if let Bocca7 = layers["Bocca7"] as? CAShapeLayer{
			Bocca7.frame = CGRect(x: 0.61151 * Bocca7.superlayer!.bounds.width, y: 0.48503 * Bocca7.superlayer!.bounds.height, width: 0.0636 * Bocca7.superlayer!.bounds.width, height: 0.00176 * Bocca7.superlayer!.bounds.height)
			Bocca7.path  = Bocca7Path(bounds: layers["Bocca7"]!.bounds).cgPath
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addMovimentoBoccapatatineAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let Bocca = layers["Bocca"] as! CAShapeLayer
		
		////Bocca animation
		let BoccaTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		BoccaTransformAnim.values       = [NSValue(caTransform3D: CATransform3DMakeScale(1, -1, 1)), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, -1.8, 1.07))]
		BoccaTransformAnim.keyTimes     = [0, 1]
		BoccaTransformAnim.duration     = 0.202
		BoccaTransformAnim.repeatCount  = Float.infinity
		BoccaTransformAnim.autoreverses = true
		
		let BoccaMovimentoBoccapatatineAnim : CAAnimationGroup = QCMethod.group(animations: [BoccaTransformAnim], fillMode:fillMode)
		Bocca.add(BoccaMovimentoBoccapatatineAnim, forKey:"BoccaMovimentoBoccapatatineAnim")
		
		let Bocca2 = layers["Bocca2"] as! CAShapeLayer
		
		////Bocca2 animation
		let Bocca2TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		Bocca2TransformAnim.values       = [NSValue(caTransform3D: CATransform3DMakeScale(1, -1, 1)), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, -1.8, 1.07))]
		Bocca2TransformAnim.keyTimes     = [0, 1]
		Bocca2TransformAnim.duration     = 0.202
		Bocca2TransformAnim.repeatCount  = Float.infinity
		Bocca2TransformAnim.autoreverses = true
		
		let Bocca2MovimentoBoccapatatineAnim : CAAnimationGroup = QCMethod.group(animations: [Bocca2TransformAnim], fillMode:fillMode)
		Bocca2.add(Bocca2MovimentoBoccapatatineAnim, forKey:"Bocca2MovimentoBoccapatatineAnim")
		
		let Bocca3 = layers["Bocca3"] as! CAShapeLayer
		
		////Bocca3 animation
		let Bocca3TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		Bocca3TransformAnim.values       = [NSValue(caTransform3D: CATransform3DMakeScale(1, -1, 1)), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, -1.8, 1.07))]
		Bocca3TransformAnim.keyTimes     = [0, 1]
		Bocca3TransformAnim.duration     = 0.202
		Bocca3TransformAnim.repeatCount  = Float.infinity
		Bocca3TransformAnim.autoreverses = true
		
		let Bocca3MovimentoBoccapatatineAnim : CAAnimationGroup = QCMethod.group(animations: [Bocca3TransformAnim], fillMode:fillMode)
		Bocca3.add(Bocca3MovimentoBoccapatatineAnim, forKey:"Bocca3MovimentoBoccapatatineAnim")
		
		let Bocca4 = layers["Bocca4"] as! CAShapeLayer
		
		////Bocca4 animation
		let Bocca4TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		Bocca4TransformAnim.values       = [NSValue(caTransform3D: CATransform3DMakeScale(1, -1, 1)), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, -1.8, 1.07))]
		Bocca4TransformAnim.keyTimes     = [0, 1]
		Bocca4TransformAnim.duration     = 0.202
		Bocca4TransformAnim.repeatCount  = Float.infinity
		Bocca4TransformAnim.autoreverses = true
		
		let Bocca4MovimentoBoccapatatineAnim : CAAnimationGroup = QCMethod.group(animations: [Bocca4TransformAnim], fillMode:fillMode)
		Bocca4.add(Bocca4MovimentoBoccapatatineAnim, forKey:"Bocca4MovimentoBoccapatatineAnim")
		
		let Bocca5 = layers["Bocca5"] as! CAShapeLayer
		
		////Bocca5 animation
		let Bocca5TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		Bocca5TransformAnim.values       = [NSValue(caTransform3D: CATransform3DMakeScale(1, -1, 1)), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, -1.8, 1.07))]
		Bocca5TransformAnim.keyTimes     = [0, 1]
		Bocca5TransformAnim.duration     = 0.202
		Bocca5TransformAnim.repeatCount  = Float.infinity
		Bocca5TransformAnim.autoreverses = true
		
		let Bocca5MovimentoBoccapatatineAnim : CAAnimationGroup = QCMethod.group(animations: [Bocca5TransformAnim], fillMode:fillMode)
		Bocca5.add(Bocca5MovimentoBoccapatatineAnim, forKey:"Bocca5MovimentoBoccapatatineAnim")
		
		let Bocca6 = layers["Bocca6"] as! CAShapeLayer
		
		////Bocca6 animation
		let Bocca6TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		Bocca6TransformAnim.values       = [NSValue(caTransform3D: CATransform3DMakeScale(1, -1, 1)), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, -1.8, 1.07))]
		Bocca6TransformAnim.keyTimes     = [0, 1]
		Bocca6TransformAnim.duration     = 0.202
		Bocca6TransformAnim.repeatCount  = Float.infinity
		Bocca6TransformAnim.autoreverses = true
		
		let Bocca6MovimentoBoccapatatineAnim : CAAnimationGroup = QCMethod.group(animations: [Bocca6TransformAnim], fillMode:fillMode)
		Bocca6.add(Bocca6MovimentoBoccapatatineAnim, forKey:"Bocca6MovimentoBoccapatatineAnim")
		
		let Bocca7 = layers["Bocca7"] as! CAShapeLayer
		
		////Bocca7 animation
		let Bocca7TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		Bocca7TransformAnim.values       = [NSValue(caTransform3D: CATransform3DMakeScale(1, -1, 1)), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, -1.8, 1.07))]
		Bocca7TransformAnim.keyTimes     = [0, 1]
		Bocca7TransformAnim.duration     = 0.202
		Bocca7TransformAnim.repeatCount  = Float.infinity
		Bocca7TransformAnim.autoreverses = true
		
		let Bocca7MovimentoBoccapatatineAnim : CAAnimationGroup = QCMethod.group(animations: [Bocca7TransformAnim], fillMode:fillMode)
		Bocca7.add(Bocca7MovimentoBoccapatatineAnim, forKey:"Bocca7MovimentoBoccapatatineAnim")
	}
	
	func addMovimentoPatatineAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let patatine = layers["patatine"] as! CALayer
		
		////Patatine animation
		let patatineTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		patatineTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * patatine.superlayer!.bounds.height, 0))]
		patatineTransformAnim.keyTimes     = [0, 1]
		patatineTransformAnim.duration     = 0.5
		patatineTransformAnim.repeatCount  = Float.infinity
		patatineTransformAnim.autoreverses = true
		
		let patatineMovimentoPatatineAnim : CAAnimationGroup = QCMethod.group(animations: [patatineTransformAnim], fillMode:fillMode)
		patatine.add(patatineMovimentoPatatineAnim, forKey:"patatineMovimentoPatatineAnim")
		
		let Bocca = layers["Bocca"] as! CAShapeLayer
		
		////Bocca animation
		let BoccaTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		BoccaTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * Bocca.superlayer!.bounds.height, 0))]
		BoccaTransformAnim.keyTimes     = [0, 1]
		BoccaTransformAnim.duration     = 0.5
		BoccaTransformAnim.repeatCount  = Float.infinity
		BoccaTransformAnim.autoreverses = true
		
		let BoccaMovimentoPatatineAnim : CAAnimationGroup = QCMethod.group(animations: [BoccaTransformAnim], fillMode:fillMode)
		Bocca.add(BoccaMovimentoPatatineAnim, forKey:"BoccaMovimentoPatatineAnim")
		
		let Bocca2 = layers["Bocca2"] as! CAShapeLayer
		
		////Bocca2 animation
		let Bocca2TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		Bocca2TransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * Bocca2.superlayer!.bounds.height, 0))]
		Bocca2TransformAnim.keyTimes     = [0, 1]
		Bocca2TransformAnim.duration     = 0.5
		Bocca2TransformAnim.repeatCount  = Float.infinity
		Bocca2TransformAnim.autoreverses = true
		
		let Bocca2MovimentoPatatineAnim : CAAnimationGroup = QCMethod.group(animations: [Bocca2TransformAnim], fillMode:fillMode)
		Bocca2.add(Bocca2MovimentoPatatineAnim, forKey:"Bocca2MovimentoPatatineAnim")
		
		let Bocca3 = layers["Bocca3"] as! CAShapeLayer
		
		////Bocca3 animation
		let Bocca3TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		Bocca3TransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * Bocca3.superlayer!.bounds.height, 0))]
		Bocca3TransformAnim.keyTimes     = [0, 1]
		Bocca3TransformAnim.duration     = 0.5
		Bocca3TransformAnim.repeatCount  = Float.infinity
		Bocca3TransformAnim.autoreverses = true
		
		let Bocca3MovimentoPatatineAnim : CAAnimationGroup = QCMethod.group(animations: [Bocca3TransformAnim], fillMode:fillMode)
		Bocca3.add(Bocca3MovimentoPatatineAnim, forKey:"Bocca3MovimentoPatatineAnim")
		
		let Bocca4 = layers["Bocca4"] as! CAShapeLayer
		
		////Bocca4 animation
		let Bocca4TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		Bocca4TransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * Bocca4.superlayer!.bounds.height, 0))]
		Bocca4TransformAnim.keyTimes     = [0, 1]
		Bocca4TransformAnim.duration     = 0.5
		Bocca4TransformAnim.repeatCount  = Float.infinity
		Bocca4TransformAnim.autoreverses = true
		
		let Bocca4MovimentoPatatineAnim : CAAnimationGroup = QCMethod.group(animations: [Bocca4TransformAnim], fillMode:fillMode)
		Bocca4.add(Bocca4MovimentoPatatineAnim, forKey:"Bocca4MovimentoPatatineAnim")
		
		let Bocca5 = layers["Bocca5"] as! CAShapeLayer
		
		////Bocca5 animation
		let Bocca5TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		Bocca5TransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * Bocca5.superlayer!.bounds.height, 0))]
		Bocca5TransformAnim.keyTimes     = [0, 1]
		Bocca5TransformAnim.duration     = 0.5
		Bocca5TransformAnim.repeatCount  = Float.infinity
		Bocca5TransformAnim.autoreverses = true
		
		let Bocca5MovimentoPatatineAnim : CAAnimationGroup = QCMethod.group(animations: [Bocca5TransformAnim], fillMode:fillMode)
		Bocca5.add(Bocca5MovimentoPatatineAnim, forKey:"Bocca5MovimentoPatatineAnim")
		
		let Bocca6 = layers["Bocca6"] as! CAShapeLayer
		
		////Bocca6 animation
		let Bocca6TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		Bocca6TransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * Bocca6.superlayer!.bounds.height, 0))]
		Bocca6TransformAnim.keyTimes     = [0, 1]
		Bocca6TransformAnim.duration     = 0.5
		Bocca6TransformAnim.repeatCount  = Float.infinity
		Bocca6TransformAnim.autoreverses = true
		
		let Bocca6MovimentoPatatineAnim : CAAnimationGroup = QCMethod.group(animations: [Bocca6TransformAnim], fillMode:fillMode)
		Bocca6.add(Bocca6MovimentoPatatineAnim, forKey:"Bocca6MovimentoPatatineAnim")
		
		let Bocca7 = layers["Bocca7"] as! CAShapeLayer
		
		////Bocca7 animation
		let Bocca7TransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		Bocca7TransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.1 * Bocca7.superlayer!.bounds.height, 0))]
		Bocca7TransformAnim.keyTimes     = [0, 1]
		Bocca7TransformAnim.duration     = 0.5
		Bocca7TransformAnim.repeatCount  = Float.infinity
		Bocca7TransformAnim.autoreverses = true
		
		let Bocca7MovimentoPatatineAnim : CAAnimationGroup = QCMethod.group(animations: [Bocca7TransformAnim], fillMode:fillMode)
		Bocca7.add(Bocca7MovimentoPatatineAnim, forKey:"Bocca7MovimentoPatatineAnim")
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
		if identifier == "movimentoBoccapatatine"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Bocca"]!.animation(forKey: "BoccaMovimentoBoccapatatineAnim"), theLayer:layers["Bocca"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Bocca2"]!.animation(forKey: "Bocca2MovimentoBoccapatatineAnim"), theLayer:layers["Bocca2"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Bocca3"]!.animation(forKey: "Bocca3MovimentoBoccapatatineAnim"), theLayer:layers["Bocca3"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Bocca4"]!.animation(forKey: "Bocca4MovimentoBoccapatatineAnim"), theLayer:layers["Bocca4"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Bocca5"]!.animation(forKey: "Bocca5MovimentoBoccapatatineAnim"), theLayer:layers["Bocca5"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Bocca6"]!.animation(forKey: "Bocca6MovimentoBoccapatatineAnim"), theLayer:layers["Bocca6"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Bocca7"]!.animation(forKey: "Bocca7MovimentoBoccapatatineAnim"), theLayer:layers["Bocca7"]!)
		}
		else if identifier == "movimentoPatatine"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["patatine"]!.animation(forKey: "patatineMovimentoPatatineAnim"), theLayer:layers["patatine"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Bocca"]!.animation(forKey: "BoccaMovimentoPatatineAnim"), theLayer:layers["Bocca"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Bocca2"]!.animation(forKey: "Bocca2MovimentoPatatineAnim"), theLayer:layers["Bocca2"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Bocca3"]!.animation(forKey: "Bocca3MovimentoPatatineAnim"), theLayer:layers["Bocca3"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Bocca4"]!.animation(forKey: "Bocca4MovimentoPatatineAnim"), theLayer:layers["Bocca4"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Bocca5"]!.animation(forKey: "Bocca5MovimentoPatatineAnim"), theLayer:layers["Bocca5"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Bocca6"]!.animation(forKey: "Bocca6MovimentoPatatineAnim"), theLayer:layers["Bocca6"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Bocca7"]!.animation(forKey: "Bocca7MovimentoPatatineAnim"), theLayer:layers["Bocca7"]!)
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "movimentoBoccapatatine"{
			layers["Bocca"]?.removeAnimation(forKey: "BoccaMovimentoBoccapatatineAnim")
			layers["Bocca2"]?.removeAnimation(forKey: "Bocca2MovimentoBoccapatatineAnim")
			layers["Bocca3"]?.removeAnimation(forKey: "Bocca3MovimentoBoccapatatineAnim")
			layers["Bocca4"]?.removeAnimation(forKey: "Bocca4MovimentoBoccapatatineAnim")
			layers["Bocca5"]?.removeAnimation(forKey: "Bocca5MovimentoBoccapatatineAnim")
			layers["Bocca6"]?.removeAnimation(forKey: "Bocca6MovimentoBoccapatatineAnim")
			layers["Bocca7"]?.removeAnimation(forKey: "Bocca7MovimentoBoccapatatineAnim")
		}
		else if identifier == "movimentoPatatine"{
			layers["patatine"]?.removeAnimation(forKey: "patatineMovimentoPatatineAnim")
			layers["Bocca"]?.removeAnimation(forKey: "BoccaMovimentoPatatineAnim")
			layers["Bocca2"]?.removeAnimation(forKey: "Bocca2MovimentoPatatineAnim")
			layers["Bocca3"]?.removeAnimation(forKey: "Bocca3MovimentoPatatineAnim")
			layers["Bocca4"]?.removeAnimation(forKey: "Bocca4MovimentoPatatineAnim")
			layers["Bocca5"]?.removeAnimation(forKey: "Bocca5MovimentoPatatineAnim")
			layers["Bocca6"]?.removeAnimation(forKey: "Bocca6MovimentoPatatineAnim")
			layers["Bocca7"]?.removeAnimation(forKey: "Bocca7MovimentoPatatineAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			layer.removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func BoccaPath(bounds: CGRect) -> UIBezierPath{
		let BoccaPath = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		BoccaPath.move(to: CGPoint(x:minX + 0.50161 * w, y: minY + h))
		BoccaPath.addCurve(to: CGPoint(x:minX, y: minY + 0.00193 * h), controlPoint1:CGPoint(x:minX + 0.22547 * w, y: minY + h), controlPoint2:CGPoint(x:minX, y: minY + -0.05099 * h))
		BoccaPath.addCurve(to: CGPoint(x:minX + 0.5 * w, y: minY + 0.09776 * h), controlPoint1:CGPoint(x:minX, y: minY + 0.05486 * h), controlPoint2:CGPoint(x:minX + 0.22386 * w, y: minY + 0.09776 * h))
		BoccaPath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.00193 * h), controlPoint1:CGPoint(x:minX + 0.77614 * w, y: minY + 0.09776 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.05486 * h))
		BoccaPath.addCurve(to: CGPoint(x:minX + 0.50161 * w, y: minY + h), controlPoint1:CGPoint(x:minX + w, y: minY + -0.05099 * h), controlPoint2:CGPoint(x:minX + 0.77776 * w, y: minY + h))
		
		return BoccaPath
	}
	
	func Bocca2Path(bounds: CGRect) -> UIBezierPath{
		let Bocca2Path = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		Bocca2Path.move(to: CGPoint(x:minX + 0.50161 * w, y: minY + h))
		Bocca2Path.addCurve(to: CGPoint(x:minX, y: minY + 0.00193 * h), controlPoint1:CGPoint(x:minX + 0.22547 * w, y: minY + h), controlPoint2:CGPoint(x:minX, y: minY + -0.05099 * h))
		Bocca2Path.addCurve(to: CGPoint(x:minX + 0.5 * w, y: minY + 0.09776 * h), controlPoint1:CGPoint(x:minX, y: minY + 0.05486 * h), controlPoint2:CGPoint(x:minX + 0.22386 * w, y: minY + 0.09776 * h))
		Bocca2Path.addCurve(to: CGPoint(x:minX + w, y: minY + 0.00193 * h), controlPoint1:CGPoint(x:minX + 0.77614 * w, y: minY + 0.09776 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.05486 * h))
		Bocca2Path.addCurve(to: CGPoint(x:minX + 0.50161 * w, y: minY + h), controlPoint1:CGPoint(x:minX + w, y: minY + -0.05099 * h), controlPoint2:CGPoint(x:minX + 0.77776 * w, y: minY + h))
		
		return Bocca2Path
	}
	
	func Bocca3Path(bounds: CGRect) -> UIBezierPath{
		let Bocca3Path = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		Bocca3Path.move(to: CGPoint(x:minX + 0.50161 * w, y: minY + 0 * h))
		Bocca3Path.addCurve(to: CGPoint(x:minX, y: minY + 0 * h), controlPoint1:CGPoint(x:minX + 0.22547 * w, y: minY + 0 * h), controlPoint2:CGPoint(x:minX, y: minY + 0 * h))
		Bocca3Path.addCurve(to: CGPoint(x:minX + 0.5 * w, y: minY + 0 * h), controlPoint1:CGPoint(x:minX, y: minY + 0 * h), controlPoint2:CGPoint(x:minX + 0.22386 * w, y: minY + 0 * h))
		Bocca3Path.addCurve(to: CGPoint(x:minX + w, y: minY + 0 * h), controlPoint1:CGPoint(x:minX + 0.77614 * w, y: minY + 0 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 0 * h))
		Bocca3Path.addCurve(to: CGPoint(x:minX + 0.50161 * w, y: minY + 0 * h), controlPoint1:CGPoint(x:minX + w, y: minY + 0 * h), controlPoint2:CGPoint(x:minX + 0.77776 * w, y: minY + 0 * h))
		
		return Bocca3Path
	}
	
	func Bocca4Path(bounds: CGRect) -> UIBezierPath{
		let Bocca4Path = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		Bocca4Path.move(to: CGPoint(x:minX + 0.50161 * w, y: minY + 0 * h))
		Bocca4Path.addCurve(to: CGPoint(x:minX, y: minY + 0 * h), controlPoint1:CGPoint(x:minX + 0.22547 * w, y: minY + 0 * h), controlPoint2:CGPoint(x:minX, y: minY + 0 * h))
		Bocca4Path.addCurve(to: CGPoint(x:minX + 0.5 * w, y: minY + 0 * h), controlPoint1:CGPoint(x:minX, y: minY + 0 * h), controlPoint2:CGPoint(x:minX + 0.22386 * w, y: minY + 0 * h))
		Bocca4Path.addCurve(to: CGPoint(x:minX + w, y: minY + 0 * h), controlPoint1:CGPoint(x:minX + 0.77614 * w, y: minY + 0 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 0 * h))
		Bocca4Path.addCurve(to: CGPoint(x:minX + 0.50161 * w, y: minY + 0 * h), controlPoint1:CGPoint(x:minX + w, y: minY + 0 * h), controlPoint2:CGPoint(x:minX + 0.77776 * w, y: minY + 0 * h))
		
		return Bocca4Path
	}
	
	func Bocca5Path(bounds: CGRect) -> UIBezierPath{
		let Bocca5Path = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		Bocca5Path.move(to: CGPoint(x:minX + 0.50161 * w, y: minY + 0 * h))
		Bocca5Path.addCurve(to: CGPoint(x:minX, y: minY + 0 * h), controlPoint1:CGPoint(x:minX + 0.22547 * w, y: minY + 0 * h), controlPoint2:CGPoint(x:minX, y: minY + 0 * h))
		Bocca5Path.addCurve(to: CGPoint(x:minX + 0.5 * w, y: minY + 0 * h), controlPoint1:CGPoint(x:minX, y: minY + 0 * h), controlPoint2:CGPoint(x:minX + 0.22386 * w, y: minY + 0 * h))
		Bocca5Path.addCurve(to: CGPoint(x:minX + w, y: minY + 0 * h), controlPoint1:CGPoint(x:minX + 0.77614 * w, y: minY + 0 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 0 * h))
		Bocca5Path.addCurve(to: CGPoint(x:minX + 0.50161 * w, y: minY + 0 * h), controlPoint1:CGPoint(x:minX + w, y: minY + 0 * h), controlPoint2:CGPoint(x:minX + 0.77776 * w, y: minY + 0 * h))
		
		return Bocca5Path
	}
	
	func Bocca6Path(bounds: CGRect) -> UIBezierPath{
		let Bocca6Path = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		Bocca6Path.move(to: CGPoint(x:minX + 0.50161 * w, y: minY + h))
		Bocca6Path.addCurve(to: CGPoint(x:minX, y: minY + 0.00193 * h), controlPoint1:CGPoint(x:minX + 0.22547 * w, y: minY + h), controlPoint2:CGPoint(x:minX, y: minY + -0.05099 * h))
		Bocca6Path.addCurve(to: CGPoint(x:minX + 0.5 * w, y: minY + 0.09776 * h), controlPoint1:CGPoint(x:minX, y: minY + 0.05486 * h), controlPoint2:CGPoint(x:minX + 0.22386 * w, y: minY + 0.09776 * h))
		Bocca6Path.addCurve(to: CGPoint(x:minX + w, y: minY + 0.00193 * h), controlPoint1:CGPoint(x:minX + 0.77614 * w, y: minY + 0.09776 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.05486 * h))
		Bocca6Path.addCurve(to: CGPoint(x:minX + 0.50161 * w, y: minY + h), controlPoint1:CGPoint(x:minX + w, y: minY + -0.05099 * h), controlPoint2:CGPoint(x:minX + 0.77776 * w, y: minY + h))
		
		return Bocca6Path
	}
	
	func Bocca7Path(bounds: CGRect) -> UIBezierPath{
		let Bocca7Path = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		Bocca7Path.move(to: CGPoint(x:minX + 0.50161 * w, y: minY + h))
		Bocca7Path.addCurve(to: CGPoint(x:minX, y: minY + 0.00193 * h), controlPoint1:CGPoint(x:minX + 0.22547 * w, y: minY + h), controlPoint2:CGPoint(x:minX, y: minY + -0.05099 * h))
		Bocca7Path.addCurve(to: CGPoint(x:minX + 0.5 * w, y: minY + 0.09776 * h), controlPoint1:CGPoint(x:minX, y: minY + 0.05486 * h), controlPoint2:CGPoint(x:minX + 0.22386 * w, y: minY + 0.09776 * h))
		Bocca7Path.addCurve(to: CGPoint(x:minX + w, y: minY + 0.00193 * h), controlPoint1:CGPoint(x:minX + 0.77614 * w, y: minY + 0.09776 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.05486 * h))
		Bocca7Path.addCurve(to: CGPoint(x:minX + 0.50161 * w, y: minY + h), controlPoint1:CGPoint(x:minX + w, y: minY + -0.05099 * h), controlPoint2:CGPoint(x:minX + 0.77776 * w, y: minY + h))
		
		return Bocca7Path
	}
	
	
}
