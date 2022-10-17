//
//  ContentView.swift
//  Sandwich
//
//  Created by Matthias Kreier on 10/17/22.
//

import SwiftUI

struct ContentView: View {
    var sandwiches: [Sandwich] = []
    var body: some View {
        NavigationView {
            List(sandwiches) { sandwich in
                NavigationLink(destination: Text(sandwich.name)) {
//                HStack {
                    Image(sandwich.thumbnailName)
                        .cornerRadius(8)
                    VStack(alignment: .leading) {
                        Text(sandwich.name)
                        Text("\(sandwich.ingredientCount) ingredients")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("Sandwiches")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sandwiches: testData)
    }
}
