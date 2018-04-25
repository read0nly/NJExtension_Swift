//
//  UIView_NJView.swift
//  PhotosManager
//
//  Created by jie liu on 2018/4/12.
//  Copyright © 2018年 jie liu. All rights reserved.
//

import Foundation
import UIKit


public extension UIView {
    public var nj_width:CGFloat {
        return self.bounds.size.width
    }
    public var nj_height:CGFloat {
        return self.bounds.size.height
    }
    public var nj_x:CGFloat {
        return self.frame.origin.x
    }
    public var nj_y:CGFloat {
        return self.frame.origin.y
    }
    public var nj_left:CGFloat {
        return self.frame.origin.x
    }
    public var nj_top:CGFloat {
        return self.frame.origin.y
    }
    public var nj_bottom:CGFloat {
        return self.frame.origin.y + self.frame.size.height
    }
    public var nj_right:CGFloat {
        return self.frame.origin.x + self.frame.size.width
    }
    public var nj_orgin:CGPoint {
        return self.frame.origin
    }
    public var nj_size:CGSize {
        return self.frame.size
    }
    
   
}
