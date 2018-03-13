//
//  TreeCustomView.swift
//
//  Code generated using QuartzCode 1.63.0 on 19/12/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class TreeCustomView: UIView, CAAnimationDelegate {
	
	var updateLayerValueForCompletedAnimation : Bool = false
	var animationAdded : Bool = false
	var completionBlocks = [CAAnimation: (Bool) -> Void]()
	var layers = [String: CALayer]()
	
	
	
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
	
	var moveTreeAnimProgress: CGFloat = 0{
		didSet{
			if(!self.animationAdded){
				removeAllAnimations()
				addMoveTreeAnimation()
				self.animationAdded = true
				layer.speed = 0
				layer.timeOffset = 0
			}
			else{
				let totalDuration : CGFloat = 3
				let offset = moveTreeAnimProgress * totalDuration
				layer.timeOffset = CFTimeInterval(offset)
			}
		}
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
		
		let tree = CALayer()
		self.layer.addSublayer(tree)
		layers["tree"] = tree
		
		let Group = CALayer()
		self.layer.addSublayer(Group)
		layers["Group"] = Group
		let apple = CALayer()
		Group.addSublayer(apple)
		layers["apple"] = apple
		let apple2 = CALayer()
		Group.addSublayer(apple2)
		layers["apple2"] = apple2
		let apple3 = CALayer()
		Group.addSublayer(apple3)
		layers["apple3"] = apple3
		let apple4 = CALayer()
		Group.addSublayer(apple4)
		layers["apple4"] = apple4
		let apple5 = CALayer()
		Group.addSublayer(apple5)
		layers["apple5"] = apple5
		let apple6 = CALayer()
		Group.addSublayer(apple6)
		layers["apple6"] = apple6
		let apple7 = CALayer()
		Group.addSublayer(apple7)
		layers["apple7"] = apple7
		let apple8 = CALayer()
		Group.addSublayer(apple8)
		layers["apple8"] = apple8
		let apple9 = CALayer()
		Group.addSublayer(apple9)
		layers["apple9"] = apple9
		let apple10 = CALayer()
		Group.addSublayer(apple10)
		layers["apple10"] = apple10
		
		resetLayerProperties(forLayerIdentifiers: nil)
		setupLayerFrames()
	}
	
	func resetLayerProperties(forLayerIdentifiers layerIds: [String]!){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if layerIds == nil || layerIds.contains("tree"){
			let tree = layers["tree"] as! CALayer
			tree.contents = UIImage(named:"tree")?.cgImage
		}
		if layerIds == nil || layerIds.contains("apple"){
			let apple = layers["apple"] as! CALayer
			apple.contents = UIImage(named:"apple")?.cgImage
		}
		if layerIds == nil || layerIds.contains("apple2"){
			let apple2 = layers["apple2"] as! CALayer
			apple2.contents = UIImage(named:"apple")?.cgImage
		}
		if layerIds == nil || layerIds.contains("apple3"){
			let apple3 = layers["apple3"] as! CALayer
			apple3.contents = UIImage(named:"apple")?.cgImage
		}
		if layerIds == nil || layerIds.contains("apple4"){
			let apple4 = layers["apple4"] as! CALayer
			apple4.contents = UIImage(named:"apple")?.cgImage
		}
		if layerIds == nil || layerIds.contains("apple5"){
			let apple5 = layers["apple5"] as! CALayer
			apple5.contents = UIImage(named:"apple")?.cgImage
		}
		if layerIds == nil || layerIds.contains("apple6"){
			let apple6 = layers["apple6"] as! CALayer
			apple6.contents = UIImage(named:"apple")?.cgImage
		}
		if layerIds == nil || layerIds.contains("apple7"){
			let apple7 = layers["apple7"] as! CALayer
			apple7.contents = UIImage(named:"apple")?.cgImage
		}
		if layerIds == nil || layerIds.contains("apple8"){
			let apple8 = layers["apple8"] as! CALayer
			apple8.contents = UIImage(named:"apple")?.cgImage
		}
		if layerIds == nil || layerIds.contains("apple9"){
			let apple9 = layers["apple9"] as! CALayer
			apple9.contents = UIImage(named:"apple")?.cgImage
		}
		if layerIds == nil || layerIds.contains("apple10"){
			let apple10 = layers["apple10"] as! CALayer
			apple10.contents = UIImage(named:"apple")?.cgImage
		}
		
		CATransaction.commit()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let tree = layers["tree"]{
			tree.frame = CGRect(x: -0.167 * tree.superlayer!.bounds.width, y: 0, width: 1.334 * tree.superlayer!.bounds.width, height: 1.0752 * tree.superlayer!.bounds.height)
		}
		
		if let Group = layers["Group"]{
			Group.frame = CGRect(x: 0.36 * Group.superlayer!.bounds.width, y: 0.20835 * Group.superlayer!.bounds.height, width: 0.291 * Group.superlayer!.bounds.width, height: 0.37815 * Group.superlayer!.bounds.height)
		}
		
		if let apple = layers["apple"]{
			apple.frame = CGRect(x: 0, y: 0.22873 * apple.superlayer!.bounds.height, width: 0.19931 * apple.superlayer!.bounds.width, height: 0.22873 * apple.superlayer!.bounds.height)
		}
		
		if let apple2 = layers["apple2"]{
			apple2.frame = CGRect(x: 0.27491 * apple2.superlayer!.bounds.width, y: 0.47156 * apple2.superlayer!.bounds.height, width: 0.19931 * apple2.superlayer!.bounds.width, height: 0.22873 * apple2.superlayer!.bounds.height)
		}
		
		if let apple3 = layers["apple3"]{
			apple3.frame = CGRect(x: 0.70103 * apple3.superlayer!.bounds.width, y: 0.24283 * apple3.superlayer!.bounds.height, width: 0.19931 * apple3.superlayer!.bounds.width, height: 0.22873 * apple3.superlayer!.bounds.height)
		}
		
		if let apple4 = layers["apple4"]{
			apple4.frame = CGRect(x: 0.27491 * apple4.superlayer!.bounds.width, y: 0, width: 0.19931 * apple4.superlayer!.bounds.width, height: 0.22873 * apple4.superlayer!.bounds.height)
		}
		
		if let apple5 = layers["apple5"]{
			apple5.frame = CGRect(x: 0.80069 * apple5.superlayer!.bounds.width, y: 0.64197 * apple5.superlayer!.bounds.height, width: 0.19931 * apple5.superlayer!.bounds.width, height: 0.22873 * apple5.superlayer!.bounds.height)
		}
		
		if let apple6 = layers["apple6"]{
			apple6.frame = CGRect(x: 0, y: 0.64197 * apple6.superlayer!.bounds.height, width: 0.19931 * apple6.superlayer!.bounds.width, height: 0.22873 * apple6.superlayer!.bounds.height)
		}
		
		if let apple7 = layers["apple7"]{
			apple7.frame = CGRect(x: 0.47423 * apple7.superlayer!.bounds.width, y: 0.77127 * apple7.superlayer!.bounds.height, width: 0.19931 * apple7.superlayer!.bounds.width, height: 0.22873 * apple7.superlayer!.bounds.height)
		}
		
		if let apple8 = layers["apple8"]{
			apple8.frame = CGRect(x: 0, y: 0.22873 * apple8.superlayer!.bounds.height, width: 0.19931 * apple8.superlayer!.bounds.width, height: 0.22873 * apple8.superlayer!.bounds.height)
		}
		
		if let apple9 = layers["apple9"]{
			apple9.frame = CGRect(x: 0.80069 * apple9.superlayer!.bounds.width, y: 0.64197 * apple9.superlayer!.bounds.height, width: 0.19931 * apple9.superlayer!.bounds.width, height: 0.22873 * apple9.superlayer!.bounds.height)
		}
		
		if let apple10 = layers["apple10"]{
			apple10.frame = CGRect(x: 0.27491 * apple10.superlayer!.bounds.width, y: 0, width: 0.19931 * apple10.superlayer!.bounds.width, height: 0.22873 * apple10.superlayer!.bounds.height)
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addMoveTreeAnimation(){
		self.layer.speed = 1
		self.animationAdded = false
		
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		let tree = layers["tree"] as! CALayer
		
		////Tree animation
		let treeTransformAnim         = CAKeyframeAnimation(keyPath:"transform.rotation.z")
		let radian                    = CGFloat.pi/180
		treeTransformAnim.values = [0, 
			 3 * radian, 
			 -3 * radian, 
			 3 * radian, 
			 -3 * radian, 
			 0, 
			 0]
		treeTransformAnim.keyTimes    = [0, 0.05, 0.1, 0.15, 0.2, 0.23, 1]
		treeTransformAnim.duration    = 3
		treeTransformAnim.repeatCount = Float.infinity
		
		let treeMoveTreeAnim : CAAnimationGroup = QCMethod.group(animations: [treeTransformAnim], fillMode:fillMode)
		tree.add(treeMoveTreeAnim, forKey:"treeMoveTreeAnim")
		
		let Group = layers["Group"] as! CALayer
		
		////Group animation
		let GroupTransformAnim         = CAKeyframeAnimation(keyPath:"transform.rotation.z")
        _                     = CGFloat.pi/180
		GroupTransformAnim.values = [0, 
			 3 * radian, 
			 -3 * radian, 
			 3 * radian, 
			 -3 * radian, 
			 0, 
			 0]
		GroupTransformAnim.keyTimes    = [0, 0.05, 0.1, 0.15, 0.2, 0.23, 1]
		GroupTransformAnim.duration    = 3
		GroupTransformAnim.repeatCount = Float.infinity
		
		let GroupMoveTreeAnim : CAAnimationGroup = QCMethod.group(animations: [GroupTransformAnim], fillMode:fillMode)
		Group.add(GroupMoveTreeAnim, forKey:"GroupMoveTreeAnim")
		
		let apple8 = layers["apple8"] as! CALayer
		
		////Apple8 animation
		let apple8PositionAnim         = CAKeyframeAnimation(keyPath:"position")
		apple8PositionAnim.values      = [NSValue(cgPoint: CGPoint(x: 0.09966 * apple8.superlayer!.bounds.width, y: 0.34309 * apple8.superlayer!.bounds.height)), NSValue(cgPoint: CGPoint(x: 0.09966 * apple8.superlayer!.bounds.width, y: 0.34463 * apple8.superlayer!.bounds.height)), NSValue(cgPoint: CGPoint(x: 0.09966 * apple8.superlayer!.bounds.width, y: 1.91721 * apple8.superlayer!.bounds.height)), NSValue(cgPoint: CGPoint(x: 0.09966 * apple8.superlayer!.bounds.width, y: 1.91721 * apple8.superlayer!.bounds.height))]
		apple8PositionAnim.keyTimes    = [0, 0.297, 0.597, 1]
		apple8PositionAnim.duration    = 3
		apple8PositionAnim.repeatCount = Float.infinity
		
		let apple8MoveTreeAnim : CAAnimationGroup = QCMethod.group(animations: [apple8PositionAnim], fillMode:fillMode)
		apple8.add(apple8MoveTreeAnim, forKey:"apple8MoveTreeAnim")
		
		let apple9 = layers["apple9"] as! CALayer
		
		////Apple9 animation
		let apple9PositionAnim         = CAKeyframeAnimation(keyPath:"position")
		apple9PositionAnim.values      = [NSValue(cgPoint: CGPoint(x: 0.90034 * apple9.superlayer!.bounds.width, y: 0.75633 * apple9.superlayer!.bounds.height)), NSValue(cgPoint: CGPoint(x: 0.90034 * apple9.superlayer!.bounds.width, y: 0.75364 * apple9.superlayer!.bounds.height)), NSValue(cgPoint: CGPoint(x: 0.90034 * apple9.superlayer!.bounds.width, y: 1.91721 * apple9.superlayer!.bounds.height)), NSValue(cgPoint: CGPoint(x: 0.90034 * apple9.superlayer!.bounds.width, y: 1.91721 * apple9.superlayer!.bounds.height))]
		apple9PositionAnim.keyTimes    = [0, 0.299, 0.728, 1]
		apple9PositionAnim.duration    = 3
		apple9PositionAnim.repeatCount = Float.infinity
		
		let apple9MoveTreeAnim : CAAnimationGroup = QCMethod.group(animations: [apple9PositionAnim], fillMode:fillMode)
		apple9.add(apple9MoveTreeAnim, forKey:"apple9MoveTreeAnim")
		
		let apple10 = layers["apple10"] as! CALayer
		
		////Apple10 animation
		let apple10PositionAnim         = CAKeyframeAnimation(keyPath:"position")
		apple10PositionAnim.values      = [NSValue(cgPoint: CGPoint(x: 0.37457 * apple10.superlayer!.bounds.width, y: 0.11436 * apple10.superlayer!.bounds.height)), NSValue(cgPoint: CGPoint(x: 0.37457 * apple10.superlayer!.bounds.width, y: 0.11191 * apple10.superlayer!.bounds.height)), NSValue(cgPoint: CGPoint(x: 0.37457 * apple10.superlayer!.bounds.width, y: 1.91721 * apple10.superlayer!.bounds.height)), NSValue(cgPoint: CGPoint(x: 0.37457 * apple10.superlayer!.bounds.width, y: 1.91721 * apple10.superlayer!.bounds.height))]
		apple10PositionAnim.keyTimes    = [0, 0.299, 0.82, 1]
		apple10PositionAnim.duration    = 3
		apple10PositionAnim.repeatCount = Float.infinity
		
		let apple10MoveTreeAnim : CAAnimationGroup = QCMethod.group(animations: [apple10PositionAnim], fillMode:fillMode)
		apple10.add(apple10MoveTreeAnim, forKey:"apple10MoveTreeAnim")
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
		if identifier == "moveTree"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["tree"]!.animation(forKey: "treeMoveTreeAnim"), theLayer:layers["tree"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["Group"]!.animation(forKey: "GroupMoveTreeAnim"), theLayer:layers["Group"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["apple8"]!.animation(forKey: "apple8MoveTreeAnim"), theLayer:layers["apple8"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["apple9"]!.animation(forKey: "apple9MoveTreeAnim"), theLayer:layers["apple9"]!)
			QCMethod.updateValueFromPresentationLayer(forAnimation: layers["apple10"]!.animation(forKey: "apple10MoveTreeAnim"), theLayer:layers["apple10"]!)
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "moveTree"{
			layers["tree"]?.removeAnimation(forKey: "treeMoveTreeAnim")
			layers["Group"]?.removeAnimation(forKey: "GroupMoveTreeAnim")
			layers["apple8"]?.removeAnimation(forKey: "apple8MoveTreeAnim")
			layers["apple9"]?.removeAnimation(forKey: "apple9MoveTreeAnim")
			layers["apple10"]?.removeAnimation(forKey: "apple10MoveTreeAnim")
		}
		self.layer.speed = 1
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			layer.removeAllAnimations()
		}
		self.layer.speed = 1
	}
	
}
