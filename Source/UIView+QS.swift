//
//  UIView+QS.swift
//  Test
//
//  Created by qiansheng on 2019/4/16.
//  Copyright © 2019 GCI. All rights reserved.
//

import Foundation
import UIKit
public extension UIView {
    
    var left : CGFloat {
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin.x
        }
    }
    
    var  top : CGFloat {
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin.y
        }
    }
    
    var right : CGFloat {
        set  {
            var frame = self.frame
            frame.origin.x = newValue - frame.size.width
            self.frame = frame
        }
        get {
            return self.frame.origin.x + self.frame.size.width
        }
    }
    
    var bottom : CGFloat {
        set {
            var frame = self.frame
            frame.origin.y = newValue - frame.size.height
            self.frame = frame
        }
        get {
            return self.frame.origin.y + self.frame.size.height
        }
    }
    
    var width : CGFloat {
        set {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
        get {
            return self.frame.size.width
        }
    }
    
    var height : CGFloat {
        set {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
        get {
            return self.frame.size.height
        }
    }
    
    var centerX : CGFloat {
        set {
            self.center = CGPoint(x: newValue, y: self.center.y)
        }
        get {
            return self.center.x
        }
    }
    
    var centerY : CGFloat {
        set {
            self.center = CGPoint(x: self.center.x, y: newValue)
        }
        get {
            return self.center.y
        }
    }
    
    var origin : CGPoint {
        set {
            var frame = self.frame
            frame.origin = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin
        }
        
    }
    
    var size : CGSize {
        set {
            var frame = self.frame
            frame.size = newValue
            self.frame = frame
        }
        get {
            return self.frame.size
        }
        
    }
    
    func findViewController() ->UIViewController?{
        if let nextResponse = self.next as? UIViewController {
            return nextResponse
        } else if let nextResponder = self.next as? UIView {
            return nextResponder.findViewController()
        } else {
            return nil
        }
    }
    
 public   func addSubViews(_ subviews: UIView...) {
        subviews.forEach(addSubview)
    }
    
    
}
