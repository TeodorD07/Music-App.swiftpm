//
//  Shazam History.swift
//  Music App
//
//  Created by Teodor Djuric on 6/1/23.
//

import SwiftUI

struct ShazamHistoryView: View {
    
    @State var history: [String] = []
    
    var body: some View {
        VStack{
            Text("History")
                .font(.title)
                .bold()
                .padding()
            List {
                Text("First Song")
                Text("Second Song")
                Text("Third Song")
            }
        }
    }
}

