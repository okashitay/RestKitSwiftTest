//
//  MappingProvider.swift
//  RestKiter
//
//  Created by 岡下 幸生 on 2014/11/05.
//  Copyright (c) 2014年 miyazawa. All rights reserved.
//

import Foundation

class MappingProvider: NSObject {

    class func userMapping() -> RKObjectMapping? {
        let mapper = RKObjectMapping(forClass: User.self)

        let mappingDictionary = [
            "login": "login",
            "id": "userId",
            "avatar_url": "avatarUrl",
            "name": "name",
            "public_repos": "publicReposCount",
            "public_gists" : "publicGistsCount"
        ]
        mapper.addAttributeMappingsFromDictionary(mappingDictionary)
        return mapper
    }

    /*class func repositoryMapping() -> RKObjectMapping {

    }*/
}