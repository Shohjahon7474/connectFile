//
//  HomeScreen.swift
//  inSwiftUI
//
//  Created by Shohjahon Numonovich on 4/6/22.
//

import SwiftUI

struct HomeScreen: View ,BindingDelegate{
    
    @State var showDetail: Bool = false
    @State var data = "notebook"
    
    func onReceived(value: String){
        print(value)
        data = value
    }
    
    var body: some View {
        NavigationView{
            List{
                VStack{
                    Image("\(data)").resizable()
                        .frame(width: .infinity, height: 200, alignment: .center)
                    Image("notebook2").resizable()
                        .frame(width: .infinity, height: 200, alignment: .center)
                    Image("notebook4").resizable()
                        .frame(width: .infinity, height: 200, alignment: .center)
                }
            }
            .navigationBarItems(leading: Image(systemName: "bell"), trailing: HStack{ Image(systemName: "camera")
                Button(action: {
                    showDetail.toggle()
                }, label: {
                    Image(systemName: "photo")
                }).sheet(isPresented: $showDetail, content:{ PresentScreen(data: "brend",delegate:self)
                
                })
            })
            .navigationTitle("Photos")
            .navigationBarTitleDisplayMode(.inline)
            
            
            
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
