//
//  NSURL+Analysis.swift
//  zdxx
//
//  Created by Liuming Qiu on 16/5/13.
//  Copyright © 2016年 ZW. All rights reserved.
//

import Foundation

extension NSURL{
    /**
     测试URL是否包括某个Key,并等于某个值
     
     - parameter key: url里的键
     - parameter value: url里的值
     
     - returns: Bool
     */
    func analysedKey(key:String,value:String) -> Bool {
        let a = self.absoluteString.componentsSeparatedByString("?")
        guard a.count >= 2 else{
            return false
        }
        let b = a.last!.componentsSeparatedByString("&")
        guard b.count > 0 else{
            return false
        }
        let c = b.flatMap { (str) -> [String:String]? in
            let a = str.componentsSeparatedByString("=")
            if a.count == 2{
                return [a.first!:a.last!]
            }else{
                return nil
            }
        }
        for d in c {
            if d[key] == value{
                return true
            }
        }
        return false
    }

}