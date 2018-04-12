//
//  NJConst.swift
//  PhotosManager
//
//  Created by jie liu on 2018/4/12.
//  Copyright © 2018年 jie liu. All rights reserved.
//

import Foundation
/// 在Swift Compiler - Custom Flags   > Other Swift Flags  > Debug > -D DebugType 设置完成之后，只在debug模式下调用
func PrintLog<N>(message:N,fileName:String = #file,methodName:String = #function,lineNumber:Int = #line){
    #if DebugType
        print("\(fileName as NSString)\n方法:\(methodName)\n行号:\(lineNumber)\n打印信息\(message)");
    #endif
}
