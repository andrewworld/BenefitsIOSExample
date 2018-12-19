//
//  Constants.swift
//  Benefits
//
//  Created by Andrew on 19/12/2018.
//  Copyright © 2018 Andrew Inc. All rights reserved.
//

import Foundation

struct URLs {
    private struct Domains {
        static let data = "https://benefit-app-api-graphql.herokuapp.com"
        static let auth = "https://smg.itechart-group.com"
    }
    
    private struct Routes {
        static let graphql = "/graphql"
        static let login = "/MobileServiceNew/MobileService.svc/PostAuthenticate"
    }
    
    static let baseURL = Domains.data + Routes.graphql
    static let authURL = Domains.auth + Routes.login
}

struct Keys {
    struct UserDefaults {
        static let sessionId = "sessionId"
    }
}

struct Images {
    static let category_18pt = "category_18pt"
    static let category_24pt = "category_24pt"
}
