//
//  RegistrationView.swift
//  MessengerTutorial
//
//  Created by Bernie Wong on 7/19/23.
//

// Messenger - Sign Up View Module 3
// https://www.youtube.com/watch?v=90TYhFikVD0&list=PLRcTS2CSnBfM-VDeDGajFwq6K-yfplXlC&index=4

import SwiftUI

struct RegistrationView: View {
    @State private var emailid = ""
    @State private var password = ""
    @State private var fullname = ""
    @Environment(\.dismiss) var dismiss 

    var body: some View {
        VStack {
            Spacer()
            // logo
            Image("logo")
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
            
            // text fields
            VStack(spacing: 8) {
                //                    TextField("Enter your email", text: $emailid)
                //                        .font(.subheadline)
                //                        .padding(12)
                //                        .background(Color(.systemGray6))
                //                        .cornerRadius(10)
                //                        .padding(.horizontal, 24)
                CommonButtonView(textMsg: "Enter your email", output: $emailid)
                
                CommonButtonView(textMsg: "Enter your full name", output: $fullname)
                //                    SecureField("Enter your password", text: $password)
                //                        .font(.subheadline)
                //                        .padding(12)
                //                        .background(Color(.systemGray6))
                //                        .cornerRadius(10)
                //                        .padding(.horizontal, 24)
                CommonButtonView(textMsg: "Enter your password", output: $password, isSecure: true)
                
                Divider()
                
                Button {
                    print("login handler")
                } label: {
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 40)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                }
                .padding(.bottom)
                
                
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 3) {
                        Text("Have an account?   ")
                        Text("Sign In")
                            .fontWeight(.bold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical)
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
