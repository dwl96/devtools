//
//  ContentView.swift
//  devtools
//
//  Created by Dan Lewis on 19/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var toolSelected: ToolType = .About
    
    var body: some View {
        NavigationSplitView {
            List {
                Text("hi")
            }
        } detail: {
            Text("Detail")
        }

    }
}

#Preview {
    ContentView()
}
