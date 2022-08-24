//
//  SceneDelegate.swift
//  KuringCampusMapExample
//
//  Created by Hamlit Jason on 2022/08/24.
//

import UIKit
import kuring_campus_map_ios
import SnapKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.backgroundColor = .systemBackground
        window?.rootViewController = CampusMapViewController()
        window?.makeKeyAndVisible()
    }

}

