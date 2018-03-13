//
//  UovoCustomView.swift
//
//  Code generated using QuartzCode 1.63.0 on 19/12/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class UovoCustomView: UIView, CAAnimationDelegate {
	
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
		self.color = UIColor(red:0.978, green: 0.708, blue:0.306, alpha:1)
		self.color1 = UIColor(red:0.299, green: 0.297, blue:0.301, alpha:1)
		self.color2 = UIColor(red:0.76, green: 0.666, blue:0.567, alpha:1)
		self.color3 = UIColor(red:0.995, green: 0.988, blue:1, alpha:1)
		self.color4 = UIColor(red:0.949, green: 0.882, blue:0.541, alpha:1)
		self.color5 = UIColor(red:1, green: 0.937, blue:0.872, alpha:1)
		self.color6 = UIColor(red:0.978, green: 0.708, blue:0.306, alpha:1)
		self.color7 = UIColor(red:0.478, green: 0.475, blue:0.481, alpha:1)
		self.color8 = UIColor(red:0.962, green: 0.811, blue:0.445, alpha:1)
	}
	
	func setupLayers(){
		self.backgroundColor = UIColor(red:1, green: 1, blue:1, alpha:0)
		
		let padella = CALayer()
		self.layer.addSublayer(padella)
		padella.contents = UIImage(named:"padella")?.cgImage
		layers["padella"] = padella
		
		let albume = CAShapeLayer()
		self.layer.addSublayer(albume)
		albume.fillColor   = self.color3.cgColor
		albume.strokeColor = self.color4.cgColor
		layers["albume"] = albume
		
		let tuorlo = CAShapeLayer()
		self.layer.addSublayer(tuorlo)
		tuorlo.fillColor   = self.color2.cgColor
		tuorlo.strokeColor = self.color1.cgColor
		layers["tuorlo"] = tuorlo
		
		let interno = CAShapeLayer()
		self.layer.addSublayer(interno)
		interno.opacity     = 0.4
		interno.fillColor   = self.color4.cgColor
		interno.strokeColor = self.color4.cgColor
		layers["interno"] = interno
		
		let play = CAShapeLayer()
		self.layer.addSublayer(play)
		play.fillColor   = self.color3.cgColor
		play.strokeColor = self.color1.cgColor
		layers["play"] = play
		
		let title = CALayer()
		self.layer.addSublayer(title)
		title.contents = UIImage(named:"title")?.cgImage
		layers["title"] = title
		
		let oval = CAShapeLayer()
		self.layer.addSublayer(oval)
		oval.fillColor   = UIColor(red:1, green: 0.937, blue:0.872, alpha:1).cgColor
		oval.strokeColor = UIColor(red:0.404, green: 0.404, blue:0.404, alpha:1).cgColor
		oval.lineWidth   = 0
		layers["oval"] = oval
		
		let oval2 = CAShapeLayer()
		self.layer.addSublayer(oval2)
		oval2.setValue(-180 * CGFloat.pi/180, forKeyPath:"transform.rotation")
		oval2.fillColor   = UIColor(red:1, green: 0.937, blue:0.872, alpha:1).cgColor
		oval2.strokeColor = UIColor(red:0.404, green: 0.404, blue:0.404, alpha:1).cgColor
		oval2.lineWidth   = 0
		layers["oval2"] = oval2
		setupLayerFrames()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let padella = layers["padella"]{
			padella.frame = CGRect(x: 0.13557 * padella.superlayer!.bounds.width, y: 0.17824 * padella.superlayer!.bounds.height, width: 0.86443 * padella.superlayer!.bounds.width, height: 0.86444 * padella.superlayer!.bounds.height)
		}
		
		if let albume = layers["albume"] as? CAShapeLayer{
			albume.frame = CGRect(x: 0.34028 * albume.superlayer!.bounds.width, y: 0.50286 * albume.superlayer!.bounds.height, width: 0.28361 * albume.superlayer!.bounds.width, height: 0.25691 * albume.superlayer!.bounds.height)
			albume.path  = albumePath(bounds: layers["albume"]!.bounds).cgPath
		}
		
		if let tuorlo = layers["tuorlo"] as? CAShapeLayer{
			tuorlo.frame = CGRect(x: 0.42872 * tuorlo.superlayer!.bounds.width, y: 0.58178 * tuorlo.superlayer!.bounds.height, width: 0.09895 * tuorlo.superlayer!.bounds.width, height: 0.13761 * tuorlo.superlayer!.bounds.height)
			tuorlo.path  = tuorloPath(bounds: layers["tuorlo"]!.bounds).cgPath
		}
		
		if let interno = layers["interno"] as? CAShapeLayer{
			interno.frame = CGRect(x: 0.41828 * interno.superlayer!.bounds.width, y: 0.09287 * interno.superlayer!.bounds.height, width: 0.10923 * interno.superlayer!.bounds.width, height: 0.48712 * interno.superlayer!.bounds.height)
			interno.path  = internoPath(bounds: layers["interno"]!.bounds).cgPath
		}
		
		if let play = layers["play"] as? CAShapeLayer{
			play.frame = CGRect(x: 0.45798 * play.superlayer!.bounds.width, y: 0.59278 * play.superlayer!.bounds.height, width: 0.0631 * play.superlayer!.bounds.width, height: 0.1156 * play.superlayer!.bounds.height)
			play.path  = playPath(bounds: layers["play"]!.bounds).cgPath
		}
		
		if let title = layers["title"]{
			title.frame = CGRect(x: 0.46859 * title.superlayer!.bounds.width, y: 0.0677 * title.superlayer!.bounds.height, width: 0.01499 * title.superlayer!.bounds.width, height: 0.01191 * title.superlayer!.bounds.height)
		}
		
		if let oval = layers["oval"] as? CAShapeLayer{
			oval.frame = CGRect(x: 0.40135 * oval.superlayer!.bounds.width, y: 0.02364 * oval.superlayer!.bounds.height, width: 0.09912 * oval.superlayer!.bounds.width, height: 0.1817 * oval.superlayer!.bounds.height)
			oval.path  = ovalPath(bounds: layers["oval"]!.bounds).cgPath
		}
		
		if let oval2 = layers["oval2"] as? CAShapeLayer{
			oval2.transform = CATransform3DIdentity
			oval2.frame     = CGRect(x: 0.44868 * oval2.superlayer!.bounds.width, y: 0.02395 * oval2.superlayer!.bounds.height, width: 0.09627 * oval2.superlayer!.bounds.width, height: 0.18133 * oval2.superlayer!.bounds.height)
			oval2.setValue(-180 * CGFloat.pi/180, forKeyPath:"transform.rotation")
			oval2.path      = oval2Path(bounds: layers["oval2"]!.bounds).cgPath
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addUntitled1Animation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		////Albume animation
		let albumeFillColorAnim       = CAKeyframeAnimation(keyPath:"fillColor")
		albumeFillColorAnim.values    = [self.color5.cgColor, 
			 self.color3.cgColor]
		albumeFillColorAnim.keyTimes  = [0, 1]
		albumeFillColorAnim.duration  = 5
		albumeFillColorAnim.beginTime = 2.5
		
		let albumeHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
		albumeHiddenAnim.values   = [true, false]
		albumeHiddenAnim.keyTimes = [0, 1]
		albumeHiddenAnim.duration = 7.5
		
		let albumeOpacityAnim       = CAKeyframeAnimation(keyPath:"opacity")
		albumeOpacityAnim.values    = [0, 1]
		albumeOpacityAnim.keyTimes  = [0, 1]
		albumeOpacityAnim.duration  = 5
		albumeOpacityAnim.beginTime = 2.5
		
		let albumeUntitled1Anim : CAAnimationGroup = QCMethod.group(animations: [albumeFillColorAnim, albumeHiddenAnim, albumeOpacityAnim], fillMode:fillMode)
		layers["albume"]?.add(albumeUntitled1Anim, forKey:"albumeUntitled1Anim")
		
		////Tuorlo animation
		let tuorloFillColorAnim       = CAKeyframeAnimation(keyPath:"fillColor")
		tuorloFillColorAnim.values    = [self.color.cgColor, 
			 UIColor(red:0.978, green: 0.708, blue:0.306, alpha:1).cgColor]
		tuorloFillColorAnim.keyTimes  = [0, 1]
		tuorloFillColorAnim.duration  = 5
		tuorloFillColorAnim.beginTime = 2.5
		
		let tuorloHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
		tuorloHiddenAnim.values   = [true, false]
		tuorloHiddenAnim.keyTimes = [0, 1]
		tuorloHiddenAnim.duration = 7.5
		
		let tuorlo = layers["tuorlo"] as! CAShapeLayer
		
		let tuorloTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		tuorloTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1.5, 1.5, 1.5))]
		tuorloTransformAnim.keyTimes     = [0, 1]
		tuorloTransformAnim.duration     = 1
		tuorloTransformAnim.beginTime    = 7.5
		tuorloTransformAnim.repeatCount  = Float.infinity
		tuorloTransformAnim.autoreverses = true
		
		let tuorloOpacityAnim       = CAKeyframeAnimation(keyPath:"opacity")
		tuorloOpacityAnim.values    = [0, 1]
		tuorloOpacityAnim.keyTimes  = [0, 1]
		tuorloOpacityAnim.duration  = 5
		tuorloOpacityAnim.beginTime = 2.5
		
		let tuorloUntitled1Anim : CAAnimationGroup = QCMethod.group(animations: [tuorloFillColorAnim, tuorloHiddenAnim, tuorloTransformAnim, tuorloOpacityAnim], fillMode:fillMode)
		tuorlo.add(tuorloUntitled1Anim, forKey:"tuorloUntitled1Anim")
		
		////Interno animation
		let internoOpacityAnim      = CAKeyframeAnimation(keyPath:"opacity")
		internoOpacityAnim.values   = [-0.6, 0.4, -0.6]
		internoOpacityAnim.keyTimes = [0, 0.681, 1]
		internoOpacityAnim.duration = 4.99
		
		let internoUntitled1Anim : CAAnimationGroup = QCMethod.group(animations: [internoOpacityAnim], fillMode:fillMode)
		layers["interno"]?.add(internoUntitled1Anim, forKey:"internoUntitled1Anim")
		
		////Play animation
		let playHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
		playHiddenAnim.values   = [true, false]
		playHiddenAnim.keyTimes = [0, 1]
		playHiddenAnim.duration = 15
		
		let play = layers["play"] as! CAShapeLayer
		
		let playTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		playTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1.5, 1.5, 1))]
		playTransformAnim.keyTimes     = [0, 1]
		playTransformAnim.duration     = 1
		playTransformAnim.beginTime    = 7.5
		playTransformAnim.repeatCount  = Float.infinity
		playTransformAnim.autoreverses = true
		
		let playUntitled1Anim : CAAnimationGroup = QCMethod.group(animations: [playHiddenAnim, playTransformAnim], fillMode:fillMode)
		play.add(playUntitled1Anim, forKey:"playUntitled1Anim")
		
		////Title animation
		let titleHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
		titleHiddenAnim.values   = [true, false]
		titleHiddenAnim.keyTimes = [0, 1]
		titleHiddenAnim.duration = 8
		
		let title = layers["title"] as! CALayer
		
		let titleTransformAnim       = CAKeyframeAnimation(keyPath:"transform")
		titleTransformAnim.values    = [NSValue(caTransform3D: CATransform3DMakeScale(-1.42E-16, -1.42E-16, -0.09)), 
			 NSValue(caTransform3D: CATransform3DConcat(CATransform3DMakeScale(5, 5, 5), CATransform3DMakeTranslation(0, 0.14667 * title.superlayer!.bounds.height, 0))), 
			 NSValue(caTransform3D: CATransform3DConcat(CATransform3DMakeScale(20, 20, 20), CATransform3DMakeTranslation(0, 0.22933 * title.superlayer!.bounds.height, 0))), 
			 NSValue(caTransform3D: CATransform3DConcat(CATransform3DConcat(CATransform3DMakeScale(20, 20, 20), CATransform3DMakeTranslation(0, 0.22933 * title.superlayer!.bounds.height, 0)), CATransform3DMakeRotation(10 * CGFloat.pi/180, 0, -0, 1))), 
			 NSValue(caTransform3D: CATransform3DConcat(CATransform3DConcat(CATransform3DMakeScale(20, 20, 20), CATransform3DMakeTranslation(0, 0.22933 * title.superlayer!.bounds.height, 0)), CATransform3DMakeRotation(-10 * CGFloat.pi/180, -0, 0, 1)))]
		titleTransformAnim.keyTimes  = [0, 0.279, 0.843, 0.962, 1]
		titleTransformAnim.duration  = 3.68
		titleTransformAnim.beginTime = 3.96
		
		let titleUntitled1Anim : CAAnimationGroup = QCMethod.group(animations: [titleHiddenAnim, titleTransformAnim], fillMode:fillMode)
		title.add(titleUntitled1Anim, forKey:"titleUntitled1Anim")
		
		let oval = layers["oval"] as! CAShapeLayer
		
		////Oval animation
		let ovalTransformAnim      = CAKeyframeAnimation(keyPath:"transform")
		ovalTransformAnim.values   = [NSValue(caTransform3D: CATransform3DMakeScale(0.75, 0.75, 0.75)), 
			 NSValue(caTransform3D: CATransform3DConcat(CATransform3DMakeScale(0.75, 0.75, 0.75), CATransform3DMakeTranslation(0, 0.26667 * oval.superlayer!.bounds.height, 0))), 
			 NSValue(caTransform3D: CATransform3DMakeScale(0.75, 0.75, 0.75)), 
			 NSValue(caTransform3D: CATransform3DConcat(CATransform3DMakeScale(0.75, 0.75, 0.75), CATransform3DMakeTranslation(0, 0.26667 * oval.superlayer!.bounds.height, 0))), 
			 NSValue(caTransform3D: CATransform3DMakeScale(0.75, 0.75, 0.75)), 
			 NSValue(caTransform3D: CATransform3DConcat(CATransform3DMakeScale(0.75, 0.75, 0.75), CATransform3DMakeRotation(50 * CGFloat.pi/180, 0, -0, 1)))]
		ovalTransformAnim.keyTimes = [0, 0.2, 0.4, 0.6, 0.8, 1]
		ovalTransformAnim.duration = 2.5
		
		let ovalUntitled1Anim : CAAnimationGroup = QCMethod.group(animations: [ovalTransformAnim], fillMode:fillMode)
		oval.add(ovalUntitled1Anim, forKey:"ovalUntitled1Anim")
		
		let oval2 = layers["oval2"] as! CAShapeLayer
		
		////Oval2 animation
		let oval2TransformAnim      = CAKeyframeAnimation(keyPath:"transform")
		oval2TransformAnim.values   = [NSValue(caTransform3D: CATransform3DConcat(CATransform3DMakeScale(0.75, 0.75, 0.75), CATransform3DMakeRotation(-CGFloat.pi, 0, 0, 1))), 
			 NSValue(caTransform3D: CATransform3DConcat(CATransform3DConcat(CATransform3DMakeScale(0.75, 0.75, 0.75), CATransform3DMakeTranslation(0, -0.26667 * oval2.superlayer!.bounds.height, 0)), CATransform3DMakeRotation(-CGFloat.pi, 0, 0, 1))), 
			 NSValue(caTransform3D: CATransform3DConcat(CATransform3DMakeScale(0.75, 0.75, 0.75), CATransform3DMakeRotation(-CGFloat.pi, 0, 0, 1))), 
			 NSValue(caTransform3D: CATransform3DConcat(CATransform3DConcat(CATransform3DMakeScale(0.75, 0.75, 0.75), CATransform3DMakeTranslation(0, -0.26667 * oval2.superlayer!.bounds.height, 0)), CATransform3DMakeRotation(-CGFloat.pi, 0, 0, 1))), 
			 NSValue(caTransform3D: CATransform3DConcat(CATransform3DMakeScale(0.75, 0.75, 0.75), CATransform3DMakeRotation(-CGFloat.pi, 0, 0, 1))), 
			 NSValue(caTransform3D: CATransform3DConcat(CATransform3DMakeScale(0.75, 0.75, 0.75), CATransform3DMakeRotation(-230 * CGFloat.pi/180, -0, 0, 1)))]
		oval2TransformAnim.keyTimes = [0, 0.2, 0.4, 0.6, 0.8, 1]
		oval2TransformAnim.duration = 2.5
		
		let oval2Untitled1Anim : CAAnimationGroup = QCMethod.group(animations: [oval2TransformAnim], fillMode:fillMode)
		oval2.add(oval2Untitled1Anim, forKey:"oval2Untitled1Anim")
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
		if identifier == "Untitled1"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["albume"]!.animation(forKey: "albumeUntitled1Anim"), theLayer:layers["albume"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["tuorlo"]!.animation(forKey: "tuorloUntitled1Anim"), theLayer:layers["tuorlo"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["interno"]!.animation(forKey: "internoUntitled1Anim"), theLayer:layers["interno"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["play"]!.animation(forKey: "playUntitled1Anim"), theLayer:layers["play"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["title"]!.animation(forKey: "titleUntitled1Anim"), theLayer:layers["title"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["oval"]!.animation(forKey: "ovalUntitled1Anim"), theLayer:layers["oval"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["oval2"]!.animation(forKey: "oval2Untitled1Anim"), theLayer:layers["oval2"]!)
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "Untitled1"{
			layers["albume"]?.removeAnimation(forKey: "albumeUntitled1Anim")
			layers["tuorlo"]?.removeAnimation(forKey: "tuorloUntitled1Anim")
			layers["interno"]?.removeAnimation(forKey: "internoUntitled1Anim")
			layers["play"]?.removeAnimation(forKey: "playUntitled1Anim")
			layers["title"]?.removeAnimation(forKey: "titleUntitled1Anim")
			layers["oval"]?.removeAnimation(forKey: "ovalUntitled1Anim")
			layers["oval2"]?.removeAnimation(forKey: "oval2Untitled1Anim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			layer.removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func albumePath(bounds: CGRect) -> UIBezierPath{
		let albumePath = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		albumePath.move(to: CGPoint(x:minX + 0.5141 * w, y: minY))
		albumePath.addCurve(to: CGPoint(x:minX + 0.16379 * w, y: minY + 0.17323 * h), controlPoint1:CGPoint(x:minX + 0.40293 * w, y: minY), controlPoint2:CGPoint(x:minX + 0.24485 * w, y: minY + 0.08999 * h))
		albumePath.addCurve(to: CGPoint(x:minX + 0.0282 * w, y: minY + 0.45942 * h), controlPoint1:CGPoint(x:minX + 0.05292 * w, y: minY + 0.28707 * h), controlPoint2:CGPoint(x:minX + 0.0282 * w, y: minY + 0.26108 * h))
		albumePath.addCurve(to: CGPoint(x:minX + 0.0282 * w, y: minY + 0.74288 * h), controlPoint1:CGPoint(x:minX + 0.0282 * w, y: minY + 0.604 * h), controlPoint2:CGPoint(x:minX + -0.03525 * w, y: minY + 0.63728 * h))
		albumePath.addCurve(to: CGPoint(x:minX + 0.16379 * w, y: minY + 0.88716 * h), controlPoint1:CGPoint(x:minX + 0.06614 * w, y: minY + 0.80601 * h), controlPoint2:CGPoint(x:minX + 0.11572 * w, y: minY + 0.84307 * h))
		albumePath.addCurve(to: CGPoint(x:minX + 0.37741 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.22626 * w, y: minY + 0.94446 * h), controlPoint2:CGPoint(x:minX + 0.29129 * w, y: minY + h))
		albumePath.addCurve(to: CGPoint(x:minX + 0.98135 * w, y: minY + 0.74288 * h), controlPoint1:CGPoint(x:minX + 0.5522 * w, y: minY + h), controlPoint2:CGPoint(x:minX + 0.89841 * w, y: minY + 0.92591 * h))
		albumePath.addCurve(to: CGPoint(x:minX + 0.98135 * w, y: minY + 0.45942 * h), controlPoint1:CGPoint(x:minX + 1.02331 * w, y: minY + 0.65029 * h), controlPoint2:CGPoint(x:minX + 0.98135 * w, y: minY + 0.57476 * h))
		albumePath.addCurve(to: CGPoint(x:minX + 0.75163 * w, y: minY + 0.17323 * h), controlPoint1:CGPoint(x:minX + 0.98135 * w, y: minY + 0.24198 * h), controlPoint2:CGPoint(x:minX + 0.88122 * w, y: minY + 0.28435 * h))
		albumePath.addCurve(to: CGPoint(x:minX + 0.5141 * w, y: minY), controlPoint1:CGPoint(x:minX + 0.67657 * w, y: minY + 0.10887 * h), controlPoint2:CGPoint(x:minX + 0.61063 * w, y: minY))
		
		return albumePath
	}
	
	func tuorloPath(bounds: CGRect) -> UIBezierPath{
		let tuorloPath = UIBezierPath(ovalIn:bounds)
		return tuorloPath
	}
	
	func internoPath(bounds: CGRect) -> UIBezierPath{
		let internoPath = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		internoPath.move(to: CGPoint(x:minX + 0.59783 * w, y: minY))
		internoPath.addCurve(to: CGPoint(x:minX + 0.19567 * w, y: minY + 0.27159 * h), controlPoint1:CGPoint(x:minX + 0.44229 * w, y: minY), controlPoint2:CGPoint(x:minX + 0.26257 * w, y: minY + 0.11095 * h))
		internoPath.addCurve(to: CGPoint(x:minX + 0.19567 * w, y: minY + 0.5 * h), controlPoint1:CGPoint(x:minX + 0.16704 * w, y: minY + 0.34034 * h), controlPoint2:CGPoint(x:minX + -0.2299 * w, y: minY + 0.31022 * h))
		internoPath.addCurve(to: CGPoint(x:minX + 0.59783 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.62123 * w, y: minY + 0.68978 * h), controlPoint2:CGPoint(x:minX + 0.37572 * w, y: minY + h))
		internoPath.addCurve(to: CGPoint(x:minX + 0.59783 * w, y: minY + 0.65788 * h), controlPoint1:CGPoint(x:minX + 0.76361 * w, y: minY + h), controlPoint2:CGPoint(x:minX + 0.53629 * w, y: minY + 0.83595 * h))
		internoPath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.5 * h), controlPoint1:CGPoint(x:minX + 0.61875 * w, y: minY + 0.59737 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.57003 * h))
		internoPath.addCurve(to: CGPoint(x:minX + 0.59783 * w, y: minY + 0.27159 * h), controlPoint1:CGPoint(x:minX + w, y: minY + 0.42123 * h), controlPoint2:CGPoint(x:minX + 0.62393 * w, y: minY + 0.33787 * h))
		internoPath.addCurve(to: CGPoint(x:minX + 0.59783 * w, y: minY), controlPoint1:CGPoint(x:minX + 0.53244 * w, y: minY + 0.10552 * h), controlPoint2:CGPoint(x:minX + 0.75658 * w, y: minY))
		
		return internoPath
	}
	
	func playPath(bounds: CGRect) -> UIBezierPath{
		let playPath = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		playPath.move(to: CGPoint(x:minX, y: minY + h))
		playPath.addLine(to: CGPoint(x:minX + w, y: minY + 0.5 * h))
		playPath.addLine(to: CGPoint(x:minX + w, y: minY + 0.5 * h))
		playPath.addLine(to: CGPoint(x:minX, y: minY))
		playPath.close()
		playPath.move(to: CGPoint(x:minX, y: minY + h))
		
		return playPath
	}
	
	func ovalPath(bounds: CGRect) -> UIBezierPath{
		let ovalPath = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		ovalPath.move(to: CGPoint(x:minX + 0.80166 * w, y: minY))
		ovalPath.addCurve(to: CGPoint(x:minX, y: minY + 0.499 * h), controlPoint1:CGPoint(x:minX + 0.35892 * w, y: minY), controlPoint2:CGPoint(x:minX, y: minY + 0.22341 * h))
		ovalPath.addCurve(to: CGPoint(x:minX + 0.80166 * w, y: minY + h), controlPoint1:CGPoint(x:minX, y: minY + 0.77459 * h), controlPoint2:CGPoint(x:minX + 0.35892 * w, y: minY + h))
		ovalPath.addCurve(to: CGPoint(x:minX + 0.95965 * w, y: minY + 0.76982 * h), controlPoint1:CGPoint(x:minX + 0.88695 * w, y: minY + h), controlPoint2:CGPoint(x:minX + 0.97548 * w, y: minY + 0.81605 * h))
		ovalPath.addCurve(to: CGPoint(x:minX + 0.95965 * w, y: minY + 0.76982 * h), controlPoint1:CGPoint(x:minX + 0.94206 * w, y: minY + 0.71842 * h), controlPoint2:CGPoint(x:minX + 1.05866 * w, y: minY + 0.81024 * h))
		ovalPath.addCurve(to: CGPoint(x:minX + 0.80166 * w, y: minY + 0.499 * h), controlPoint1:CGPoint(x:minX + 0.86065 * w, y: minY + 0.7294 * h), controlPoint2:CGPoint(x:minX + 0.80166 * w, y: minY + 0.66247 * h))
		ovalPath.addCurve(to: CGPoint(x:minX + 0.80166 * w, y: minY + 0.30826 * h), controlPoint1:CGPoint(x:minX + 0.80166 * w, y: minY + 0.34708 * h), controlPoint2:CGPoint(x:minX + 0.9737 * w, y: minY + 0.39978 * h))
		ovalPath.addCurve(to: CGPoint(x:minX + 0.80166 * w, y: minY), controlPoint1:CGPoint(x:minX + 0.6616 * w, y: minY + 0.23375 * h), controlPoint2:CGPoint(x:minX + 1.00035 * w, y: minY))
		
		return ovalPath
	}
	
	func oval2Path(bounds: CGRect) -> UIBezierPath{
		let oval2Path = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		oval2Path.move(to: CGPoint(x:minX + 0.82538 * w, y: minY))
		oval2Path.addCurve(to: CGPoint(x:minX, y: minY + 0.5 * h), controlPoint1:CGPoint(x:minX + 0.36954 * w, y: minY), controlPoint2:CGPoint(x:minX, y: minY + 0.22386 * h))
		oval2Path.addCurve(to: CGPoint(x:minX + 0.82538 * w, y: minY + h), controlPoint1:CGPoint(x:minX, y: minY + 0.77614 * h), controlPoint2:CGPoint(x:minX + 0.36954 * w, y: minY + h))
		oval2Path.addCurve(to: CGPoint(x:minX + 0.98924 * w, y: minY + 0.69112 * h), controlPoint1:CGPoint(x:minX + 1.01084 * w, y: minY + h), controlPoint2:CGPoint(x:minX + 1.01349 * w, y: minY + 0.75367 * h))
		oval2Path.addCurve(to: CGPoint(x:minX + 1 * w, y: minY + 0.5 * h), controlPoint1:CGPoint(x:minX + 0.95387 * w, y: minY + 0.59992 * h), controlPoint2:CGPoint(x:minX + 1 * w, y: minY + 0.6638 * h))
		oval2Path.addCurve(to: CGPoint(x:minX + 0.82538 * w, y: minY + 0.30888 * h), controlPoint1:CGPoint(x:minX + 1 * w, y: minY + 0.34778 * h), controlPoint2:CGPoint(x:minX + 1.00252 * w, y: minY + 0.40059 * h))
		oval2Path.addCurve(to: CGPoint(x:minX + 0.82538 * w, y: minY), controlPoint1:CGPoint(x:minX + 0.68118 * w, y: minY + 0.23422 * h), controlPoint2:CGPoint(x:minX + 1.02995 * w, y: minY))
		
		return oval2Path
	}
	
	
}
