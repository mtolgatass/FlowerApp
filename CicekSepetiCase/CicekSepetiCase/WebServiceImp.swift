//
//  WebServiceImp.swift
//  CicekSepetiCase
//
//  Created by Tolga Taş on 17.07.2019.
//  Copyright © 2019 Tolga Taş. All rights reserved.
//

import Foundation
import Alamofire
import PromiseKit

class WebServiceImp{
    static let shared = WebServiceImp()
    
    func fetchData() -> Promise<Welcome>{
        return Promise{ seal in
            let path = "https://api.ciceksepeti.com/v1/product/ch/dynamicproductlist"
            Alamofire.request(path, method: .get)
                .validate()
                .responseData(){ response in
                    switch response.result{
                    case .success(let welcome):
                        let jsonDecoder = JSONDecoder()
                        do{
                            let welcome = try jsonDecoder.decode(Welcome.self, from: welcome)
                            seal.fulfill(welcome)
                        } catch {
                            print("Response : List couldn't get:")
                            print(error)
                            seal.reject(error)
                        }
                    case .failure(let error):
                        print("Response : Movie List couldn't get:")
                        print(error)
                        seal.reject(error)
                    }
            }
        }
    }
}
