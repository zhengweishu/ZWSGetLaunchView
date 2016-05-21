#
# Be sure to run `pod lib lint ZWSGetLaunchView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZWSGetLaunchView'
  s.version          = '1.0.0'
  s.summary          = '获取启动页'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
获取启动页.
                       DESC

  s.homepage         = 'https://github.com/zhengweishu/ZWSGetLaunchView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhengweishu' => 'git@zhengweishu.com' }
  s.source           = { :git => 'https://github.com/zhengweishu/ZWSGetLaunchView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.0'

  s.source_files = 'ZWSGetLaunchView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ZWSGetLaunchView' => ['ZWSGetLaunchView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
