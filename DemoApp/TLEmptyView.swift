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
        static let buttonColor = Color(red: 140/255, green: 105/255, blue: 255/255)
        static let buttonHeight: CGFloat = 40
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
        
        VStack(alignment: .center, spacing: 16) {
            
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: Constants.imageWidth, height: Constants.imageHeight)
                .background(Color.green)
            
            Text(message)
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
            
            if let title = buttonTitle {
                Button {
                    self.tappedOnButton?()
                } label: {
                    Text(title)
                        .padding()
                        .foregroundColor(.white)
                        .frame(height: Constants.buttonHeight)
                }
                .background(Constants.buttonColor)
                .cornerRadius(10)
                
            }
            
        }
    }
}

struct TLEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        TLEmptyView(message: "Hello", imageName: "placeholderImage", buttonTitle: "Refresh")
    }
}
