//
//  ModalView.swift
//  LatihanBuatWWDC
//
//  Created by Zacky Ilahi Azmi on 23/04/22.
//

import SwiftUI

struct ModalView: View {
    
    var isiModal: [Info] = Feed.data
    
    @Binding var indexPempek: Int
    
    @Binding var isShowing: Bool
    @State private var isDragging = false
    
    @State private var currHeight: CGFloat = 400
    let minHeight: CGFloat = 400
    let maxHeight: CGFloat = 700
    
    let startOpacity: Double = 0.4
    let endOpacity: Double = 0.8
    
    var dragPrecentage: Double {
        let res = Double((currHeight - minHeight) / (maxHeight - minHeight))
        return max(0, min(1, res))
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            if isShowing {
                Color.brown
                    .opacity(startOpacity + (endOpacity - startOpacity) * dragPrecentage)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing = false
                    }
                
                mainView
                    .transition(.move(edge: .bottom))
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .ignoresSafeArea()
        .animation(.easeInOut)
    }
    
    var mainView: some View {
        VStack {
            
            //handle
            ZStack {
                Capsule()
                    .frame(width: 40, height: 6)
                    .foregroundColor(.brown)
            }
            .frame(height: 40)
            .frame(maxWidth: .infinity)
            .background(Color.white.opacity(0.00001)) //important for dragging!
            .gesture(dragGesture)
            
            ZStack{
                VStack {
                    Text(isiModal[indexPempek].name)
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.brown)
                        .padding()
                    
                    Image(isiModal[indexPempek].image)
                        .resizable()
                        .frame(width: 180, height: 130, alignment: .center)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    
                    Text(isiModal[indexPempek].story)
                        .font(.body)
                        .foregroundColor(.brown)
                        .padding()
                    
                }
                .padding(.horizontal, 30)
            }
            .frame(maxHeight: .infinity)
            .padding(.bottom, 35)
        }
        .frame(height: currHeight)
        .frame(maxWidth: .infinity)
        .background(
            
            //MACK for roundedCorners only on top
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                Rectangle()
                    .frame(height: currHeight / 2)
            }
            .foregroundColor(.white)
        )
    }
    
    @State private var prevDragTranslation = CGSize.zero
    
    var dragGesture: some Gesture {
        DragGesture(minimumDistance: 0, coordinateSpace: .global)
            .onChanged { val in
            
                let dragAmount = val.translation.height - prevDragTranslation.height
                if currHeight > maxHeight || currHeight < minHeight {
                    currHeight -= dragAmount / 6
                } else {
                    currHeight -= dragAmount
                }
                
                prevDragTranslation = val.translation
                
            }
            .onEnded { val in
                prevDragTranslation = .zero
                isDragging = false
                if currHeight > maxHeight {
                    currHeight = maxHeight
                }
                else if currHeight < minHeight {
                    currHeight = minHeight
                }
            }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        LastView()
    }
}
