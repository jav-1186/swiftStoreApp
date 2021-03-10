//
//  quartzView.swift
//  jveit-finalProject
//
//  Created by Jeffrey Veit on 3/8/21.
//

import UIKit

class quartzView: UIView {

    var points : [CGPoint] = []
    var message : String = "Touch view"
    var tapMessage : String = ""
    
    override func draw(_ rect: CGRect)
    {
        if let context = UIGraphicsGetCurrentContext()
        {
            context.setStrokeColor(UIColor.blue.cgColor)
            context.setFillColor(UIColor.green.cgColor)
            context.setLineDash(phase:0, lengths: [])
            
            let rect1 = CGRect(x: 275, y: 465, width: 100, height: 60)
            context.strokeEllipse(in: rect1)
            context.fillEllipse(in: rect1)
            
            let text =  "Tap Here!"
            let textAttr : [NSAttributedString.Key : Any] = [
                .foregroundColor : UIColor.black,
                .font : UIFont(name: "Papyrus", size: 20)!
            ]
            text.draw(at: CGPoint(x: 284, y: 480), withAttributes: textAttr)
            tapMessage.draw(at: CGPoint(x: 150, y: 480), withAttributes: textAttr)
        }
    }
    
    var timer: Timer?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        handleTouches("touchBegan", touches: touches)
        tapMessage = ""
        if let touch = touches.first {
            if touch.tapCount >= 2 {
                timer?.invalidate()
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        handleTouches("touchMoved", touches: touches)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        handleTouches("touchEnded", touches: touches)
        if let touch = touches.first {
            if touch.tapCount == 2 {
                handleDoubleTap()
            } else {
                timer = Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false) {
                    _ in self.handleSingleTap()
                }
            }
        }
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) {
            _ in self.clearTouches()
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        handleTouches("touchCancelled", touches: touches)
    }
    
    func handleTouches(_ method: String, touches: Set<UITouch>) {
        message = method + "[\(touches.count)]:"
        points.removeAll(keepingCapacity: true)
        for touch in touches {
            let p = touch.location(in: self)
            message += String(format: " (%.2f, %.2f)", p.x, p.y)
            points.append(p)
        }
        setNeedsDisplay()
    }
    
    func handleSingleTap() {
        tapMessage = "Buy Organic!"
        print("Single tap!")
        setNeedsDisplay()
    }
    
    func handleDoubleTap() {
        tapMessage = "Shop Local!!"
        print("Double tap!!")
        setNeedsDisplay()
    }
    
    func clearTouches() {
        message = ""
        tapMessage = ""
        points.removeAll(keepingCapacity: true)
        setNeedsDisplay()
    }

}
