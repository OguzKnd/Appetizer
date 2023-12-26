//
//  AccountView.swift
//  Appetizer
//
//  Created by Oğuz Kanda on 19.12.2023.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    @FocusState private var focusedTextField:FormTextField?

    enum FormTextField {
        case firstname, lastname, email
    }
    
    var body: some View {
        NavigationView {
            Form {
                
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.user.firstname)
                        .focused($focusedTextField, equals: .firstname)
                        .onSubmit {focusedTextField = .lastname}
                        .submitLabel(.next)
                    
                    TextField("Last Name", text: $viewModel.user.lastname)
                        .focused($focusedTextField, equals: .lastname)
                        .onSubmit {focusedTextField = .email}
                        .submitLabel(.next)

                    TextField("Email", text: $viewModel.user.email)
                        .focused($focusedTextField, equals: .email)
                        .onSubmit { focusedTextField = nil }
                        .submitLabel(.continue)

                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.user.birthday,displayedComponents: .date)
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                    
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle("⌚️ Account ")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Dissmiss") {
                        focusedTextField = nil
                    }
                }
            }
        }
        
        .onAppear {
            viewModel.retrieveUser()
        }
        
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
