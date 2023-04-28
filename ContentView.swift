import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("App Name")
                .foregroundColor(.white)
                .font(.largeTitle)
            
            .padding(10)
           
            Button(action: {
                
            }, label: {
                Text("Songs")
                    .foregroundColor(.white)
                    
            })
            .buttonStyle(.borderedProminent)
            .tint(CustomColor.mauve)

            .padding(10)
            
            Button(action: {
               
            }, label: {
                Text("Albums")
                    .foregroundColor(.white)
            })
            .buttonStyle(.borderedProminent)
            .tint(CustomColor.mauve)

            .padding(10)
            
            Button(action: {
                
            }, label: {
                Text("Search")
                    .foregroundColor(.white)
            })
            .buttonStyle(.borderedProminent)
            .tint(CustomColor.mauve)

            .padding(10)
            
            Button(action: {
                
            }, label: {
                Text("Shazam")
                    .foregroundColor(.white)
            })
            .buttonStyle(.borderedProminent)
            .tint(CustomColor.mauve)
           
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CustomColor.pale)
        

    }
        
}

struct CustomColor {
    static let pale = Color("pale")
    
    static let mauve = Color("mauve")
}
