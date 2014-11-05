//
//  ViewController.swift
//  RestKiter
//
//  Created by 岡下 幸生 on 2014/11/05.
//  Copyright (c) 2014年 miyazawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //RestKit エラーでなかなか動かせなかったのでシンプルなつくりに
        //参考は AKGithubClientのObj-C版
        var gt: GTObjectManager = GTObjectManager()
        gt.gitMappingDescriptor()
        gt.gitApitest()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

