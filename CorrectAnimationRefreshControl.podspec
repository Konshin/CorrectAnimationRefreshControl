#
# Be sure to run `pod lib lint CorrectAnimationRefreshControl.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CorrectAnimationRefreshControl'
  s.version          = '0.1.1'
  s.summary          = 'A refresh control that continues animation after returning back to the scrollview screen.'

  s.description      = <<-DESC
  A base UIRefreshControll breaks its animation after the screen disappeared (For example: open another tab in UITabBarController).
  The same situation when you move the app to the background state and return back.
  CorrectAnimationRefreshControl fixes these cases
                       DESC

  s.homepage         = 'https://github.com/konshin/CorrectAnimationRefreshControl'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'konshin' => 'bodro92@yandex.ru' }
  s.source           = { :git => 'https://github.com/konshin/CorrectAnimationRefreshControl.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'CorrectAnimationRefreshControl/Classes/**/*'
  s.frameworks = 'UIKit'
  
  s.swift_version = '5.0'
end
