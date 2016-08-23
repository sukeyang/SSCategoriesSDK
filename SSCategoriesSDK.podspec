#
# Be sure to run `pod lib lint SSCategoriesSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SSCategoriesSDK'
  s.version          = '0.3.1'
  s.summary          = 'SSCategoriesSDK Tools.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/410900345/SSCategoriesSDK.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Suk' => '410900345@qq.com' }
  s.source           = { :git => 'https://github.com/410900345/SSCategoriesSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.0'
  s.requires_arc = true

   s.subspec 'SSUIKit' do |sp|
      sp.source_files = 'SSCategoriesSDK/Classes/SSUIKit/*.{h,m}'
      sp.public_header_files = 'SSCategoriesSDK/Classes/SSUIKit/*.h'
  end
     s.subspec 'SSTools' do |sp|
      sp.source_files = 'SSCategoriesSDK/Classes/SSTools/*.{h,m}'
      sp.public_header_files = 'SSCategoriesSDK/Classes/SSTools/*.h'
  end

   s.subspec 'SSFoundation' do |sp|
      sp.source_files = 'SSCategoriesSDK/Classes/SSFoundation/*.{h,m}'
      sp.public_header_files = 'SSCategoriesSDK/Classes/SSFoundation/*.h'
      sp.dependency 'SSCategoriesSDK/SSUIKit'
  end

 

  # s.source_files = 'SSCategoriesSDK/Classes/**/*.{h,m}'
  
  # s.resource_bundles = {
  #   'SSCategoriesSDK' => ['SSCategoriesSDK/Assets/*.png']
  # }

  # s.public_header_files = 'SSCategoriesSDK/Classes/**/*.h'
  s.frameworks = 'UIKit', 'QuartzCore','CoreGraphics', 'CoreImage','Foundation'
end
