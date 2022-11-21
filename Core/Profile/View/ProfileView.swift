//
//  ProfileView.swift
//  TwitterClone
//
//  Created by Sheila Rodriguez on 11/21/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
       
       VStack(alignment: .leading){
          
          headerView
          actionButtons
          userInfo
          
          Spacer()
       }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView{
   
   var headerView: some View{
      
      ZStack(alignment: .bottomLeading){
         Color(.systemBlue)
            .ignoresSafeArea()
         
         VStack {
            Button {
               
            } label: {
               Image(systemName: "arrow.left")
                  .resizable()
                  .frame(width: 20, height: 16)
                  .foregroundColor(.white)
                  .offset(x:16, y:12)
            }
            
            Circle()
               .frame(width: 72, height: 72)
               .offset(x:16, y:28)
         }
      }.frame(height: 98)
   }
   
   var actionButtons: some View{
      HStack(spacing: 12){
         Spacer()
         Image(systemName: "bell.badge")
            .font(.title3)
            .padding(6)
            .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
         Button {
            
         } label: {
            Text("Edit Profile")
               .font(.subheadline).bold()
               .frame(width: 120, height: 32)
               .foregroundColor(.black)
               .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
         }
      }.padding(.trailing)//on the edge
   }
   
   var userInfo: some View{
      VStack(alignment: .leading, spacing: 4){
         HStack {
            Text("Jack Oswald White")
               .font(.title2).bold()
            Image(systemName: "checkmark.seal.fill")
               .foregroundColor(Color(.systemBlue))
         }
         Text("@joker")
            .font(.subheadline)
            .foregroundColor(.gray)
         Text("Your moms favorite villain")
            .font(.subheadline)
            .padding(.vertical)
         
         HStack(spacing: 24){
            HStack(spacing: 4){
               Image(systemName: "mappin.and.ellipse")
               Text("Gotham, NY")
            }
            Spacer()
            HStack(spacing: 4){
               Image(systemName: "link")
               Text("www.thejoker.com")
            }
            Spacer()
         }.font(.caption)
            .foregroundColor(.gray)
         
         HStack(spacing: 24){
            HStack(spacing: 4){
               Text("2")
                  .font(.subheadline)
                  .bold()
               Text("Following")
                  .font(.caption)
                  .foregroundColor(.gray)
            }
            
            HStack(spacing: 4){
               Text("3.5 M")
                  .font(.subheadline)
                  .bold()
               Text("Followers")
                  .font(.caption)
                  .foregroundColor(.gray)
            }
            Spacer()
         }.padding(.vertical)
      }.padding(.horizontal)
   }
}
