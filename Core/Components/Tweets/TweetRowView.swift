//
//  TweetRowView.swift
//  TwitterClone
//
//  Created by Sheila Rodriguez on 11/21/22.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
       //Profile image, user info, tweet
       VStack(alignment: .leading){
          HStack(alignment: .top, spacing: 12){
             Circle()
                .frame(width: 56, height: 56)
                .foregroundColor(Color(.systemBlue))
             
             //User info, tweet caption
             VStack(alignment: .leading,spacing: 4){
                //user info
                HStack{
                   Text("Bruce Wayne")
                      .font(.subheadline).bold()
                   Text("@batman")
                      .foregroundColor(.gray)
                      .font(.caption)
                   Text("2w")
                      .foregroundColor(.gray)
                      .font(.caption)
                }
                
                //tweet caption
                Text("I believe in Harvey Dent")
                   .font(.subheadline)
                   .multilineTextAlignment(.leading) //to align to leading edge
             }
          }.padding()
          //action buttons
          HStack{
             Button{
                
             }label:{
                Image(systemName: "bubble.left")
                .font(.subheadline)
                
             }
             Spacer()
             Button{
                
             }label:{
                Image(systemName: "arrow.2.squarepath")
                   .font(.subheadline)
                
             }
             Spacer()
             Button{
                
             }label:{
                Image(systemName: "heart")
                   .font(.subheadline)
                
             }
             Spacer()
             Button{
                
             }label:{
                Image(systemName: "bookmark")
                   .font(.subheadline)
                
             }
          }.padding(.bottom, 5)
             .padding(.horizontal, 20)
             .foregroundColor(.gray)
        
          
          Divider()
       }
       .padding(.horizontal, 10)
       .padding(.bottom, 10)
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
