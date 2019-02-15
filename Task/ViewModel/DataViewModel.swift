//
//  DataViewModel.swift
//  Task
//
//  Created by Sumit Ghosh on 15/02/19.
//  Copyright © 2019 Sumit Ghosh. All rights reserved.
//

import UIKit

class DataViewModel: NSObject {
    
    var dataArray:[response_data]!
    
    
    override init() {
        
    }
    
    func  getDataFromAPI() -> Void {
        APIHelper.sharedInstance.getAllData { (response, error) in
            self.dataArray = response
        }
    }
    
}
