//
//  CreateProfileView.swift
//  EatReal-v1
//
//  Created by Zeke Rong on 11/10/22.
//

import SwiftUI

struct CreateProfileView: View {
  @ObservedObject var viewRouter: ViewRouter
    @State public var name = ""
    @State public var username = ""
    @EnvironmentObject var viewModel: ViewModel
  
    var body: some View {
        NavigationView{
        
            VStack(){
                
                
                
                
                Logo()
                Spacer()
                
                Button(action: {
                  
                  viewRouter.currentPage = .login
                    
                }) {
                    Text("Log In").bold()
                        .font(Font.custom("Helvetica Neue", size: 25.0))
                        .padding(15)
                        .foregroundColor(Color.white)
                        .background(Color.black)
                        .cornerRadius(5)
                }
                
                
                Text("OR")
                
                Button(action: {
                  
                  viewRouter.currentPage = .signup
                    
                }) {
                    Text("Sign Up").bold()
                        .font(Font.custom("Helvetica Neue", size: 25.0))
                        .padding(15)
                        .foregroundColor(Color.white)
                        .background(Color.black)
                        .cornerRadius(5)
                }
                Spacer()
                
               
                        
                    }
            
                }
        
                
                navBar(viewRouter: viewRouter)
            }
        }
 
