//
//  ChatView.swift
//  MessengerTutorial
//
//  Created by Bernie Wong on 7/21/23.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    var body: some View {
        VStack {
            ScrollView {
                // header
                VStack {
                    CircularProfileImageView(user: User.MOCK_USER, size: .xLarge)
                    
                    VStack(spacing: 4) {
                        Text("Bruce Wayne")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text("Messenger!!!")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
                
                
                // message input
            }
            
            ZStack(alignment: .trailing) {
                TextField("Enter message", text: $messageText, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(Capsule())
                    .font(.subheadline)
                    .padding()
                
                Button {
                    print("send message")
                } label: {
                    Text("Send")
                        .padding(.horizontal, 30)
                }
            }
        }
        

    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
