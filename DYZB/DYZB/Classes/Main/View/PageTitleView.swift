//
//  PageTitleView.swift
//  DYZB
//
//  Created by 张振宇 on 2019/3/8.
//  Copyright © 2019 张振宇. All rights reserved.
//

import UIKit

private let kScrollLineH : CGFloat = 2

class PageTitleView : UIView {
    //mark：-定义属性
    private var titles : [String]
    //mark :- 懒加载属性
    private lazy var titleLabel : [UILabel] = [UILabel]()
    private lazy var scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = false
        scrollView.scrollsToTop = false
        scrollView.bounces = false
        return scrollView
    }()
    
    private lazy var scrollLine : UIView = {
       let scrollline = UIView()
        scrollline.backgroundColor = UIColor.orange
        return scrollline
    }()
    //Mark:-自定义构造函数
    init(frame : CGRect ,titles : [String]){
        self.titles = titles
        super.init(frame :frame)
        
        //设置UI界面
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
//MARK : -设置UI界面
extension PageTitleView {
    private func setupUI(){
        //1.添加UIScrollView
        addSubview(scrollView)
        scrollView.frame = bounds
        
        //2.添加title对应的Label
        setupTitleLabels()
        
        //3.设置底线和滚动滑块
        setupBottomLineAndScrollLine()
    }
    private func setupTitleLabels(){
        //0.确定label的一些frame的值
        let labelW : CGFloat = frame.width / CGFloat(titles.count)
        let labelH : CGFloat = frame.height - kScrollLineH
        let labelY : CGFloat = 0
        for (index,title) in titles.enumerated(){
           
            //1.创建UILabel
            let label = UILabel()
            //2.设置Label的属性
            label.text = title
            label.tag = index
            label.font = UIFont.systemFont(ofSize:16)
            label.textColor = UIColor.darkGray
            label.textAlignment = .center
            
            //3.设置label的frame
            let labelX : CGFloat = labelW * CGFloat(index)
            label.frame = CGRect(x: labelX, y: labelY, width: labelW, height: labelH)
            
            //4.将label添加到scrollView中
            scrollView.addSubview(label)
            titleLabel.append(label)
        }
    }
    private func setupBottomLineAndScrollLine(){
        //1.添加底线
        let bottomLine = UIView()
        bottomLine.backgroundColor = UIColor.lightGray
        let lineH : CGFloat = 0.5
        bottomLine.frame = CGRect(x: 0, y: frame.height-lineH, width: frame.width, height: lineH)
        addSubview(bottomLine)
        //2.添加scrolline
        //2.1 获取第一个Label
        guard let firstLabel = titleLabel.first else { return}
        firstLabel.textColor = UIColor.orange
        scrollView.addSubview(scrollLine)
        //2.2设置scrollLine的设置
        scrollLine.frame = CGRect(x: firstLabel.frame.origin.x, y: frame.height - kScrollLineH, width: firstLabel.frame.width, height: kScrollLineH)
        
    }
}
