//
//  MyStackView.swift
//  fundamental_Tutorial
//
//  Created by lee teukki on 2021/07/25.
//

import SwiftUI

struct myVstackView: View {
    var body: some View{
    
    VStack{
        Text("1")
            .font(.system(size: 60))
            .fontWeight(.bold)
        Text("2")
            .font(.system(size: 60))
            .fontWeight(.bold)
        Text("3")
            .font(.system(size: 60))
            .fontWeight(.bold)
    }
    .background(Color.red)
        
    }
}

struct myVstackView_Previews: PreviewProvider {
    static var previews: some View {
        myVstackView()
    }
}
