//
//  HTTPClient.swift
//  BusinessDirectory
//
//  Created by Aseem 13 on 04/01/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import Foundation
import Alamofire

typealias HttpClientSuccess = (Any?) -> ()
typealias HttpClientFailure = (String) -> ()

class HTTPClient {
    
    func JSONObjectWithData(data: NSData) -> Any? {
        do { return try JSONSerialization.jsonObject(with: data as Data, options: []) }
        catch { return .none }
    }
    
    func postRequest(withApi api : Router , success : @escaping HttpClientSuccess , failure : @escaping HttpClientFailure ){
        
        let fullPath = api.baseURL + api.route
        print(fullPath)
        print(api.parameters ?? "")
        
        Alamofire.request(fullPath, method: api.method, parameters: api.parameters, encoding: URLEncoding.default).responseJSON { (response) in
            
            switch response.result {
            case .success(let data):
                success(data)
            case .failure(let error):
                failure(error.localizedDescription)
            }
        }
    }
    
    
}

