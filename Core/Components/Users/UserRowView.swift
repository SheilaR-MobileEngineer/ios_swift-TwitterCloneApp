//
//  UserRowView.swift
//  TwitterClone
//
//  Created by Sheila Rodriguez on 11/22/22.
//

import SwiftUI

struct UserRowView: View {
   var body: some View {
      HStack(spacing: 12){
         Circle()
            .frame(width: 48, height: 48)
         
         VStack(alignment: .leading, spacing: 4){
            Text("Joker")
               .font(.subheadline).bold()
               .foregroundColor(.black)
            Text("Jack Oswald White")
               .font(.subheadline)
               .foregroundColor(.gray)
         }
         Spacer()
      }.padding(.horizontal)
         .padding(.vertical, 4)
   }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
