//
//  ExpView.swift
//  TestForHandKeyboard
//
//  Created by Shin Toyo on 2023/06/08.
//

import SwiftUI

struct ExpView: View {
    @ObservedObject var vm:ExpViewModel
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                         .ignoresSafeArea()
         
            VStack (alignment: .center){
                CustomText(text: vm.text)
                CustomTextField(text: $vm.text)
            }.padding(16)
                }
        
    }
}

struct ExpView_Previews: PreviewProvider {
    static var previews: some View {
        ExpView(vm: ExpViewModel())
    }
}


struct CustomTextField: View {
    @Binding var text:String
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .frame(maxWidth: 400,maxHeight: 50)
                    .overlay(
                        TextField("",text: $text)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(20)
                    )
    }
}

struct CustomText: View {
    var text:String
    var body: some View {
        //大きく太字で
        Text(text)
            .font(.largeTitle)
            .fontWeight(.bold)
            .frame(height: 100)
    }
}
