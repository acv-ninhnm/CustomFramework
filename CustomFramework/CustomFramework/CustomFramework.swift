//
//  CustomFramework.swift
//  CustomFramework
//
//  Created by NinhNM_ACV on 4/10/18.
//  Copyright © 2018 JuniorStudio. All rights reserved.
//

import Foundation
import Alamofire

public class CustomFramework {
    
    public static func getData() {
        
        Alamofire.request(URL.init(string: "https://www.reddit.com/subreddits/popular/.json?limit=15")!, method: .get, parameters: nil, encoding: JSONEncoding.default)
            .downloadProgress(queue: DispatchQueue.global(qos: .utility)) { progress in
                print("Progress: \(progress.fractionCompleted)")
            }
            .validate { request, response, data in
                
                return .success
            }
            .responseJSON { response in
                debugPrint(response)
        }
        
    }
}
