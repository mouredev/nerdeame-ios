//
//  SceneDelegate.swift
//  nerdeame-ios
//
//  Created by Brais Moure on 23/09/2020.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = CategoriesViewController(mode: .category).embeddedInNavigation()
        window.makeKeyAndVisible()
        self.window = window
    }

}

