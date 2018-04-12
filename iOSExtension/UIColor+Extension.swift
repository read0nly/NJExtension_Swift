//
//  UIColor+Extension.swift
//  SDEnterprise
//
//  Created by liujie on 2017/9/5.
//  Copyright © 2017年 lj. All rights reserved.
//

import UIKit
extension UIColor{

    
    /// 根据传入的16进制颜色来生成一个颜色
    ///
    /// - Parameter hex: 十六进制色  格式 0x000000
    /// - Returns: 返回生成的颜色
    static func nj_colorHex(hex:UInt32) -> UIColor{
        let r = (hex & 0xff0000) >> 16
        let g = (hex & 0x00ff00) >> 8
        let b = hex & 0x0000ff
        return nj_colorRGB(red: r, green: g, blue: b)
    }
    
    
    /// 随机颜色
    ///
    /// - Returns: 返回一个随机生成的颜色
    static func nj_randomColor() -> UIColor{
        let red = arc4random_uniform(256)
        let green = arc4random_uniform(256)
        let blue = arc4random_uniform(256)
        return nj_colorRGB(red: red, green: green, blue: blue)
    }
    
    /// 根据传入的rgb值 返回生成的颜色
    ///
    /// - Parameters:
    ///   - red: 红色值 0-255
    ///   - green: 绿色值 0-255
    ///   - blue: 蓝色值 0-255
    /// - Returns: 返回生成的颜色
    static func nj_colorRGB(red:UInt32, green:UInt32, blue:UInt32) -> UIColor{
        guard red > 0 ,red < 255,
            green > 0 ,green < 255,
            blue > 0 ,blue < 255
            else {
                return UIColor.red
        }
        
        return UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1)
    }
    
}
