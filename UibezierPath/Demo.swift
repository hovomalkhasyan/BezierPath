//
//  Demo.swift
//  UibezierPath
//
//  Created by Hovo on 7/29/20.
//  Copyright © 2020 Hovo. All rights reserved.
//

import UIKit
@IBDesignable
class Demo: UIView {
    var path: UIBezierPath!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.darkGray
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func draw(_ rect: CGRect) {
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        roundCorners(corners: [.topLeft, .topRight], radius: 50)
    }
    
    func createRectangle() {
        // Initialize the path.
        path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 30))
        path.addLine(to: CGPoint(x:30, y: 30))
        let controlPoint1 = CGPoint(x: 45, y: 15)
        let controlPoint2 = CGPoint(x: 50, y: 75)
        path.addCurve(to: CGPoint(x: 60, y: 60),
                      controlPoint1: controlPoint1,
                      controlPoint2: controlPoint2)
        let controlPoint4 = CGPoint(x: 70, y: 15)
        let controlPoint3 = CGPoint(x: 65, y: 65 )
        path.addCurve(to: CGPoint(x: 75, y: 30), controlPoint1: controlPoint3, controlPoint2: controlPoint4)
        path.addLine(to: CGPoint(x:frame.size.width, y: 30))
        
    
        path.addLine(to: CGPoint(x:frame.size.width , y: 100))
        
        path.addLine(to: CGPoint(x:0 , y: 100))
//        path.addLine(to: CGPoint(x:100 , y: 150))
//        path.addLine(to: CGPoint(x:50, y: 50))
//        path.addLine(to: CGPoint(x:150, y: 0))
        
                path.close()

        
//           path.move(to: CGPoint(x: 0.0, y: 0.0))
//
//           path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
//
//           path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
//
//           path.addLine(to: CGPoint(x: self.frame.size.width, y: 0.0))
//          path.close()
      }
    func d() {
    path = UIBezierPath()
    path.move(to: CGPoint(x: 0, y: 0))
    path.addLine(to: CGPoint(x: self.frame.size.width/2 - 50.0, y: 0.0))
    path.addArc(withCenter: CGPoint(x: self.frame.size.width/2 - 25.0, y: 25.0),
                radius: 25.0,
                startAngle: CGFloat(180.0).toRadians(),
                endAngle: CGFloat(0.0).toRadians(),
                clockwise: false)
    path.addLine(to: CGPoint(x: self.frame.size.width/2, y: 0.0))
    }
    
    func flipcreateRectangle() {
         path = UIBezierPath()
        let controllPoint1 = CGPoint(x: 75, y: 125)
        let controllPoint2 = CGPoint(x: 200, y: 75)
        path.move(to: CGPoint(x:20.0, y: 100.0))
        path.addCurve(to:CGPoint(x: 250, y: 100), controlPoint1: controllPoint1, controlPoint2: controllPoint2)
        
//        path.addLine(to: CGPoint(x: self.frame.size.width, y: 0.0))
//        path.addLine(to: CGPoint(x: self.frame.size.height/2, y: self.frame.size.width*2/3))
//        path.close()
        
        
    }
    func createNewElement() {
        path = UIBezierPath()
        let width = self.frame.size.width
        let height = self.frame.size.height
        let controlPoint1 = CGPoint(x: width/3 + 40, y: height/4)
        let controlPoint2 = CGPoint(x: width/3 , y: height - 35)
        let controlPoint3 = CGPoint(x: width-80, y:  height - 35)
         let controlPoint4 = CGPoint(x: width/2, y: height/4)
        path.move(to: CGPoint(x: 0, y: height/4))
        path.addLine(to: CGPoint(x: width/3, y: height/4))
        path.addCurve(to: CGPoint(x: width/2, y: height - 35),
                      controlPoint1: controlPoint1,
                      controlPoint2: controlPoint2)
        path.addCurve(to: CGPoint(x: width-80, y: height/4),
                      controlPoint1: controlPoint3,
                      controlPoint2: controlPoint4)
        path.addLine(to: CGPoint(x: width, y: height/4))
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.close()

//        let controlPoint3 = CGPoint(x: width-80, y:  height - 35)
       
        
    }
    
