//
//  MyStackView.swift
//  fundamental_Tutorial
//
//  Created by lee teukki on 2021/07/25.
//

import SwiftUI

struct myVstackView: View {
    
    
    // 데이터를 연동시킨다
    @Binding var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    
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
    .background(self.isActivated ? Color.green : Color.red)
    .padding(self.isActivated ? 10 : 0)
        
    }
}

struct myVstackView_Previews: PreviewProvider {
    static var previews: some View {
        myVstackView()
    }
}
