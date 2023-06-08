//
//  ExpView.swift
//  TestForHandKeyboard
//
//  Created by Shin Toyo on 2023/06/08.
//

import SwiftUI

struct PracticeView: View {
    @ObservedObject var vm:PracticeViewModel
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                         .ignoresSafeArea()
         
            VStack (alignment: .center){
                _CustomText(text: vm.text)
                PracticeTextField(text: $vm.text)
            }.padding(16)
                }
        
    }
}

struct PracticeView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeView(vm: PracticeViewModel())
    }
}


struct PracticeTextField: View {
    @Binding var text:String
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(maxWidth: 400,maxHeight: 50)
                        .overlay(
                            TextField("",text: $text)
                                .padding(20)
                    )
            Button("消去"){
                text = ""
            }.frame(width: 50,height: 50)
        }
    }
}

struct _CustomText: View {
    var text:String
    var body: some View {
        //大きく太字で
        Text(text)
            .font(.largeTitle)
            .fontWeight(.bold)
            .frame(height: 100)
    }
}
