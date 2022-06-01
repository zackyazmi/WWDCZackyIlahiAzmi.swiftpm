//
//  SecondPageView.swift
//  LatihanBuatWWDC
//
//  Created by Zacky Ilahi Azmi on 22/04/22.
//

import SwiftUI

struct SecondPageView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Pempek")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(1)
                
                Text("and the complete explanation")
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
                    
            }
            .foregroundColor(Color.brown)
            .padding(20)
            
            Image("pempek2-crop")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 260, maxHeight: 220)
                .padding(30)
            
            ScrollView {
                Text("Pempek is Indonesian traditional food originating from Palembang, South Sumatra. Pempek is a food made from soft ground fish meat mixed with flour and other ingredients. \n\nIn ancient times, people often used Belida fish as the main ingredient for making Pempek because this fish was easily found in the Musi River, the largest river in South Sumatra. \n\nHowever, the population of this fish is decreasing because too many are taken, which makes the price quite expensive, people end up using new variations using mackerel, snakehead fish, or even not using fish. \n\nThe way of serving pempek can be eaten immediately after boiling or after frying. Usually, pempek is accompanied by a special sauce, namely cuko pempek.")
                    .font(.body)
                    .padding(.top, 20)
                    .padding(.horizontal, 50)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.brown)
            }
            
            NavigationLink (destination: ThirdView()) {
                Text("Next")
                .foregroundColor(Color.white)
                .frame(width: 280, height: 50, alignment: .center)
                .background(.brown)
                .cornerRadius(10)
                .padding(.top, 50)
        
            }
        }
    .padding([.top, .bottom], 10)
    .offset(y: -60)
    .foregroundColor(.brown)
//    .navigationBarBackButtonHidden(true)
    }
}

struct SecondPageView_Previews: PreviewProvider {
    static var previews: some View {
        SecondPageView()
    }
}
