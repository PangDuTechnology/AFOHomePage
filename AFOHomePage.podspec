Pod::Spec.new do |s|
  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "AFOHomePage"
  s.version      = "0.0.14"
  s.summary      = "main view."

  # This description is used to generate tags and improve search results.
  s.description  = 'Use soft decode to decode video.'
  s.homepage     = "https://github.com/PangDuTechnology/AFOHomePage.git"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = "MIT"

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "PangDu" => "xian312117@gmail.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = '8.0'

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/PangDuTechnology/AFOHomePage.git", :tag => s.version.to_s }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source_files  = "AFOHomePage/*.{h,m}"
  s.public_header_files = "AFOHomePage/*.h"

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.resource_bundles = {
      'AFOHomePage' => ['AFOHomePage/*.*']
    }

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true
  s.dependency  "AFOViews"
  s.dependency  "AFOGitHub"
  s.dependency  "AFOFoundation"
  s.dependency  "AFORouter"
end
