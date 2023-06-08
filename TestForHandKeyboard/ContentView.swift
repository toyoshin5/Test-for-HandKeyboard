//
//  ContentView.swift
//  TestForHandKeyboard
//
//  Created by Shin Toyo on 2023/06/08.
//

import SwiftUI

struct ContentView: View {
    let titleList = ["Endless","10Times"]
    let subTitleList = ["回数制限なくテストを行う","10個の単語を入力する"]
    
    var body: some View {
            NavigationView{
                
                List{
                    ForEach(0..<titleList.count, id: \.self){ index in
                        NavigationLink(destination: ExpView(vm: ExpViewModel())){
                            VStack(alignment: .leading){
                                Text(titleList[index])
                                    .font(.title)
                                Text(subTitleList[index])
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
