#
# Be sure to run `pod lib lint YFBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YFBase'
  s.version          = '0.1.0'
  s.summary          = '项目初期基本工具'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "项目工具，包括一些常用的分类和其他工具"

  s.homepage         = 'https://github.com/studyYF/YFBase'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '13818556154@163.com' => '13818556154@163.com' }
  s.source           = { :git => 'https://github.com/studyYF/YFBase.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  #s.source_files = 'YFBase/Classes/**/*'
    s.subspec 'Const' do |c|
        c.source_files = 'YFBase/Classes/YFConst/**/*'
    end

    s.subspec 'Frame' do |f|
        f.source_files = 'YFBase/Classes/YFFrame/**/*'
    end

    s.subspec 'XibFont' do |x|
        x.source_files = 'YFBase/Classes/YFXibFont/**/*'
    end

  # s.resource_bundles = {
  #   'YFBase' => ['YFBase/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
