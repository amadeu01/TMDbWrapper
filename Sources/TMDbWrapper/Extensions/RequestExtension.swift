//
//  RequestExtension.swift
//  TMDbWrapper
//
//  Created by Amadeu Cavalcante Filho on 16/05/18.
//

import Foundation
import Alamofire

extension Request {
    public func debugLog() -> Self {
        #if DEBUG
        debugPrint(self)
        #endif
        return self
    }
}
