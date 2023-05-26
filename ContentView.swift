import SwiftUI

struct ContentView: View {
    @State private var tabSelection = 0
    var body: some View {
        

            
            VStack {
           
                
                TabView(selection: $tabSelection){
                    VStack {
                        Text("Shazamify")
                        
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .background(Rectangle())
                            .foregroundColor(CustomColor.mauve)
                            .padding(10)
                        
                       
                        Button {
                            tabSelection = 1
                        } label: {
                            Text("Search")
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(CustomColor.mauve)
                        
                        .padding(10)
                        Button {
                            tabSelection = 2
                        } label: {
                            Text("Shazam")
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(CustomColor.mauve)
                        
                        .padding(10)
                    }
                    
                   
                        .tabItem {
                            Label("Home", systemImage: "house")
                        }
                        .tag(0)
                    
                    WKSearchView()
        
                        .tabItem {
                            Label("Artists", systemImage: "star")
                        }
                        .tag(1)
                    
                    ShazamifyView()
                        .tabItem {
                            Label("Songs", systemImage: "heart")
                        }
                        .tag(2)
                }
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(CustomColor.pale)
            
            
            
        }
        
    }


struct CustomColor {
    static let pale = Color("pale")
    
    static let mauve = Color("mauve")
}
