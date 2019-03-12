import Metal
import UIKit
import QuartzCore

class MetalView : UIView {
    var _metalLayer: CAMetalLayer!
    var _device: MTLDevice!
    
    override class var layerClass: AnyClass {
        get {
            return CAMetalLayer.self;
        }
    }
    
    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)!
        
        _metalLayer = self.layer as? CAMetalLayer
        _metalLayer.pixelFormat = .bgra8Unorm
        _metalLayer.framebufferOnly = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}
