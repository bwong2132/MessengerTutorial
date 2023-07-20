//
//  InboxRowView.swift
//  MessengerTutorial
//
//  Created by Bernie Wong on 7/19/23.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        var circleSize = 64.0
        HStack(alignment: .top, spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: circleSize, height: circleSize)
                .foregroundColor(Color(.systemGray4))
            VStack(alignment: .leading, spacing: 5) {
                Text("Heath Ledger")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("some test message for now that spans multiple lines ")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
//                    .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
            }
            
            HStack {
                Text("Yesterday")
                    
                Image(systemName: "chevron.forward")
                    
            }
            .font(.footnote)
            .foregroundColor(.gray)
        }
//        .padding(.horizontal)
        .frame(height: 72)
    }
}

struct InboxRowView_Previews: PreviewProvider {
    static var previews: some View {
        InboxRowView()
    }
}
