Pod::Spec.new do |s|
s.name                  = "zipzap"
s.version               = "8.0.3"
s.summary               = "zipzap is a zip file I/O library for Mac OS X and iOS."
s.description           = "The zip file is an ideal container for compound Objective-C documents. Zip files are widely used and well understood. You can randomly access their parts. The format compresses decently and has extensive operating system and tool support. So we want to make this format an even easier choice for you. Thus, the library features:\n\n- Easy-to-use interface: The public API offers just three classes! Yet you can look through zip files using familiar NSArray collections and properties. And you can zip, unzip and rezip zip files through familiar NSData, NSStream and Image I/O classes.\n- Efficient implementation: We've optimized zip file reading and writing to reduce virtual memory pressure and disk file thrashing. Depending on how your compound document is organized, updating a single entry can be faster than writing the same data to a separate file.\n- File format compatibility: Since zipzap closely follows the zip file format specification, it is works with most Mac, Linux and Windows zip tools.\n"
s.homepage = "https://github.com/tahasamad/zipzap"
s.documentation_url     = "http://pixelglow.github.io/zipzap/api/"
s.license               = "BSD"
s.author                = { "Pixelglow Software" => "glen.low@pixelglow.com" }
s.platform              = :ios
s.ios.deployment_target = "5.0"
s.requires_arc          = true
s.frameworks            = "Foundation", "ImageIO"
s.library               = 'z'
s.source                = { :git => "https://github.com/tahasamad/zipzap.git", :tag => s.version }
s.source_files          = "zipzap/*.h"

s.subspec "c++" do |cpp|
cpp.source_files        = "zipzap/*.cpp"
cpp.compiler_flags      = "-fno-exceptions -std=c++11 -stdlib=libc++"
end

s.subspec "objc" do |objc|
objc.source_files       = "zipzap/*.m"
objc.compiler_flags     = "-fno-objc-exceptions -std=c99"
end

s.subspec "objcpp" do |objcpp|
objcpp.source_files     = "zipzap/*.mm"
objcpp.compiler_flags   = "-fno-objc-exceptions -fno-exceptions -std=c++11 -stdlib=libc++"
end

s.public_header_files   = public_header_files = "zipzap/zipzap.h", "zipzap/ZZArchive.h", "zipzap/ZZArchiveEntry.h", "zipzap/ZZConstants.h", "zipzap/ZZError.h"
end