<p align="center">
<img src="Logo.png" width="998" max-width="90%" alt="in2plane" /><br>
<img src="https://img.shields.io/badge/Language-Swift-orange.svg" />

<a href="https://swift.org/package-manager">
<img src="https://img.shields.io/badge/spm-compatible-brightgreen.svg?style=flat" alt="Swift Package Manager" />
</a>

<a href="https://twitter.com/unsignedints">
<img src="https://img.shields.io/badge/twitter-@unsignedints-blue.svg?style=flat" alt="Twitter: @unsignedints" />
</a>
</p>

<p align="center">
	A wrapper around XCTestCase that makes working with XCTestExpectations much cleaner
</p>

## Overview

Turn this:

```Swift
let exp = expectation(description: #function)

AsyncTask {
	exp.fulfill()
}

waitForExpectations(timeout: 5)
```

Into this:

```Swift
expect { expectation in
	AsyncTask {
		expectation.fulfill()
	}
}
```

It may not look like much of an improvement, but it allows async unit tests to be written without having to explicitly declare an instance of XCTestExpectation and then declaring for how long to wait for.


The method signature defaults the expectation name to be `#function` for clarity with a timeout of 5 seconds. Both of these can be overidden:

```Swift
expect("Test Name", limitingTo: 3.0) { expectation in
	// Perform async task
}
```
