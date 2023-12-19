//
//  AboutView.swift
//  devtools
//
//  Created by Dan Lewis on 19/12/2023.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("Hi there! 👋")
                .font(.largeTitle)
            Text("Welcome to devtools, created by [dwl](https://github.com/dwl96)")
            Text("Here you will find a variety of 100% offline and open-source tools at your disposal")
            Text("If you find any issues with devtools, or want to simply request a feature. I'd appreciate it if you could [raise an issue here](https://github.com/dwl96/devtools/issues/new/choose)")
            Text("\n")
            Text("Nice things to know 👀")
                .font(.title)
            Text("You can create a new window by `File -> New Window`")
            Text("You can enable tabs by `View -> Show Tab Bar`")
            Text("\n")
            Text("Ensure you have the latest version by [checking here](https://github.com/dwl96/devtools/releases)")
        }
    }
}

#Preview {
    AboutView()
}
