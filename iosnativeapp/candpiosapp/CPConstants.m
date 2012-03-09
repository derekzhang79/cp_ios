//
//  CPConstants.m
//  candpiosapp
//
//  Created by Stephen Birarda on 3/9/12.
//  Copyright (c) 2012 Coffee and Power Inc. All rights reserved.
//

#import "CPConstants.h"

// Production vs. Staging variables
//#define PRODUCTION 1

@implementation CPConstants

#ifdef PRODUCTION

    NSString* const kCandPWebServiceUrl = @"https://coffeeandpower.com/";

    NSString* const kCandPAddFundsUrl = @"http://coffeeandpower.com/m/?ios#addFundsiPhone";
    NSString* const kFacebookAppId = @"";
    NSString* const kLinkedInKey = @"";
    NSString* const kLinkedInSecret = @"";
    NSString* const flurryAnalyticsKey = @"";

    #error "You're running in production mode. Are you sure you wanna do this?"

#else

    NSString* const kCandPWebServiceUrl = @"https://staging.coffeeandpower.com/";

    NSString* const kCandPAddFundsUrl = @"http://staging.coffeeandpower.com/m/?ios#addFundsiPhone";
    NSString* const kFacebookAppId = @"131753840249704";
    NSString* const kLinkedInKey = @"4xkfzpnvuc72";
    NSString* const kLinkedInSecret = @"mxgFhH1i1PbPlWjq";
    NSString* const flurryAnalyticsKey = @"BI59BJPSZZTIFB5H87HQ";

    // Emcro-created LI:
    //#define kLinkedInKey          @"dj7n9nz3bj65"
    //#define kLinkedInSecret       @"Hnt0m2JuooWM29OW"
    // Urban Airship
    // Configured in AirshipConfig.plist, not here anymore

#endif

// keys for data stored in NSUserDefaults
NSString* const kUDHasCheckedIn = @"hasCheckedIn";

@end
