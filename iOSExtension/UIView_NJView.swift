//
//  UIView_NJView.swift
//  PhotosManager
//
//  Created by jie liu on 2018/4/12.
//  Copyright © 2018年 jie liu. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    var nj_width:CGFloat {
        return self.bounds.size.width
    }
    var nj_height:CGFloat {
        return self.bounds.size.height
    }
    var nj_x:CGFloat {
        return self.frame.origin.x
    }
    var nj_y:CGFloat {
        return self.frame.origin.y
    }
    var nj_left:CGFloat {
        return self.frame.origin.x
    }
    var nj_top:CGFloat {
        return self.frame.origin.y
    }
    var nj_bottom:CGFloat {
        return self.frame.origin.y + self.frame.size.height
    }
    var nj_right:CGFloat {
        return self.frame.origin.x + self.frame.size.width
    }
    var nj_orgin:CGPoint {
        return self.frame.origin
    }
    var nj_size:CGSize {
        return self.frame.size
    }
    
   
}
