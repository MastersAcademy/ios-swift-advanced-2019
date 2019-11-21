# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

def install_dependencies
  pod 'Kingfisher', '5.3.0'
  pod 'RxSwift', '5.0.1'
  pod 'RxCocoa', '5.0.1'
  pod "RxGesture", '3.0.1'
  pod 'RealmSwift', '3.20.0'
  pod 'RxRealm', '1.0.0'
  pod 'R.swift', '5.0.2'
end

target 'ImageRandomizerApp' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  inhibit_all_warnings!

  # Pods for ImageRandomizerApp
  install_dependencies

  target 'ImageRandomizerAppTests' do
    inherit! :search_paths
    #install_dependencies
    # Pods for testing
  end

  target 'ImageRandomizerAppUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
