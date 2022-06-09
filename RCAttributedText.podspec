#
#  Be sure to run `pod spec lint AttributedText.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "RCAttributedText"
  spec.version      = "1.1.0"
  spec.summary      = "AttributedText support for SwiftUI"
  spec.description  = "AttributedText is a Swift µpackage that provides NSAttributedString rendering in SwiftUI by wrapping either an NSTextView or a UITextView depending on the platform."
  spec.homepage 	= "https://github.com/mobilite-src/AttributedText"
  spec.license      = "MIT"
  spec.author       = 'CBC/Radio-Canada'
  spec.source       = { :git => "https://github.com/mobilite-src/AttributedText.git", :tag => "#{spec.version}" }

  spec.swift_version = '5.5'
  spec.ios.deployment_target = "14.0"
  spec.osx.deployment_target = "11.0"
  spec.tvos.deployment_target = "14.0"

  spec.source_files  = "Sources", "Sources/**/*"
  spec.framework = "SwiftUI"
  
  spec.test_spec 'AttributedTextTests' do |test_spec|
    test_spec.requires_app_host = true
	test_spec.source_files = "Tests", "Tests/**/*"
	test_spec.dependency 'SnapshotTesting', '~> 1.9.0'
  end
end
