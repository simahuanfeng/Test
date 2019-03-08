//
//  HomeViewController.swift
//  DYZB
//
//  Created by 张振宇 on 2019/3/8.
//  Copyright © 2019 张振宇. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
}
//Mark:设置UI界面
extension HomeViewController {
    private func setupUI(){
        //1.设置导航栏
        setupNavigationBar()
    }
    private func setupNavigationBar(){
        //1.z设置左侧Item
    
        let btn = UIButton()
        btn.setImage(UIImage(named:"1"), for: .normal )
        btn.sizeToFit()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
        //2.设置右侧Item
        let historyBtn = UIButton()
        historyBtn.setImage(UIImage(named: "2"), for: .normal)
        historyBtn.setImage(UIImage(named: "5"), for: .highlighted)
        btn.sizeToFit()
        let historyItem = UIBarButtonItem(customView: historyBtn)
        
        let searchBtn = UIButton()
        searchBtn.setImage(UIImage(named: "3"), for: .normal)
        searchBtn.setImage(UIImage(named: "5"), for: .highlighted)
        btn.sizeToFit()
        let searchItem = UIBarButtonItem(customView: searchBtn)
        
        let qrcodeBtn = UIButton()
        qrcodeBtn.setImage(UIImage(named: "4"), for: .normal)
        qrcodeBtn.setImage(UIImage(named: "5"), for: .highlighted)
        btn.sizeToFit()
        let qrcodeItem = UIBarButtonItem(customView: qrcodeBtn)
        
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcodeItem]
        
    }
}
