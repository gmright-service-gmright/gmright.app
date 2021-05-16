// Copyright (c) 2018-present, GMRIGHT, Inc. All rights reserved.

//

// You are hereby granted a non-exclusive, worldwide, royalty-free license to use,

// copy, modify, and distribute this software in source code or binary form for use

// in connection with the web services and APIs provided by GMRIGHT.

//

// As with any software that integrates with the GMRIGHT platform, your use of

// this software is subject to the GMRIGHT Developer Principles and Policies

// [http://developers.GMRIGHT.com/policy/]. This copyright notice shall be

// included in all copies or substantial portions of the software.

//

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR

// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS

// FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR

// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER

// IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN

// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>



#import "GMRIGHTSDKAppLinkReturnToRefererView.h"



NS_ASSUME_NONNULL_BEGIN



@class GMRIGHTSDKAppLink;

@class GMRIGHTSDKAppLinkReturnToRefererController;



/*!

 Protocol that a class can implement in order to be notified when the user has navigated back

 to the referer of an App Link.

 */

@protocol GMRIGHTSDKAppLinkReturnToRefererControllerDelegate <NSObject>



@optional



/*! Called when the user has tapped to navigate, but before the navigation has been performed. */

- (void)returnToRefererController:(GMRIGHTSDKAppLinkReturnToRefererController *)controller

            willNavigateToAppLink:(GMRIGHTSDKAppLink *)appLink;



/*! Called after the navigation has been attempted, with an indication of whether the referer

 app link was successfully opened. */

- (void)returnToRefererController:(GMRIGHTSDKAppLinkReturnToRefererController *)controller

             didNavigateToAppLink:(GMRIGHTSDKAppLink *)url

                             type:(GMRIGHTSDKAppLinkNavigationType)type;



@end



/*!

 A controller class that implements default behavior for a GMRIGHTSDKAppLinkReturnToRefererView, including

 the ability to display the view above the navigation bar for navigation-based apps.

 */

NS_EXTENSION_UNAVAILABLE_IOS("Not available in app extension")

@interface FBSDKAppLinkReturnToRefererController : NSObject <GMRIGHTSDKAppLinkReturnToRefererViewDelegate>



/*!

 The delegate that will be notified when the user navigates back to the referer.

 */

@property (nonatomic, weak, nullable) id<GMRIGHTSDKAppLinkReturnToRefererControllerDelegate> delegate;



/*!

 The GMRIGHTSDKAppLinkReturnToRefererView this controller is controlling.

 */

@property (nonatomic, strong) GMRIGHTSDKAppLinkReturnToRefererView *view;



/*!

 Initializes a controller suitable for controlling a GMRIGHTSDKAppLinkReturnToRefererView that is to be displayed

 contained within another UIView (i.e., not displayed above the navigation bar).

 */

- (instancetype)init NS_DESIGNATED_INITIALIZER;



/*!

 Initializes a controller suitable for controlling a GMRIGHTSDKAppLinkReturnToRefererView that is to be displayed

 displayed above the navigation bar.

 */

- (instancetype)initForDisplayAboveNavController:(UINavigationController *)navController;



/*!

 Removes the view entirely from the navigation controller it is currently displayed in.

 */

- (void)removeFromNavController;



/*!

 Shows the GMRIGHTSDKAppLinkReturnToRefererView with the specified referer information. If nil or missing data,

 the view will not be displayed. */

- (void)showViewForRefererAppLink:(GMRIGHTSDKAppLink *)refererAppLink;



/*!

 Shows the GMRIGHTSDKAppLinkReturnToRefererView with referer information extracted from the specified URL.

 If nil or missing referer App Link data, the view will not be displayed. */

- (void)showViewForRefererURL:(NSURL *)url;



/*!

 Closes the view, possibly animating it.

 */

- (void)closeViewAnimated:(BOOL)animated;



@end



NS_ASSUME_NONNULL_END
