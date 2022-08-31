#
# Be sure to run `pod lib lint bspatch-ios.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'bspatch-ios'
  s.version          = '0.1.0'
  s.summary          = 'bspatch/bsdiff tool for ios.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
bspatch/bsdiff tool for ios.
                       DESC

  s.homepage         = 'https://github.com/krmao/bspatch-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'krmao' => 'kr.mao@qq.com' }
  s.source           = { :git => 'https://github.com/krmao/bspatch-ios.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'bspatch-ios/Classes/**/*'
  
  # s.resource_bundles = {
  #   'bspatch-ios' => ['bspatch-ios/Assets/*.png']
  # }

  s.public_header_files = 'bspatch-ios/Classes/BSPatch.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
