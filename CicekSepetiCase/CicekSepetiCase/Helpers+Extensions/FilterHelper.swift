//
//  FilterHelper.swift
//  CicekSepetiCase
//
//  Created by Tolga Taş on 18.07.2019.
//  Copyright © 2019 Tolga Taş. All rights reserved.
//

import Foundation

class FilterHelper{
    
    static let shared = FilterHelper()
    
    func filterData(answer : Welcome) -> [Product]{
        let filteredByProductGroupId = answer.result?.data?.products?.filter({$0.productGroupId == 1})
        
        let filteredByPrice = filteredByProductGroupId?.filter({$0.price?.current ?? 0 >= 50.0 && $0.price?.current ?? 0 <= 100.0}) ?? []
        
        return filteredByPrice
    }
}
