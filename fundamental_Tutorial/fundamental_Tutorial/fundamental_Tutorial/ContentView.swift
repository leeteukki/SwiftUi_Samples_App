//
//  ContentView.swift
//  fundamental_Tutorial
//
//  Created by lee teukki on 2021/07/25.
//

import SwiftUI

struct ContentView: View {
    
    // 변수를 설정할 때는 값의 변화를 감지
    // @State 값의 변화를 감지 -> 뷰에 적용
    @State private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView{
            
            VStack {
                
                
                HStack{
                
                
                myVstackView()
                myVstackView()
                myVstackView()
                
               
                
                
            }
            .padding(isActivated ? 50.0 : 10.0)
            .background(isActivated ? Color.yellow : Color.black)
            .onTapGesture {
                print("Hstack 이 클릭")
                
                // 애니매이션과 함께
                withAnimation{
                    // toggle() true 이면 false로 false면 true
                    self.isActivated.toggle()
                }
                
    
                 
        }//Hstack
                
                // 네비게이션 버튼 (링크)
                NavigationLink(
                    destination: MyTextView()){
                    Text("네비게이션")
                        .font(.system(size: 30))
                        .fontWeight(.heavy)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                    
                } .padding(.top, 50)
                
            } //Vstack
   
        } // NavigationView
    
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
