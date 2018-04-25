//
//  NJUIConst.swift
//  PhotosManager
//
//  Created by jie liu on 2018/4/12.
//  Copyright © 2018年 jie liu. All rights reserved.
//

import Foundation
import UIKit

public let NJScreenWidth = UIScreen.main.bounds.size.width
public let NJScreenHeight = UIScreen.main.bounds.size.height

/* ==============关于手机适配============== */
public let iOS7Later = Double(UIDevice.current.systemVersion)! >= 7.0
public let iOS8Later = Double(UIDevice.current.systemVersion)! >= 8.0
public let iOS9Later = Double(UIDevice.current.systemVersion)! >= 9.0
public let iOS9_1Later = Double(UIDevice.current.systemVersion)! >= 9.1
public let iOS9_3Later = Double(UIDevice.current.systemVersion)! >= 9.3
public let iOS10Later = Double(UIDevice.current.systemVersion)! >= 10.0
public let iOS10_3Later = Double(UIDevice.current.systemVersion)! >= 10.3
public let iOS11Later = Double(UIDevice.current.systemVersion)! >= 11.0
public let iOS11_1Later = Double(UIDevice.current.systemVersion)! >= 11.1

///屏幕类型
public let iPhone4 = UIScreen.main.bounds.width == 320 && UIScreen.main.bounds.size.height == 480
public let iPhone5 = UIScreen.main.bounds.width == 320 && UIScreen.main.bounds.size.height == 568
public let iPhone6 = UIScreen.main.bounds.width == 375 && UIScreen.main.bounds.size.height == 667
public let iPhone6P = UIScreen.main.bounds.width == 414 && UIScreen.main.bounds.size.height == 736
public let iPhoneX = UIScreen.main.bounds.width == 375 && UIScreen.main.bounds.size.height == 812
public let iPhoneSE = UIScreen.main.bounds.width == 320 && UIScreen.main.bounds.size.height == 569
public let iPaid1And2Mini1 = UIScreen.main.bounds.width == 768 && UIScreen.main.bounds.size.height == 1024
public let iPaid3And4Mini2 = UIScreen.main.bounds.width == 1536 && UIScreen.main.bounds.size.height == 2048

///以iPhone6 为基准的等比例适配
public func NJ6WidthRealValue(value:CGFloat) -> CGFloat {return value / CGFloat(375) * NJScreenWidth}
public func NJ6HeightRealValue(value:CGFloat) -> CGFloat {return value / CGFloat(667) * NJScreenHeight}
public func NJ6PWidthRealValue(value:CGFloat) -> CGFloat {return value / CGFloat(414) * NJScreenWidth}
public func NJ6PHeightRealValue(value:CGFloat) -> CGFloat {return value / CGFloat(736) * NJScreenHeight}

/// iphonex适配
public let NJStatusBarHeight:CGFloat = iPhoneX ? 44.0 : 20.0
public let NJNavBarHeight:CGFloat = 44.0
public let NJTabBarHeight:CGFloat = iPhoneX ? (49.0 + 34.0) : 49.0
public let NJTabbarSafeBottomMargin:CGFloat = iPhoneX ? 34.0 : 0.0
public let NJStatusBarAndNavBarHeight:CGFloat = iPhoneX ? 88.0 : 64.0
public func ViewSafeAreaInsets(view:UIView) -> UIEdgeInsets {
    if #available(iOS 11.0, *) {
        return view.safeAreaInsets
    } else {
        return UIEdgeInsets.zero
    }
}



