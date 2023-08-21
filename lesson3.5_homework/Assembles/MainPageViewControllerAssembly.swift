//
//  MainPageViewControllerAssembly.swift
//  lesson3.5_homework
//
//  Created by Элина Карапетян on 21.08.2023.
//

import Foundation

struct MainPageViewControllerAssembly{
    func create() -> MainPageViewController{
        let mainPageView = MainPageView()
        
        let controller = MainPageViewController(mainPageView: mainPageView)
        
        
    }
}
