//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 04/07/24.
//

import SwiftUI

public struct SwiftUIView: View {
    public init() {}
    public var body: some View {
        VStack(spacing: 20) {
            Text("This is added using the Scores Strip SI Package")
            
            Button {
                print("Test Button Was Tapped")
            } label: {
                Text("Test Button")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.all, 10)
                    .frame(height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            }
        }
    }
}

#Preview {
    SwiftUIView()
}
