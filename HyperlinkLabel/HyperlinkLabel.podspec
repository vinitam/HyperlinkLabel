#
# Be sure to run `pod lib lint HyperlinkLabel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HyperlinkLabel'
  s.version          = '0.1.0'
  s.summary          = 'HyperlinkLabel can create a hyperlink text within a label.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'HyperlinkLabel can create a hyperlink text within a label and add a callback when the text is clicked.'

  s.homepage         = 'https://github.com/vinitam/HyperlinkLabel'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'vinitam' => 'vinita.vins2007@gmail.com' }
  s.source           = { :git => 'https://github.com/vinitam/HyperlinkLabel.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HyperlinkLabel/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HyperlinkLabel' => ['HyperlinkLabel/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
