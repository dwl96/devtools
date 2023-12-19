//
//  ContentView.swift
//  devtools
//
//  Created by Dan Lewis on 19/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(ToolType.allCases, id: \.self) { tool in
                    NavigationLink {
                        switch tool {
                        case .RegexMatcher:
                            RegexMatcherView()
                        }
                    } label: {
                        Text(tool.rawValue)
                    }
                }
            }
            .listStyle(.sidebar)
            AboutView()
        }
    }
}

#Preview {
    ContentView()
}
