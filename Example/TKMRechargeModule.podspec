#
# Be sure to run `pod lib lint TKMRechargeModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TKMRechargeModule'
  s.version          = '0.1.0'
  s.summary          = 'TKM 充值组件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'TKM 充值组件'

  s.homepage         = 'https://github.com/TokiModularization/TKMRechargeModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tokihunter' => 'zhengxianda0512@gmail.com' }
  s.source           = { :git => 'https://github.com/TokiModularization/TKMRechargeModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = [
    'TKMRechargeModule/**/*'
  ]
  s.public_header_files = [
    'TKMRechargeModule/**/*.h'
  ]
end
