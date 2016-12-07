/*
 Copyright 2015-present Google Inc.. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import <UIKit/UIKit.h>

#import "MaterialFontDiskLoader.h"

NSString *const CustomFontBundle = @"CustomFont.bundle";
NSString *const CustomFontRegularFontName = @"Roboto-Regular";
NSString *const CustomFontRegularFontFilename = @"Roboto-Regular.ttf";

@interface FontDiskLoaderSimpleExample : UIViewController
@end

@implementation FontDiskLoaderSimpleExample

- (void)viewDidLoad {
  [super viewDidLoad];

  self.view.backgroundColor = [UIColor whiteColor];
  UIViewAutoresizing flexibleMargins =
      UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin |
      UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;

  // Consider using the named styles provided by the Typography component instead of specific font
  // sizes. See https://github.com/material-components/material-components-ios/tree/develop/components/Typography

  NSBundle *bundle = [NSBundle bundleForClass:[self class]];
  MDFFontDiskLoader *fontDiskLoader =
      [[MDFFontDiskLoader alloc] initWithFontName:CustomFontRegularFontName
                                         filename:CustomFontRegularFontFilename
                                   bundleFileName:CustomFontBundle
                                       baseBundle:bundle];

  UILabel *label = [[UILabel alloc] init];
  label.text = @"This is Roboto regular 16";
  label.font = [fontDiskLoader fontOfSize:16];
  [label sizeToFit];
  label.autoresizingMask = flexibleMargins;
  label.center = CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds));
  [self.view addSubview:label];
}

#pragma mark - Supplemental

+ (NSArray *)catalogBreadcrumbs {
  return @[ @"Font Disk Loader" ];
}

@end
