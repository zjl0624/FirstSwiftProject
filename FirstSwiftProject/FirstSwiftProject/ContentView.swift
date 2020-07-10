//
//  ContentView.swift
//  FirstSwiftProject
//
//  Created by zjl on 2020/7/10.
//  Copyright © 2020 Yihb. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
            HStack {
                Text("Hello, World1")
                Text("Hello, World2")
            }
            Text("Hello, World3")
            VStack {
                Rectangle()
                Text("Hello, World4")
            }
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
