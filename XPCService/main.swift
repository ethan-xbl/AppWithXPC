//
//  main.swift
//  XPCService
//
//  Created by ethanxblin on 2022/7/14.
//

import Foundation

let delegate = XPCServiceDelegate()
let listener = NSXPCListener.service()
listener.delegate = delegate
listener.resume()
