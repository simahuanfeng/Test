//
//  HomeViewController.swift
//  DYZB
//
//  Created by 张振宇 on 2019/3/8.
//  Copyright © 2019 张振宇. All rights reserved.
//

import UIKit
private let kTitleViewH : CGFloat = 40

class HomeViewController: UIViewController {
//Mark：-懒加载属性
    private lazy var pageTitleView : PageTitleView = {
        let titleFrame = CGRect(x: 0, y: kStatusBarH+kNavigationBar, width: kScreenW, height: kTitleViewH)
        let titles = ["推荐","游戏","娱乐","趣玩"]
        let titleView = PageTitleView(frame :titleFrame,titles :titles)
        return titleView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置UI界面
      setupUI()
      
    }
    
}
//Mark:设置UI界面
extension HomeViewController {
    private func setupUI(){
        //0.不需要调整UIScrollView的内边距
        automaticallyAdjustsScrollViewInsets = false
        //1.设置导航栏
        setupNavigationBar()
        //2.添加TitleView
        view.addSubview(pageTitleView)
       
    }
    private func setupNavigationBar(){
        // 1.z设置左侧Item

    
        navigationItem.leftBarButtonItem = UIBarButtonItem(Name: "1")
        
        // 2.设置右侧Item
        let size = CGSize(width: 40, height: 40)
       
        let historyItem = UIBarButtonItem(Name: "2", highImageName: "5", size: size)
        let searchItem = UIBarButtonItem(Name: "2", highImageName: "5", size: size)
        let qrcodeItem = UIBarButtonItem(Name: "2", highImageName: "5", size: size)
       
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcodeItem]
        
    }

}
