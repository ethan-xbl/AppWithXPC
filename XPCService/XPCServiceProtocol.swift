//
//  XPCServiceProtocol.swift
//  XPCService
//
//  Created by ethanxblin on 2022/7/14.
//

import Foundation

@objc public protocol XPCServiceProtocol {
    func upperCaseString(_ string: String, withReply reply: @escaping (String) -> Void)
}

