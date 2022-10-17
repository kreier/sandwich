//
//  SandwichDetail.swift
//  Sandwich
//
//  Created by Matthias Kreier on 10/17/22.
//

import SwiftUI

struct SandwichDetail: View {
    var sandwich: Sandwich
    @State private var zoomed = false
    
    var body: some View {
        Image(sandwich.imageName)
            .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .onTapGesture { zoomed.toggle() }
            .navigationTitle(sandwich.name)
    }
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SandwichDetail(sandwich: testData[1])
        }
    }
}
