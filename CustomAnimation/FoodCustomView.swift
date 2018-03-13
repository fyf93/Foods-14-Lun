//
//  FoodCustomView.swift
//
//  Code generated using QuartzCode 1.63.0 on 19/12/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class FoodCustomView: UIView, CAAnimationDelegate {
	
	var layers = [String: CALayer]()
	var completionBlocks = [CAAnimation: (Bool) -> Void]()
	var updateLayerValueForCompletedAnimation : Bool = false
	
	
	
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
		
	}
	
	func setupLayers(){
		self.backgroundColor = UIColor(red:1, green: 1, blue:1, alpha:0)
		
		let cibiparlanti = CALayer()
		self.layer.addSublayer(cibiparlanti)
		layers["cibiparlanti"] = cibiparlanti
		
		let nuvolettaasx = CALayer()
		self.layer.addSublayer(nuvolettaasx)
		layers["nuvolettaasx"] = nuvolettaasx
		
		let nuvolettaadx = CALayer()
		self.layer.addSublayer(nuvolettaadx)
		layers["nuvolettaadx"] = nuvolettaadx
		
		let textnuvolettasx = CATextLayer()
		self.layer.addSublayer(textnuvolettasx)
		layers["textnuvolettasx"] = textnuvolettasx
		
		let textnuvolettadx = CATextLayer()
		self.layer.addSublayer(textnuvolettadx)
		layers["textnuvolettadx"] = textnuvolettadx
		
		resetLayerProperties(forLayerIdentifiers: nil)
		setupLayerFrames()
	}
	
	func resetLayerProperties(forLayerIdentifiers layerIds: [String]!){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if layerIds == nil || layerIds.contains("cibiparlanti"){
			let cibiparlanti = layers["cibiparlanti"] as! CALayer
			cibiparlanti.contents = UIImage(named:"cibi parlanti")?.cgImage
		}
		if layerIds == nil || layerIds.contains("nuvolettaasx"){
			let nuvolettaasx = layers["nuvolettaasx"] as! CALayer
			nuvolettaasx.contents = UIImage(named:"nuvoletta a sx")?.cgImage
		}
		if layerIds == nil || layerIds.contains("nuvolettaadx"){
			let nuvolettaadx = layers["nuvolettaadx"] as! CALayer
			nuvolettaadx.contents = UIImage(named:"nuvoletta a dx")?.cgImage
		}
		if layerIds == nil || layerIds.contains("textnuvolettasx"){
			let textnuvolettasx = layers["textnuvolettasx"] as! CATextLayer
			textnuvolettasx.contentsScale   = UIScreen.main.scale
			textnuvolettasx.string          = "!@#%$?\n@%$!"
			textnuvolettasx.font            = "Helvetica" as CFTypeRef
			textnuvolettasx.fontSize        = 19
			textnuvolettasx.alignmentMode   = kCAAlignmentCenter;
			textnuvolettasx.foregroundColor = UIColor.black.cgColor
		}
		if layerIds == nil || layerIds.contains("textnuvolettadx"){
			let textnuvolettadx = layers["textnuvolettadx"] as! CATextLayer
			textnuvolettadx.contentsScale   = UIScreen.main.scale
			textnuvolettadx.string          = "@%$!\n@#%\n"
			textnuvolettadx.font            = "Helvetica" as CFTypeRef
			textnuvolettadx.fontSize        = 19
			textnuvolettadx.alignmentMode   = kCAAlignmentCenter;
			textnuvolettadx.foregroundColor = UIColor.black.cgColor
		}
		
		CATransaction.commit()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let cibiparlanti = layers["cibiparlanti"]{
			cibiparlanti.frame = CGRect(x: 0.04687 * cibiparlanti.superlayer!.bounds.width, y: 0.15352 * cibiparlanti.superlayer!.bounds.height, width: 0.95313 * cibiparlanti.superlayer!.bounds.width, height: 0.95314 * cibiparlanti.superlayer!.bounds.height)
		}
		
		if let nuvolettaasx = layers["nuvolettaasx"]{
			nuvolettaasx.frame = CGRect(x: 0.25337 * nuvolettaasx.superlayer!.bounds.width, y: 0.14237 * nuvolettaasx.superlayer!.bounds.height, width: 0.41229 * nuvolettaasx.superlayer!.bounds.width, height: 0.4123 * nuvolettaasx.superlayer!.bounds.height)
		}
		
		if let nuvolettaadx = layers["nuvolettaadx"]{
			nuvolettaadx.frame = CGRect(x: 0.35832 * nuvolettaadx.superlayer!.bounds.width, y: 0.14237 * nuvolettaadx.superlayer!.bounds.height, width: 0.41229 * nuvolettaadx.superlayer!.bounds.width, height: 0.4123 * nuvolettaadx.superlayer!.bounds.height)
		}
		
		if let textnuvolettasx = layers["textnuvolettasx"] as? CATextLayer{
			textnuvolettasx.frame = CGRect(x: 0.39205 * textnuvolettasx.superlayer!.bounds.width, y: 0.25392 * textnuvolettasx.superlayer!.bounds.height, width: 0.15158 * textnuvolettasx.superlayer!.bounds.width, height: 0.11452 * textnuvolettasx.superlayer!.bounds.height)
		}
		
		if let textnuvolettadx = layers["textnuvolettadx"] as? CATextLayer{
			textnuvolettadx.frame = CGRect(x: 0.49767 * textnuvolettadx.superlayer!.bounds.width, y: 0.25392 * textnuvolettadx.superlayer!.bounds.height, width: 0.15158 * textnuvolettadx.superlayer!.bounds.width, height: 0.11452 * textnuvolettadx.superlayer!.bounds.height)
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addCibiParlantiAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		////Nuvolettaasx animation
		let nuvolettaasxHiddenAnim         = CAKeyframeAnimation(keyPath:"hidden")
		nuvolettaasxHiddenAnim.values      = [false, true]
		nuvolettaasxHiddenAnim.keyTimes    = [0, 1]
		nuvolettaasxHiddenAnim.duration    = 2.99
		nuvolettaasxHiddenAnim.repeatCount = Float.infinity
		
		let nuvolettaasxCibiParlantiAnim : CAAnimationGroup = QCMethod.group(animations: [nuvolettaasxHiddenAnim], fillMode:fillMode)
		layers["nuvolettaasx"]?.add(nuvolettaasxCibiParlantiAnim, forKey:"nuvolettaasxCibiParlantiAnim")
		
		////Nuvolettaadx animation
		let nuvolettaadxHiddenAnim         = CAKeyframeAnimation(keyPath:"hidden")
		nuvolettaadxHiddenAnim.values      = [true, false]
		nuvolettaadxHiddenAnim.keyTimes    = [0, 1]
		nuvolettaadxHiddenAnim.duration    = 2.99
		nuvolettaadxHiddenAnim.repeatCount = Float.infinity
		
		let nuvolettaadxCibiParlantiAnim : CAAnimationGroup = QCMethod.group(animations: [nuvolettaadxHiddenAnim], fillMode:fillMode)
		layers["nuvolettaadx"]?.add(nuvolettaadxCibiParlantiAnim, forKey:"nuvolettaadxCibiParlantiAnim")
		
		////Textnuvolettasx animation
		let textnuvolettasxHiddenAnim         = CAKeyframeAnimation(keyPath:"hidden")
		textnuvolettasxHiddenAnim.values      = [false, true]
		textnuvolettasxHiddenAnim.keyTimes    = [0, 1]
		textnuvolettasxHiddenAnim.duration    = 2.99
		textnuvolettasxHiddenAnim.repeatCount = Float.infinity
		
		let textnuvolettasxCibiParlantiAnim : CAAnimationGroup = QCMethod.group(animations: [textnuvolettasxHiddenAnim], fillMode:fillMode)
		layers["textnuvolettasx"]?.add(textnuvolettasxCibiParlantiAnim, forKey:"textnuvolettasxCibiParlantiAnim")
		
		////Textnuvolettadx animation
		let textnuvolettadxHiddenAnim         = CAKeyframeAnimation(keyPath:"hidden")
		textnuvolettadxHiddenAnim.values      = [true, false]
		textnuvolettadxHiddenAnim.keyTimes    = [0, 1]
		textnuvolettadxHiddenAnim.duration    = 2.99
		textnuvolettadxHiddenAnim.repeatCount = Float.infinity
		
		let textnuvolettadxCibiParlantiAnim : CAAnimationGroup = QCMethod.group(animations: [textnuvolettadxHiddenAnim], fillMode:fillMode)
		layers["textnuvolettadx"]?.add(textnuvolettadxCibiParlantiAnim, forKey:"textnuvolettadxCibiParlantiAnim")
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
		if identifier == "cibiParlanti"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["nuvolettaasx"]!.animation(forKey: "nuvolettaasxCibiParlantiAnim"), theLayer:layers["nuvolettaasx"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["nuvolettaadx"]!.animation(forKey: "nuvolettaadxCibiParlantiAnim"), theLayer:layers["nuvolettaadx"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["textnuvolettasx"]!.animation(forKey: "textnuvolettasxCibiParlantiAnim"), theLayer:layers["textnuvolettasx"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["textnuvolettadx"]!.animation(forKey: "textnuvolettadxCibiParlantiAnim"), theLayer:layers["textnuvolettadx"]!)
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "cibiParlanti"{
			layers["nuvolettaasx"]?.removeAnimation(forKey: "nuvolettaasxCibiParlantiAnim")
			layers["nuvolettaadx"]?.removeAnimation(forKey: "nuvolettaadxCibiParlantiAnim")
			layers["textnuvolettasx"]?.removeAnimation(forKey: "textnuvolettasxCibiParlantiAnim")
			layers["textnuvolettadx"]?.removeAnimation(forKey: "textnuvolettadxCibiParlantiAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			layer.removeAllAnimations()
		}
	}
	
}
