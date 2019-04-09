Pod::Spec.new do |spec|
    spec.name = "GreatExpectations"
    spec.version = "1.0.0"
    spec.summary = "A wrapper around XCTestCase that makes working with XCTestExpectations much cleaner"
    spec.description = "A lightweight wrapper on XCTestCase that removes some of the repetitive boilerplate associated with async unit tests"
    spec.homepage = "https://github.com/unsignedintellects/GreatExpectations"
    spec.license = { :type => "MIT", :file => "LICENSE" }
    spec.author = { "Jack Rostron" => "jack@rostron.org.uk" }
    spec.source = { :git => "https://github.com/unsignedintellects/GreatExpectations.git", :tag => "#{spec.version}" }
    spec.source_files = "Sources/GreatExpectations/*.swift"
    spec.ios.deployment_target = "9.0"
    spec.osx.deployment_target = "10.9"
    spec.watchos.deployment_target = "3.0"
    spec.tvos.deployment_target = "9.0"
end
