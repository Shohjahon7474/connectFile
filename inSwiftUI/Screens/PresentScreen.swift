//
//  PresentScreen.swift
//  inSwiftUI
//
//  Created by Shohjahon Numonovich on 4/7/22.
//

import SwiftUI
struct PresentScreen: View {
    @Environment(\.presentationMode) var presentation
    var data: String = ""
    var delegate: BindingDelegate?
    var body: some View {
        NavigationView{
            List{
        VStack{
            Image("\(data)").resizable()
                .frame(width: .infinity, height: 200, alignment: .center)
        }
            
            Button("Back to Home"){
                delegate?.onReceived(value: "gerb")
                presentation.wrappedValue.dismiss()
            }
            
        }.navigationTitle("Present")
            .navigationBarTitleDisplayMode(.inline)
        }
}
}

struct PresentScreen_Previews: PreviewProvider {
    static var previews: some View {
        PresentScreen()
    }
}
