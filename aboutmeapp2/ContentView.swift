//
//  ContentView.swift
//  aboutmeapp2
//
//  Created by Molly Sweeney on 4/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("hi thanks for coming! here is when u came to visit :) pls come again !")
                .font(.subheadline)
                .multilineTextAlignment(.center)
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
            //adding this extra stack creates the title
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple, Color.pink]),
                    startPoint: .leading,
                    endPoint: .trailing
                )
                .frame(height: 150)
                .cornerRadius(10)

                Text("all about molly")
                    .font(.system(size: 53))
                //this is how you do font size!!! ^^
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                //font color ^^
                    .multilineTextAlignment(.center)
            }

            // Picker
            ScrollViewReader { proxy in
                Picker(selection: .constant(1), label: Text("Picker")) {
                    Text("fun facts about me ! select ur fav").tag(1)
                    Text("i have been to 20+ concerts").tag(2)
                    Text("i went to london and paris last summer").tag(3)
                    Text("i love my kindle").tag(4)
                    Text("taylor swift liked my posts on tumblr back in the day").tag(5)
                }
                .pickerStyle(.inline) // optional, helps with layout
                .padding(.top, -28)
                //this padding right here makes the break between the header and the picker smaller
            }

            //pic of me and the label
            VStack {
                Image("IMG_6614")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Label("me at the harry potter store in nyc !", systemImage: "star"
                )
            }

            
            VStack {
                Divider()
                //adds a line
                Gauge(value: 0.23, in: 0...1) {
                    Text("life in progress... 23% done...")
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
