import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("How To:")
                        .font(.title2)
                    
                    Text("Pempek")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                }
                .foregroundColor(Color.brown)
                
                Image("pempek")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 280, maxHeight: 280)
//                    .padding(50)
                    .padding(.vertical, 20)
                
                NavigationLink(destination: SecondPageView()) {
                    Text("Start")
                        .foregroundColor(Color.white)
                        .frame(width: 280, height: 50, alignment: .center)
                        .background(.brown)
                        .cornerRadius(10)
                        .padding(.top, 20)
                }
            }
            .offset(y: -60)
        }
        .accentColor(.brown)
    
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
