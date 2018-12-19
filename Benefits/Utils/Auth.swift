//
//  Auth.swift
//  Benefits
//
//  Created by Andrew on 30/11/2018.
//  Copyright © 2018 Andrew Inc. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class Auth {
    
    static func checkAuth(){
        
        let sessionId = UserDefaults.standard.object(forKey: "sessionId")
        var rootVC : UIViewController?
        
        if (sessionId != nil) {
            rootVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "mainvc") as! UITabBarController
        } else {
            rootVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginvc") as! LoginVC
        }
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = rootVC
    }
    
    static func logIn(username: String, password: String){
        let parameters: [String: String] = [
            "Username": username,
            "Password": password
        ]
        
        AF.request("https://smg.itechart-group.com/MobileServiceNew/MobileService.svc/PostAuthenticate", method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil).responseJSON(completionHandler: {response in
            guard let data = response.result.value as? [String: AnyObject] else{
                return
            }
            
            guard let sessionId = data["SessionId"], data["SessionId"]! as! Int != 0 else {
                return
            }
            
            UserDefaults.standard.set(sessionId, forKey: "sessionId")
            checkAuth()
        })
    }
    
    static func logOut(){
        UserDefaults.standard.set(nil, forKey: "sessionId")
        checkAuth()
    }
    
}