//    func newElement() {
//        path = UIBezierPath()
//        path.move(to: CGPoint(x:0.0, y: 0.0))
//        path.addLine(to: CGPoint(x: 50, y: 50))
//        path.addLine(to: CGPoint(x: 100, y: 0.0))
//        path.addLine(to: CGPoint(x: 50, y: 100))
//    }
    
        func complexShape() {
            path = UIBezierPath()
            path.move(to: CGPoint(x: 0.0, y: 0.0))
            path.addLine(to: CGPoint(x: self.frame.size.width/2 - 50.0, y: 0.0))
            path.addArc(withCenter: CGPoint(x: self.frame.size.width/2 - 25.0, y: 25.0),
                        radius: 25.0,
                        startAngle: CGFloat(180.0).toRadians(),
                        endAngle: CGFloat(0.0).toRadians(),
                        clockwise: false)
            path.addLine(to: CGPoint(x: self.frame.size.width/2, y: 0.0))
            path.addLine(to: CGPoint(x: self.frame.size.width - 50.0, y: 0.0))
            path.addCurve(to: CGPoint(x: self.frame.size.width, y: 50.0),
                          controlPoint1: CGPoint(x: self.frame.size.width + 50.0, y: 25.0),
                          controlPoint2: CGPoint(x: self.frame.size.width - 150.0, y: 50.0))
            path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
            path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
            path.close()
         
            let shapeLayer = CAShapeLayer()
            shapeLayer.path = path.cgPath
         
            self.backgroundColor = UIColor.orange
            self.layer.mask = shapeLayer
        }
    func message(){
        path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: frame.size.width-20, y: 0))
        path.addArc(withCenter: CGPoint(x: frame.size.width-20, y: 20),
                    radius: 20,
                    startAngle: CGFloat(270).toRadians(),
                    endAngle: CGFloat(0).toRadians(),
                    clockwise: true)
        path.addLine(to: CGPoint(x: frame.size.width, y:frame.size.height-20))
        path.addArc(withCenter: CGPoint(x: frame.size.width-20, y: frame.size.height-20),
                    radius: 20,
                    startAngle: CGFloat(0).toRadians(),
                    endAngle: CGFloat(90).toRadians(),
                    clockwise: true)
        path.addLine(to: CGPoint(x: 50, y: frame.size.height))
        path.addArc(withCenter: CGPoint(x: 50, y: frame.size.height-20),
                    radius: 20,
                    startAngle: CGFloat(90).toRadians(),
                    endAngle: CGFloat(180).toRadians(),
                    clockwise: true)
        path.addLine(to: CGPoint(x: 30, y: 30))
        path.addArc(withCenter: CGPoint(x: 0, y: 30),
                    radius: 30,
                    startAngle: CGFloat(0).toRadians(),
                    endAngle: CGFloat(270).toRadians(),
                    clockwise: false)
    }
    private func createSigninView() {
        let height = frame.size.height
        let width = frame.size.width
        path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x:0, y: height/2))
        path.addArc(withCenter: CGPoint(x: 20, y: height/2), radius: 20, startAngle: CGFloat(270).toRadians(), endAngle: CGFloat(0).toRadians(), clockwise: true)
        path.addLine(to: CGPoint(x: width-20, y: height/2 - 20))
        path.addArc(withCenter: CGPoint(x: width - 10, y: height/2 ), radius: 20, startAngle: CGFloat(0).toRadians(), endAngle: CGFloat(90).toRadians(), clockwise: true)
        path.addLine(to: CGPoint(x: width, y: height))
        path.close()
    }
    
}
extension CGFloat {
    func toRadians() -> CGFloat {
        return self * .pi / 180.0
    }
}

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
