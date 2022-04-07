//
//  DetailScreen.swift
//  inSwiftUI
//
//  Created by Shohjahon Numonovich on 4/6/22.
//

import SwiftUI

struct DetailScreen: View {
    @Environment(\.presentationMode) var presentation

    var body: some View {
        NavigationView{
        VStack{
            Button(action: {
                presentation.wrappedValue.dismiss()
            }, label: {
                Text("Back to Home")
            })
        }
       }.navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.inline)

    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen()
    }
}
