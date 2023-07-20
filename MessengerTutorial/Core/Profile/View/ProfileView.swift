//
//  ProfileView.swift
//  MessengerTutorial
//
//  Created by Bernie Wong on 7/20/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack {
                ZStack(alignment: .bottomTrailing) {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundColor(Color(.systemGray4))
                    
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    
                    Circle()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.green)
                }
                
                Text("Bruce Wayne")
                    .font(.title2)
                    .fontWeight(.bold)
            }
            
            List {
                Section {
                    ForEach(SettingsOptionsViewModel.allCases) { option in
                        HStack {
                            Image(systemName: option.imageName)
                                .frame(width: 24, height: 24)
                                .foregroundColor(option.imageBackgroundColor)
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
//                    Image("moon.circle.fill")
                    
                }
                
                Section {
                    Button("Log Out") {
                        
                    }
                    Button("Delete Account") {
                        
                    }
                }
                .foregroundColor(.red)
            }
            .padding(.leading)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
