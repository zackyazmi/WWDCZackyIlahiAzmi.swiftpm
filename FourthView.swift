//
//  FourthView.swift
//  How To Pempek
//
//  Created by Zacky Ilahi Azmi on 25/04/22.
//

import SwiftUI

struct FourthView: View {
    var body: some View {
        
        VStack {
            
            Text("How to Make It?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.brown)
                .padding()
            
            Image("mangkokadonan")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            ScrollView {
                Text("The first step to make pempek is mix with hand the soft ground fish, egg, salt, and water. After that, add flour gradually until the mixture is nicely and can be form and don't mix to hard and then you can make any type of pempek using your hand. \n\nAfter that you can boil pempek until done. Pempek can be eat after boiling done or you can fry the pempek for different taste and texture.")
                    .font(.body)
                    .padding(.top, 20)
                    .padding(.horizontal, 30)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.brown)
            }
            
            NavigationLink (destination: LastView()) {
                Text("And Done ... ")
                .foregroundColor(Color.white)
                .frame(width: 280, height: 50, alignment: .center)
                .background(.brown)
                .cornerRadius(10)
                .padding(.top, 50)
            }
        }
        .padding()
        .offset(y: -60)
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
