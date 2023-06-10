//
//  ContentView.swift
//  WEEK1_Jen
//
//  Created by jisukwon on 2023/06/08.
//

import SwiftUI

struct ContentView: View {
        
    
    var body: some View {
            TabView {
                 MyCertificateView()
                   .tabItem {
                     Image(systemName: "doc.fill")
                     Text("나의 증명서")
                   }
                 Text("상대방 인증하기 뷰입니다.")
                   .tabItem {
                     Image(systemName: "person.2.fill")
                     Text("상대방 인증하기")
                   }
                Text("더보기 뷰입니다.")
                    .tabItem {
                        Image(systemName: "plus.square.fill")
                        Text("더보기")
                    }
            }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
