//
//  GTObjectManager.swift
//  RestKiter
//
//  Created by 岡下 幸生 on 2014/11/05.
//  Copyright (c) 2014年 miyazawa. All rights reserved.
//

import Foundation

class GTObjectManager: RKObjectManager {

    private var objectManager: RKObjectManager!
    
    func gitMappingDescriptor() {

        let baseURL = NSURL(string: "https://api.github.com")
        objectManager = RKObjectManager(baseURL: baseURL)

        AFNetworkActivityIndicatorManager.sharedManager().enabled = true

        objectManager.requestSerializationMIMEType = RKMIMETypeJSON

        objectManager.HTTPClient.setDefaultHeader("Authorization", value: "token d8b64d56f907c10c5fe17063af47751dbd7236aa")


        setupRequestDescriptors()
        setupResponseDescriptors()

    }

    func gitApitest() {
        objectManager?.getObjectsAtPath( "/user", parameters: nil,
            success: { (operation: RKObjectRequestOperation!, mappingResult: RKMappingResult!) -> ()
                in
                println("loaded success")
                let currentUser: User = mappingResult.array().first as User
                println(currentUser.login)
            }, failure: {
                (operation: RKObjectRequestOperation!, error: NSError!) -> ()
                in println("error")
        })

    }


    func setupRequestDescriptors() {

    }

    func setupResponseDescriptors() {

        var authenticatedUserResponseDescriptors: RKResponseDescriptor = RKResponseDescriptor(mapping: MappingProvider.userMapping(), method: RKRequestMethod.GET, pathPattern: "/user", keyPath: nil, statusCodes: NSIndexSet(index: RKStatusCodeClassSuccessful))

        objectManager?.addResponseDescriptor(authenticatedUserResponseDescriptors)
    }


}