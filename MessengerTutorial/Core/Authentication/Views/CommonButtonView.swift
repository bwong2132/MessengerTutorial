//
//  CommonButtonView.swift
//  MessengerTutorial
//
//  Created by Bernie Wong on 7/19/23.
//

import SwiftUI

struct CommonButtonView: View {
    var textMsg: String
    @Binding var output: String
    var isSecure: Bool = false
    
    var body: some View {
        if isSecure {
            SecureField(textMsg, text: $output)
                .font(.subheadline)
                .padding(12)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 24)
        } else {
            TextField(textMsg, text: $output)
                .font(.subheadline)
                .padding(12)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 24)
        }
    }
}
struct CommonButtonView_Previews: PreviewProvider {
    static var previews: some View {
        
        CommonButtonView(textMsg: "Enter email id", output: .constant("xx"), isSecure: true)
    }
}
