//
//  BBProvider.swift
//  BigB
//
//  Created by Rowin Shahi on 11/7/16.
//  Copyright © 2016 BigBSoft. All rights reserved.
//

import UIKit

protocol StoryboardProvider {
  var storyboardIdentifier: String { get }
  var viewControllerIdentifier: String { get }
  var navigationIdentifier: String { get }
}

extension StoryboardProvider  {
  
  func initWithNavigationController() -> UINavigationController{
    return  UIStoryboard(name: self.storyboardIdentifier, bundle: nil).instantiateViewController(withIdentifier: self.navigationIdentifier) as! UINavigationController
  }
  
  func initWithViewController() -> UIViewController{
    return  UIStoryboard(name: self.storyboardIdentifier, bundle: nil).instantiateViewController(withIdentifier: self.viewControllerIdentifier)
  }
}


enum BBPresenter: String, StoryboardProvider {
  
  case Main, Login, Splash
  
  var storyboardIdentifier: String {
    get {
      switch self{
      case .Main:
        return "Main"
      case .Login:
        return "Login"
      case .Splash:
        return "Splash"
      }
    }
  }
  
  var viewControllerIdentifier: String {
    get {
      switch self{
      case .Main:
        return "Main"
      case .Login:
        return "LoginVC"
      case .Splash:
        return "SplashVC"
      }
    }
  }
  
  var navigationIdentifier: String {
    get {
      switch self{
      case .Main:
        return "Main"
      case .Login:
        return "LoginNC"
      case .Splash:
        return "SplashNC"
      }
    }
  }
}
