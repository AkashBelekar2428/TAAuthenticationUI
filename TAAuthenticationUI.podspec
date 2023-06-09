#
# Be sure to run `pod lib lint TAAuthenticationUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TAAuthenticationUI'
  s.version          = '1.1.3'
  s.summary          = 'Easy to use TAAuthenticationUI.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'Awesome library. You must use this your a lot of time save'
                       DESC

  s.homepage         = 'https://github.com/akashbelekar2428/TAAuthenticationUI'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'akashbelekar2428' => 'akashbelekar108@gmail.com' }
  s.source           = { :git => 'https://github.com/AkashBelekar2428/TAAuthenticationUI.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '16.2'
  s.swift_version = '5.0'
  
  s.source_files = ['Configuration/**/*',
                    'Authentication/**/*',
                    'Email/**/*',
                    'Mobile/**/*',
                    'PIN/**/*',
                    'UIElement/**/*'
                   ]
 # Resource
  # s.resource_bundles = {
  #   'MFAuthAccess' => ['MFAuthAccess/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'Alamofire', '~> 5.4'
   s.dependency 'ObjectMapper', '~> 4.2'
end
