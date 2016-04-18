//
//  String+extension.swift
//  YanXiuWang
//
//  Created by Liuming Qiu on 16/4/18.
//  Copyright © 2016年 ZW. All rights reserved.
//

import Foundation

extension String{
    /**
     中文转拼音
     
     - returns: 拼音
     */
    func pinYin() -> String {
        let pinYin = NSMutableString(string: self)
        // 1.转成带声调的拼音
        CFStringTransform(pinYin, nil, kCFStringTransformMandarinLatin, false)
        // 2.去除声调
        CFStringTransform(pinYin, nil, kCFStringTransformStripDiacritics, false)
        
        return pinYin.capitalizedString
    }
}