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
        // Do any additional setup after loading the view, typically from a nib.

        //RestKit エラーでなかなか動かせなかったのでシンプルなつくりに
        var gt: GTObjectManager = GTObjectManager()
        gt.gitMappingDescriptor()
        gt.gitApitest()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

