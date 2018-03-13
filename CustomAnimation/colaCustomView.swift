//
//  colaCustomView.swift
//
//  Code generated using QuartzCode 1.63.0 on 19/12/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class colaCustomView: UIView, CAAnimationDelegate {
	
	var layers = [String: CALayer]()
	var completionBlocks = [CAAnimation: (Bool) -> Void]()
	var updateLayerValueForCompletedAnimation : Bool = false
	
	var color : UIColor!
	var color1 : UIColor!
	var color2 : UIColor!
	var color3 : UIColor!
	var color4 : UIColor!
	
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
	}
	
	func setupLayers(){
		self.backgroundColor = UIColor(red:1, green: 1, blue:1, alpha:0)
		
		let colacola = CALayer()
		self.layer.addSublayer(colacola)
		colacola.contents = UIImage(named:"colacola")?.cgImage
		layers["colacola"] = colacola
		
		let bcola = CAShapeLayer()
		self.layer.addSublayer(bcola)
		bcola.setValue(-179.73 * CGFloat.pi/180, forKeyPath:"transform.rotation")
		bcola.fillColor   = self.color4.cgColor
		bcola.strokeColor = self.color3.cgColor
		layers["bcola"] = bcola
		setupLayerFrames()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let colacola = layers["colacola"]{
			colacola.frame = CGRect(x: -0.13333 * colacola.superlayer!.bounds.width, y: 0.05549 * colacola.superlayer!.bounds.height, width: 1.08598 * colacola.superlayer!.bounds.width, height: 0.88901 * colacola.superlayer!.bounds.height)
		}
		
		if let bcola = layers["bcola"] as? CAShapeLayer{
			bcola.transform = CATransform3DIdentity
			bcola.frame     = CGRect(x: 0.40971 * bcola.superlayer!.bounds.width, y: 0.34134 * bcola.superlayer!.bounds.height, width: 0.11041 * bcola.superlayer!.bounds.width, height: 0.02348 * bcola.superlayer!.bounds.height)
			bcola.setValue(-179.73 * CGFloat.pi/180, forKeyPath:"transform.rotation")
			bcola.path      = bcolaPath(bounds: layers["bcola"]!.bounds).cgPath
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addMovimentoboccacolaAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let bcola = layers["bcola"] as! CAShapeLayer
		
		////Bcola animation
		let bcolaTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		bcolaTransformAnim.values       = [NSValue(caTransform3D: CATransform3DMakeScale(0.67, -0.15, 0.67)), 
			 NSValue(caTransform3D: CATransform3DMakeScale(1, -1.69, 1))]
		bcolaTransformAnim.keyTimes     = [0, 1]
		bcolaTransformAnim.duration     = 0.3
		bcolaTransformAnim.repeatCount  = Float.infinity
		bcolaTransformAnim.autoreverses = true
		
		let bcolaMovimentoboccacolaAnim : CAAnimationGroup = QCMethod.group(animations: [bcolaTransformAnim], fillMode:fillMode)
		bcola.add(bcolaMovimentoboccacolaAnim, forKey:"bcolaMovimentoboccacolaAnim")
	}
	
	func addMovimentoColaAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let colacola = layers["colacola"] as! CALayer
		
		////Colacola animation
		let colacolaTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		colacolaTransformAnim.values       = [NSValue(caTransform3D: CATransform3DIdentity), 
			 NSValue(caTransform3D: CATransform3DMakeTranslation(0, -0.066667 * colacola.superlayer!.bounds.height, 0))]
		colacolaTransformAnim.keyTimes     = [0, 1]
		colacolaTransformAnim.duration     = 0.5
		colacolaTransformAnim.repeatCount  = Float.infinity
		colacolaTransformAnim.autoreverses = true
		
		let colacolaMovimentoColaAnim : CAAnimationGroup = QCMethod.group(animations: [colacolaTransformAnim], fillMode:fillMode)
		colacola.add(colacolaMovimentoColaAnim, forKey:"colacolaMovimentoColaAnim")
		
		let bcola = layers["bcola"] as! CAShapeLayer
		
		////Bcola animation
		let bcolaTransformAnim          = CAKeyframeAnimation(keyPath:"transform")
		bcolaTransformAnim.values       = [NSValue(caTransform3D: CATransform3DMakeRotation(179.73 * CGFloat.pi/180, 0, 0, -1)), 
			 NSValue(caTransform3D: CATransform3DConcat(CATransform3DMakeTranslation(0, 0.066667 * bcola.superlayer!.bounds.height, 0), CATransform3DMakeRotation(-179.73 * CGFloat.pi/180, -0, 0, 1)))]
		bcolaTransformAnim.keyTimes     = [0, 1]
		bcolaTransformAnim.duration     = 0.5
		bcolaTransformAnim.repeatCount  = Float.infinity
		bcolaTransformAnim.autoreverses = true
		
		let bcolaMovimentoColaAnim : CAAnimationGroup = QCMethod.group(animations: [bcolaTransformAnim], fillMode:fillMode)
		bcola.add(bcolaMovimentoColaAnim, forKey:"bcolaMovimentoColaAnim")
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
		if identifier == "movimentoboccacola"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["bcola"]!.animation(forKey: "bcolaMovimentoboccacolaAnim"), theLayer:layers["bcola"]!)
		}
		else if identifier == "movimentoCola"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["colacola"]!.animation(forKey: "colacolaMovimentoColaAnim"), theLayer:layers["colacola"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["bcola"]!.animation(forKey: "bcolaMovimentoColaAnim"), theLayer:layers["bcola"]!)
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "movimentoboccacola"{
			layers["bcola"]?.removeAnimation(forKey: "bcolaMovimentoboccacolaAnim")
		}
		else if identifier == "movimentoCola"{
			layers["colacola"]?.removeAnimation(forKey: "colacolaMovimentoColaAnim")
			layers["bcola"]?.removeAnimation(forKey: "bcolaMovimentoColaAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			layer.removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func bcolaPath(bounds: CGRect) -> UIBezierPath{
		let bcolaPath = UIBezierPath()
		let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
		
		bcolaPath.move(to: CGPoint(x:minX + 0.50759 * w, y: minY + 0.5375 * h))
		bcolaPath.addCurve(to: CGPoint(x:minX, y: minY + 0.05367 * h), controlPoint1:CGPoint(x:minX + 0.24129 * w, y: minY + 0.5375 * h), controlPoint2:CGPoint(x:minX, y: minY + -0.20176 * h))
		bcolaPath.addCurve(to: CGPoint(x:minX + 0.51778 * w, y: minY + h), controlPoint1:CGPoint(x:minX, y: minY + 0.3091 * h), controlPoint2:CGPoint(x:minX + 0.25149 * w, y: minY + h))
		bcolaPath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.05367 * h), controlPoint1:CGPoint(x:minX + 0.78408 * w, y: minY + h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.3091 * h))
		bcolaPath.addCurve(to: CGPoint(x:minX + 0.50759 * w, y: minY + 0.5375 * h), controlPoint1:CGPoint(x:minX + w, y: minY + -0.20176 * h), controlPoint2:CGPoint(x:minX + 0.77388 * w, y: minY + 0.5375 * h))
		
		return bcolaPath
	}
	
	
}
