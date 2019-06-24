//
//  PKSettingsBundleHelper.swift
//
//  Created by Pramod Kumar on 24/06/19.
//  Copyright © 2019 Pramod Kumar. All rights reserved.
//

import Foundation

enum Environment: String {
    case production
    case testing
    case development
    
    var baseUrl: String {
        switch self {
        case .development:
            return "Runnig on development"
            
        case .testing:
            return "Runnig on testing"
            
        default:
            return "Runnig on production"
        }
    }
}

class PKSettingsBundleHelper {
    static let shared = PKSettingsBundleHelper()
    private init() {}
    
    var currentEnvironment: Environment {
        if let env = UserDefaults.standard.string(forKey: "currentEnvironment") {
            return Environment(rawValue: env.lowercased()) ?? Environment.production
        }
        return Environment.production
    }
}
