//
//  LastView.swift
//  LatihanBuatWWDC
//
//  Created by Zacky Ilahi Azmi on 22/04/22.
//

import SwiftUI

struct LastView: View {
    
    @State private var indexPempek: Int = 0
    @State private var showModal = false
    
    var body: some View {
        ZStack {
            
            VStack {
                VStack {
                    Text("Your Pempek")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(2)

                    Text("Is Ready!")
                        .font(.title2)
                }
                .foregroundColor(.brown)

                Image("pempek3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 280, maxHeight: 220)
                
                Text("Click Below Button for Details")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(.brown)
                    .cornerRadius(10)
                    .padding()

                HStack {
                    Button(action: { showModal = true
                        indexPempek = 0
                    }) {
                        Text("Kapal Selam")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 100, height: 40, alignment: .center)
                            .background(.brown)
                            .cornerRadius(10)                    }

                    Button(action: { showModal = true
                        indexPempek = 1
                    }) {
                        Text("Adaan")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 100, height: 40, alignment: .center)
                            .background(.brown)
                            .cornerRadius(10)
                    }

                    Button(action: { showModal = true
                        indexPempek = 2
                    }) {
                        Text("Lenjer")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 100, height: 40, alignment: .center)
                            .background(.brown)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal, 2)

                HStack {
                    Button(action: { showModal = true
                        indexPempek = 3
                    }) {
                        Text("Cuko Pempek")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 100, height: 40, alignment: .center)
                            .background(.brown)
                            .cornerRadius(10)
                    }

                    Button(action: {
                        showModal = true
                        indexPempek = 4
                    }) {
                        Text("Cucumber")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 100, height: 40, alignment: .center)
                            .background(.brown)
                            .cornerRadius(10)
                    }
                }
                .foregroundColor(.brown)
            }
            .offset(y: -60)
//            .navigationBarBackButtonHidden(true)

            ModalView(indexPempek: $indexPempek, isShowing: $showModal)

        }
        
    }
}

struct LastView_Previews: PreviewProvider {
    static var previews: some View {
        LastView()
    }
}
