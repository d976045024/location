//
//  ContentView.swift
//  Location_ios
//
//  Created by QHDi on 2021/4/8.
//

import SwiftUI

struct ContentView: View {
    @State var isOn: Bool
    var body: some View {
        Button(action: {
            isOn.toggle()
        }) {
            VStack {
                Text(isOn ? "暂停" : "开始")
                    .padding(3)
                Image(systemName: isOn ? "pause.circle" : "play.circle")
                    .frame(width: 20, height: 20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    @State static var on: Bool = false
    static var previews: some View {
        ContentView(isOn: false)
    }
}
