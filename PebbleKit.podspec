Pod::Spec.new do |s|
  s.name         = "PebbleKit"
  s.version      = "3.1.1"
  s.summary      = "Embed PebbleKit iOS into your app to communicate with Pebble"
  s.homepage     = "https://github.com/pebble/pebble-ios-sdk"
  s.license      = {
    :type => 'Commercial',
    :text => <<-LICENSE
              © 2015 Pebble Technology Corp. All rights reserved.
    LICENSE
  }
  s.author       = { "Pebble Technology Corp." => "devsupport@getpebble.com" }
  s.source       = { :git => "https://github.com/pebble/pebble-ios-sdk.git", :tag => s.version }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.header_dir = 'PebbleKit'
  s.preserve_paths = "PebbleKit.framework"
  s.vendored_frameworks = "PebbleKit.framework"
  s.public_header_files = "PebbleKit.framework/Headers/*.h"

  s.frameworks = 'Foundation', 'UIKit', 'CoreGraphics'
  s.weak_frameworks = 'ExternalAccessory', 'CoreBluetooth'
end
