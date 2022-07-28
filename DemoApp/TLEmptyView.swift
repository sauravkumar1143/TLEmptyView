//
//  TLEmptyView.swift
//  DemoApp
//
//  Created by Saurav Kumar on 27/07/22.
//

import SwiftUI
import Combine

struct TLEmptyView: View {
    
    private struct Constants {
        static let imageWidth: CGFloat = 116
        static let imageHeight: CGFloat = 116
    }
        
    private let message: String
    private let imageName: String
    private let buttonTitle: String?
    var tappedOnButton: (() -> Void)?
    
    init(message: String, imageName: String, buttonTitle: String? = nil, tappedOnButton: (() -> Void)? = nil) {
        self.message = message
        self.imageName = imageName
        self.buttonTitle = buttonTitle
        self.tappedOnButton = tappedOnButton
    }
    
    var body: some View {
       
        VStack(alignment: .center, spacing: 0) {
            
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: Constants.imageWidth, height: Constants.imageHeight)
                .background(Color.green)
            
            Text(message)
                .multilineTextAlignment(.center)
                .offset(CGSize(width: 0, height: 16))
                
            if let title = buttonTitle {
                Button(action: {
                    self.tappedOnButton?()
                }) {
                    Text(title).padding()
                }
                .background(Color.black)
                .offset(CGSize(width: 0, height: 48))
            }
            
        }
    }
}

struct TLEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        TLEmptyView(message: "Hello ", imageName: "placeholderImage")
    }
}
