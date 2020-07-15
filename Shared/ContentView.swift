//
//  ContentView.swift
//  Shared
//
//  Created by Vladislav Smolyanoy on 15.07.20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ExpandableWindowView(titleText: "This is a Placeholder", subtitleText: "This is a Placeholder")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
