import SwiftUI

struct ContentView: View {
    @State private var tabSelection = 0
    @State var tap = false
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
//                        .scaleEffect(tap ? 1 : 1.2)
//                                .animation(.spring(response: 0.4, dampingFraction: 0.6))
//                                .onTapGesture {
//                                    tap = true
//                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
//                                        tap = false
//                                    }
                                }
                        
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
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(CustomColor.pale)
                    
                   
                        .tabItem {
                            Label("Home", systemImage: "house")
                        }
                        .tag(0)
                    
                    
                    WKSearchView()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(CustomColor.pale)
        
                        .tabItem {
                            Label("Artists", systemImage: "star")
                        }
                        .tag(1)
                    
                    ShazamifyView()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(CustomColor.pale)
                        .tabItem {
                            Label("Songs", systemImage: "heart")
                        }
                        .tag(2)
                }
                
                
            }
            
            
            
            
        }
        


struct CustomColor {
    static let pale = Color("pale")
    
    static let mauve = Color("mauve")
}
