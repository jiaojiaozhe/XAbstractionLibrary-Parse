#
# Be sure to run `pod lib lint XAbstractionLibrary-Parse.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XAbstractionLibrary-Parse'
  s.version          = '0.0.21'
  s.summary          = 'XAbstractionLibrary-Parse是通用型解析器.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
XAbstractionLibrary-Parse是通用型解析器，基于Mantle，具备优秀的解析容错性，解析多态性，同时使用方便.
                       DESC

  s.homepage         = 'https://github.com/jiaojiaozhe/XAbstractionLibrary-Parse'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jiaojiaozhe' => 'bluebiao@163.com' }
  s.source           = { :git => 'https://github.com/jiaojiaozhe/XAbstractionLibrary-Parse.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'XAbstractionLibrary-Parse/Classes/**/*'
  
  # s.resource_bundles = {
  #   'XAbstractionLibrary-Parse' => ['XAbstractionLibrary-Parse/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

    s.dependency 'Mantle', '~> 2.1.0'
    s.dependency 'XAbstractionLibrary-Base'
end
