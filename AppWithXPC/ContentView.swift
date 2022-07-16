//
//  ContentView.swift
//  AppWithXPC
//
//  Created by ethanxblin on 2022/7/14.
//

import SwiftUI
import XPCService

struct ContentView: View {
    func connectXPC() {
        let interface = NSXPCInterface(with: XPCServiceProtocol.self)
        let connect = NSXPCConnection(serviceName: "com.tencent.XPCService")
        connect.remoteObjectInterface = interface
        guard let service = connect.remoteObjectProxy as? XPCServiceProtocol else {
            fatalError()
        }
        connect.resume()
        
        service.upperCaseString("") { str in
            
        }
    }
    
    var textLabel: Text
    
    var body: some View {
        VStack {
            textLabel.test("Hello, world!")
                .padding()
            Button("Connect XPC") {
                connectXPC()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
