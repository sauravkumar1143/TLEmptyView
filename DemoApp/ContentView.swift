//
//  ContentView.swift
//  DemoApp
//
//  Created by Saurav Kumar on 26/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geometry in
            VStack(alignment: .center, spacing: 0){
                
                EmptyView()
                    .background(Color.green)
                    .frame(width: geometry.size.width, height: 50, alignment: .center)
                
                Text("Calendar")
                    .frame(width: geometry.size.width, height: 100, alignment: .center)
                
                TLEmptyView(message: "Dynamic Message", imageName: "placeholderImage", buttonTitle: "Refresh Link")
                        .frame(width: 300, alignment: .center)
            }
        }

}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
