//
//  LoginView.swift
//  MessengerTutorial
//
//  Created by Bernie Wong on 7/19/23.
//

// Messenger - Login View UI - Module 2
// https://www.youtube.com/watch?v=Y76F6gsgG54&list=PLRcTS2CSnBfM-VDeDGajFwq6K-yfplXlC&index=3

import SwiftUI

struct LoginView: View {
    @State private var emailid = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                // logo
                Image("logo")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                
                // text fields
                VStack(spacing: 8) {
                    CommonButtonView(textMsg: "Enter your email", output: $emailid)                    
                    CommonButtonView(textMsg: "Enter your password", output: $password, isSecure: true)
                }
                
                // forgot password
                Button {
                    print("forgot")
                } label: {
                    Text("Forgot Password ...")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
//                .padding(.bottom)

                
                // login button
                Button {
                    print("login handler")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 40)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                }
                .padding(.bottom)

                
                // facebook login
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40,
                               height: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                
                HStack {
                    Image("facebook")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Text("Continue with FaceBook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top, 8)
                
                Spacer()
                
                // signup link
                
                // destination and label
                // use simple navigation link, instead of the newer .navigationDestination, because we don't need to pass any data to the next screen
                // see Module 2 around 8:22
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?   ")
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical)
            }
        }
    }
}




struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
