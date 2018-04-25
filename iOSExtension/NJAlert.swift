//
//  NJAlert.swift
//  PhotosManager
//
//  Created by jie liu on 2018/4/12.
//  Copyright © 2018年 jie liu. All rights reserved.
//

import Foundation
import UIKit

open class NJAlert {

 
    /// 只有一个确认按钮的alert
    ///
    /// - Parameters:
    ///   - controller: vc  默认是rootVC
    ///   - title: 标题
    ///   - message: 描述
    ///   - actionTitle: 行为  默认” 好的 ”
    ///   - actionStyle: 行为style 默认 default
    ///   - actionHandle: 行为动作
    public static func addAlertViewController(to controller:UIViewController? = UIApplication.shared.keyWindow?.rootViewController,title:String?,message:String?,actionTitle:String = "好的",actionStyle:UIAlertActionStyle = .default ,actionHandle:@escaping ()->()) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: actionTitle, style: .default, handler: { (action) in
            actionHandle()
            alertVC.dismiss(animated: true, completion: nil)
        }))
        controller?.present(alertVC, animated: true, completion: nil)
    }
    
    /// alert  确认 和取消
    ///
    /// - Parameters:
    ///   - controller: vc 默认  rootVC
    ///   - title: 标题
    ///   - message: 信息
    ///   - actionLeftTitle: 左按钮  默认“取消”
    ///   - actionLeftStyle: 左按钮风格  默认“确认”
    ///   - actionRightTitle: 右按钮   默认cancel
    ///   - actionRightStyle: 右按钮风格  默认destructive
    ///   - actionLeftHandle: 左 动作
    ///   - actionRightHandle: 右 动作
    public static func addAlertViewController(to controller:UIViewController? = UIApplication.shared.keyWindow?.rootViewController,title:String?,message:String?,actionLeftTitle:String = "取消",actionLeftStyle:UIAlertActionStyle = .cancel ,actionRightTitle:String = "确认",actionRightStyle:UIAlertActionStyle = .destructive ,actionLeftHandle:@escaping ()->(),actionRightHandle:@escaping ()->()) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: actionLeftTitle, style: .default, handler: { (action) in
            actionLeftHandle()
            alertVC.dismiss(animated: true, completion: nil)
        }))
        alertVC.addAction(UIAlertAction(title: actionRightTitle, style: .default, handler: { (action) in
            actionRightHandle()
            alertVC.dismiss(animated: true, completion: nil)
        }))
        controller?.present(alertVC, animated: true, completion: nil)
    }
}
