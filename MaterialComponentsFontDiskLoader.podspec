Pod::Spec.new do |s|
  s.name         = "MaterialComponentsFontDiskLoader"
  s.summary      = "MDFFontDiskLoader"
  s.version      = "1.0.0"
  s.authors      = "The Material Components Authors"
  s.license      = "Apache 2.0"
  s.homepage     = "https://github.com/material-foundation/material-font-disk-loader-ios"
  s.source       = { :git => "https://github.com/material-foundation/material-font-disk-loader-ios.git", :tag => "v" + s.version.to_s }
  s.platform     = :ios, "8.0"
  s.requires_arc = true
  s.default_subspec = "lib"

  s.subspec "lib" do |ss|
    ss.public_header_files = "src/*.h"
    ss.source_files = "src/*.{h,m,mm}", "src/private/*.{h,m,mm}"
  end

  s.subspec "examples" do |ss|
    ss.source_files = "examples/*.{swift,m,h}", "examples/supplemental/*.{swift,m,h}"
    ss.exclude_files = "examples/TableOfContents.swift"
    ss.resources = "examples/supplemental/*.{xcassets}"
    ss.dependency "MaterialComponentsFontDiskLoader/lib"
  end

  s.subspec "tests" do |ss|
    ss.source_files = "tests/src/*.{swift}", "tests/src/private/*.{swift}"
    ss.dependency "MaterialComponentsFontDiskLoader/lib"
  end
end
