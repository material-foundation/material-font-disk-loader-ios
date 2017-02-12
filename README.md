#FontDiskLoader

Registers a single custom font asset from disk
<!--{: .intro :}-->

### Material Design Specifications

<ul class="icon-list">
  <li class="icon-link">
    <a href="https://www.google.com/design/spec/typography.html">
      Typography
    </a>
  </li>
</ul>

## Overview

Font Disk Loader lazily registers custom fonts and caches them even if they are not included in the app's info.plist.

## Installation

### Requirements

- Xcode 7.0 or higher.
- iOS SDK version 7.0 or higher.

### Installation with CocoaPods

To add this component to your Xcode project using CocoaPods, add the following to your `Podfile`:

~~~
pod 'MDFFontDiskLoader'
~~~

Then, run the following command:

~~~ bash
pod install
~~~

### Importing

Before using Font Disk Loader, you'll need to import it:

<!--<div class="material-code-render" markdown="1">-->
#### Objective-C

~~~ objc
#import "MaterialFontDiskLoader.h"
~~~

#### Swift
~~~ swift
import MDFFontDiskLoader
~~~
<!--</div>-->

## Usage

Make sure to add your font (or the bundle it is in) to your app target. The FontDiskLoader will lazy
register the font using a CoreText API so adding the font to your `info.plist` is not necessary.
All you need to do is initialize the loader with the font name and url of the file and ask for the
font.

## Code snippets

<!--<div class="material-code-render" markdown="1">-->
#### Objective-C
~~~ objc
  MDFFontDiskLoader *fontDiskLoader =
      [[MDFFontDiskLoader alloc] initWithFontName:nameOfFontInFile fontURL:fontURLOnDisk];
  UIFont *font = [fontDiskLoader fontOfSize:16];
~~~

#### Swift
~~~ swift
    let fontLoader = MDFFontDiskLoader.init(fontName: nameOfFontInFile, fontURL: fontURLOnDisk);
    let myFont:UIFont = fontLoader.fontOfSize(16)!;
~~~
<!--</div>-->
