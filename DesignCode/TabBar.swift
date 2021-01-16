//
//  TabBar.swift
//  DesignCode
//
//  Created by Eren  Çelik on 16.01.2021.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            Home().tabItem {
                Image(systemName: "play.circle.fill")
                Text("Home")
            }
            ContentView().tabItem {
                Image(systemName: "rectangle.stack.fill")
                Text("Certificates")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
