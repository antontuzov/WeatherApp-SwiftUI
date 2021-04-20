//
//  ContentView.swift
//  WeatherApp SwiftUI
//
//  Created by turbo on 20.04.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var cityVM = CityViewViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeaderView(cityVM: cityVM).padding()
                ScrollView(showsIndicators: false) {
                    CityView(cityVM: cityVM)
                }.padding(.top, 10)
            }.padding(.top, 40)
        }.background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5407095551, green: 0.7623606324, blue: 0.975662291, alpha: 1)), Color(#colorLiteral(red: 0.4177498519, green: 0.5340259075, blue: 0.9375404716, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
