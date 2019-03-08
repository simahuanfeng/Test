//
//  MainViewController.swift
//  DYZB
//
//  Created by 张振宇 on 2019/3/5.
//  Copyright © 2019 张振宇. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildVc(storyName:"Home")
        addChildVc(storyName:"Live")
        addChildVc(storyName:"Follow")
        addChildVc(storyName:"My")
    }
    
    private func addChildVc(storyName : String){
        //1.通过storyboard获取控制器
        let childVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        //2.将childVc作为子控制器
        addChild(childVc)
    }



}
