Pod::Spec.new do |s|
  s.name         = "IDZInvocation"
  s.version      = "0.0.1"
  s.summary      = "A category on NSInvocation to make argument value extraction less painful."
  s.description  = <<-DESC
  # IDZInvocation
  A category on NSInvocation to make argument value extraction less painful.

  ## What does it do?
  Given an `NSInvocation` object `anInvocation`, `IDZInvocation` adds an `idz_arguments` property of type `NSArray` containing the values of the arguments to the invocation.

  This allows you to do things like this:
  ```objective-c
    NSArray *arguments = anInvocation.idz_arguments;
      for(int i = 0; i < arguments.count; ++i)
        {
	    NSLog(@"argument[%d]: %@", i, arguments[i]);
	      }
	      ```

	      ## Um, OK, But why did you write it?
	      I needed it for some testing and bug-checking I am currently doing. It's not something for production code, it's for debugging and testing. There may be some other stuff that does it on the internets, but my google-fu could not find it quicker than I could write it.

	      ## How do I add it to my project?
	      Just add the files `NSInvocation+IDZInvocation.h` and `NSInvocation+IDZInvocation.m` to your project.

	      I will probably add Cocoapods support soon, but that does seem like overkill for a category.

	      ## Are there any limitations?

	      At this time, the category does not support C arrays, structs, unions or bitfields. Since these are relatively unusual in Objective C method calls.
                   DESC

  s.homepage     = "https://github.com/iosdevzone/IDZInvocation"

  s.license      = "MIT"

  s.author             = { "iOS Developer Zone" => "idz@iosdeveloperzone.com" }
  s.social_media_url   = "http://twitter.com/iOSDevZone"

  s.ios.deployment_target = "5.0"
  s.osx.deployment_target = "10.7"

  s.source       = { :git => "https://github.com/iosdevzone/IDZInvocation.git", :tag => "0.0.1" }


  s.source_files  = "IDZInvocation"

  s.public_header_files = "IDZInvocation/*.h"



end
