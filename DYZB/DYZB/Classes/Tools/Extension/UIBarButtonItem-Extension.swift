//
//  UIBarButtonItem-Extension.swift
//  DYZB
//
//  Created by 张振宇 on 2019/3/8.
//  Copyright © 2019 张振宇. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
//    class func createItem(Name : String ,highImageName : String ,size : CGSize) -> UIBarButtonItem {
//        let btn = UIButton()
//
//        btn.setImage(UIImage(named : Name), for: .normal)
//        btn.setImage(UIImage(named: highImageName), for: .highlighted)
//        btn.frame = CGRect(origin: CGPoint.zero, size: size)
//        return UIBarButtonItem(customView: btn)
//
//        }
//
    //便利构造函数：1》convenience 开头 2〉在构造函数中必须ing缺调用一个设计的构造函数（self）
    convenience init(Name : String ,highImageName : String = "" ,size : CGSize = CGSize.zero){
        let btn = UIButton()
        btn.setImage(UIImage(named : Name), for: .normal)
        if highImageName != ""{
            btn.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        if size == CGSize.zero{
            btn.sizeToFit()
        }else {
             btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
       
        self.init(customView :btn)
        
        
    }


}
