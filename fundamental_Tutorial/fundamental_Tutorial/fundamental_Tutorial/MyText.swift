//
//  MyText.swift
//  fundamental_Tutorial
//
//  Created by lee teukki on 2021/07/27.
//

import SwiftUI


struct MyTextView:View {
    
    // 데이터를 연동시킨다
    @Binding var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    @State private var index: Int = 0
    
    // 배경 배열 준비
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View{
        
        VStack{
            
            Spacer()
            
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxHeight: 100)
            Text("활성화 상태 \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ?
                                    Color.yellow : Color.gray)
                .background(Color.black)
            
            Spacer()
            
        }
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
        
        .onTapGesture {
            print("배경아이템이 클릭됨")
            
            
            if (self.index == self.backgroundColors.count - 1){
                self.index = 0
            } else {
                self.index += 1
            }
            
        }
        
    }
    
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
