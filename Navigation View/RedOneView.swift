//
//  ContentView.swift
//  Navigation View
//
//  Created by dev on 08/06/2021.
//
//
// https://www.youtube.com/watch?v=IopCl8sOyFA @ 10:48
//
//
//

import SwiftUI

struct RedOneView: View {
    var body: some View {
        NavigationView {
            VStack {
                CircleNumberView(color: .red, number: 1)
                    .navigationTitle("Red One")
                    .offset(y: -60)
                
                NavigationLink(
                    destination: OrangeTwoView(color: .orange),
                    label: {
                        Text("Next")
                            .bold()
                            .frame(width: 280, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
            }
        }
        .accentColor(Color(.label))
    }
}

struct OrangeTwoView: View {
    
    var color: Color
    
    var body: some View {
        VStack {
            CircleNumberView(color: .orange, number: 2)
                .navigationTitle("Orange Two")
                //.navigationTitle("Blue Two")
                .offset(y: -60)
            
            NavigationLink(
                destination: GreenThreeView(),
                label: {
                    Text("Next")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
        }
    }
}


struct GreenThreeView: View {
    
    var body: some View {
        VStack {
            CircleNumberView(color: .green, number: 3)
                .navigationTitle("Green Three")
                //.navigationTitle("Blue Two")
                .offset(y: -60)
        }
    }
}


struct CircleNumberView: View {
    
    var color: Color
    var number: Int
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RedOneView()
            .preferredColorScheme(.dark)
    }
}
