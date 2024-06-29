//
//  TabBarVIewControlloer.swift
//  LoginSample
//
//  Created by t2023-m0013 on 6/28/24.
//

import UIKit

class TabBarVIewControlloer: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = Select2ViewController()
        let searchVC = Select3ViewController()
        let libraryVC = Select4ViewController()
        
        //각 tab bar의 viewcontroller 타이틀 설정
        
        homeVC.title = "홈"
        searchVC.title = "검색"
        libraryVC.title = "지도"
        
        homeVC.tabBarItem.image = UIImage.init(systemName: "house")
        searchVC.tabBarItem.image = UIImage.init(systemName: "magnifyingglass")
        libraryVC.tabBarItem.image = UIImage.init(systemName: "map")
        
        //                self.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0);
        
        // 위에 타이틀 text를 항상 크게 보이게 설정
        homeVC.navigationItem.largeTitleDisplayMode = .always
        searchVC.navigationItem.largeTitleDisplayMode = .always
        libraryVC.navigationItem.largeTitleDisplayMode = .always
        
        // navigationController의 root view 설정
        let navigationHome = UINavigationController(rootViewController: homeVC)
        let navigationSearch = UINavigationController(rootViewController: searchVC)
        let navigationLibrary = UINavigationController(rootViewController: libraryVC)
        
        
        navigationHome.navigationBar.prefersLargeTitles = true
        navigationSearch.navigationBar.prefersLargeTitles = true
        navigationLibrary.navigationBar.prefersLargeTitles = true
        
        setViewControllers([navigationHome, navigationSearch, navigationLibrary], animated: false)
    }
    
    let HEIGHT_TAB_BAR:CGFloat = 100
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        var tabFrame = self.tabBar.frame
        tabFrame.size.height = HEIGHT_TAB_BAR
        tabFrame.origin.y = self.view.frame.size.height - HEIGHT_TAB_BAR
        self.tabBar.frame = tabFrame
    }
}


#Preview {
    TabBarVIewControlloer()
}
