//
//  User.swift
//  RestKiter
//
//  Created by 岡下 幸生 on 2014/11/05.
//  Copyright (c) 2014年 miyazawa. All rights reserved.
// NSNumberをIntにしててはまってた。。。

import Foundation

class User: NSObject {
    var login: String?
    var userId: NSNumber?
    var avatarUrl: String?
    var name: String?
    var publicReposCount: NSNumber?
    var publicGistsCount: NSNumber?
}