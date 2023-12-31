//
//  ProfileView.swift
//  MessengerTutorial
//
//  Created by Bernie Wong on 7/20/23.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    let user: User
    
    var body: some View {
        VStack {
            // header
            VStack {
                ZStack(alignment: .bottomTrailing) {
                    
                    PhotosPicker(selection: $viewModel.selectedItem) {
                        if let profileImage = viewModel.profileImage {
                            profileImage
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                        } else {
//                            Image(user.profileImageUrl ?? "")
//                                .resizable()
//                                .scaledToFill()
//                                .frame(width: 80, height: 80)
//                                .clipShape(Circle())
                            CircularProfileImageView(user: user, size: .xLarge)  // module 9
                        }
                    }
                    
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    
                    Circle()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.green)
                }
                
                Text(user.fullName)
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
        ProfileView(user: User.MOCK_USER)
    }
}
