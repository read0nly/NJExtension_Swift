//
//  CAlayer+NJLayer.swift
//  PhotosManager
//
//  Created by jie liu on 2018/4/12.
//  Copyright © 2018年 jie liu. All rights reserved.
//

import Foundation
import UIKit

public extension CALayer {
    

    public var nj_transformScaleX:CGFloat {
        get{
            let x = self.value(forKey: "transform.scale.x") as? CGFloat ?? 0
            
            return CGFloat(x)
        }
        set{
            self.setValue(newValue, forKey: "transform.scale.x")
        }
    }
    
    public var nj_transformScaleY:CGFloat {
        get{
            let x = self.value(forKey: "transform.scale.y") as? CGFloat ?? 0
            
            return CGFloat(x)
        }
        set{
            self.setValue(newValue, forKey: "transform.scale.y")
        }
    }
    
    public var nj_transformRotationZ:CGFloat {
        get{
            let x = self.value(forKey: "transform.rotation.z") as? CGFloat ?? 0
            
            return CGFloat(x)
        }
        set{
            self.setValue(newValue, forKey: "transform.rotation.z")
        }
    }
}

