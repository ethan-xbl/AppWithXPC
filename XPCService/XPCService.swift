//
//  XPCService.swift
//  XPCService
//
//  Created by ethanxblin on 2022/7/14.
//

import Foundation

class XPCService: NSObject, XPCServiceProtocol {
    func upperCaseString(_ string: String, withReply reply: @escaping (String) -> Void) {
        let response = string.uppercased()
        reply(response)
    }
}
