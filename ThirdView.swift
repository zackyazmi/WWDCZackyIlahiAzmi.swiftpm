//
//  ThirdView.swift
//  LatihanBuatWWDC
//
//  Created by Zacky Ilahi Azmi on 22/04/22.
//

import SwiftUI
import MobileCoreServices

struct ThirdView: View {
    
    
    
    var body: some View {
        
        
        ZStack {
            VStack {
                
                Text("The Ingredients")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.brown)
                    .padding(.top, 50)
                
                HStack {
                    
                    VStack {
                        Image("telur")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 100, alignment: .center)
                        
                        Text("Egg")
                            .font(.caption)
                            .foregroundColor(.brown)
                    }
                    .padding()
                    
                    VStack {
                        Image("ikan")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100, alignment: .center)
                        
                        
                        Text("Fish")
                            .font(.caption)
                            .foregroundColor(.brown)
                        
                    }
                    .padding()
                    
                    VStack {
                        Image("tepung")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 100, alignment: .center)
                        
                        Text("Flour")
                            .font(.caption)
                            .foregroundColor(.brown)
                    }
                    .padding()
                    
                }
                
                HStack {
                    
                    VStack {
                        Image("garam")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80, alignment: .center)
                        
                        Text("Salt")
                            .font(.caption)
                            .foregroundColor(.brown)
                    }
                    .padding()
                    
                    VStack {
                        Image("air")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80, alignment: .center)
                        
                        Text("Water")
                            .font(.caption)
                            .foregroundColor(.brown)
                    }
                    .padding()
                
                    }
                
                NavigationLink (destination: FourthView()) {
                    Text("How To Make It?")
                    .foregroundColor(Color.white)
                    .frame(width: 280, height: 50, alignment: .center)
                    .background(.brown)
                    .cornerRadius(10)
                    .padding(.top, 50)
                }
            }
            .offset(y: -60)
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
