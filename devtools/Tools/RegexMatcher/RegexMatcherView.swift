//
//  RegexMatcherView.swift
//  devtools
//
//  Created by Dan Lewis on 19/12/2023.
//

import SwiftUI

struct RegexMatcherView: View {
    @State private var regex: String = "([A-Z])\\w+"
    @State private var text: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pharetra nec quam non pellentesque. Proin non finibus orci. Pellentesque eget dui vitae lectus aliquet aliquet eleifend nec diam. Mauris laoreet et sapien a laoreet. Sed ac fermentum turpis. Donec ac lorem eu nibh molestie consectetur et quis odio. In feugiat enim dolor. Quisque semper eu dolor ac feugiat. Fusce varius bibendum ex eget convallis. Cras eu sollicitudin eros, et scelerisque mauris. Nullam ut finibus est. Sed at enim sapien. Mauris consequat ullamcorper sem eu cursus. Cras euismod aliquam justo nec tincidunt. Pellentesque auctor eu lacus vel elementum. Aenean congue nibh et felis interdum congue."
    var body: some View {
        VStack {
            TextField("Enter your RegEx here", text: $regex)
                .onSubmit {
                    getMatches()
                }
            TextEditor(text: $text)
        }
    }
    
    func getMatches() {
        let reg = try! Regex(regex)
        if let match = text.firstMatch(of: reg) {
            print(match[0])
        }
        
    }
}

#Preview {
    RegexMatcherView()
}
