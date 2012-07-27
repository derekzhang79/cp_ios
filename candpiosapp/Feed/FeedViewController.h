//
//  FeedViewController.h
//  candpiosapp
//
//  Created by Stephen Birarda on 6/12/12.
//  Copyright (c) 2012 Coffee and Power Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CPVenueFeed.h"
#import "CPUserActionCell.h"
#import "FeedPreviewHeaderCell.h"
#import "WEPopoverController.h"
#import "PostBaseCell.h"
#import "PillPopoverViewController.h"
#import "CommentCell.h"

@interface FeedViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, CPUserActionCellDelegate, FeedPreviewHeaderCellDelegate, WEPopoverControllerDelegate, PillPopoverDelegate, CommentCellDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) CPVenueFeed *selectedVenueFeed;
@property (nonatomic) CPPostType postType;
@property (strong, nonatomic) NSMutableArray *venueFeedPreviews;
@property (strong, nonatomic) NSMutableArray *postableVenueFeeds;
@property (nonatomic) BOOL newPostAfterLoad;
@property (strong, nonatomic) NSMutableDictionary *postPlussingUserIds;
@property (strong, nonatomic) WEPopoverController *wePopoverController;
@property (strong, nonatomic) PillPopoverViewController *pillPopoverViewController;

- (void)showPillPopoverFromCell:(PostBaseCell*)cell;

- (void)newPost:(NSIndexPath *)replyToIndexPath;
- (void)showOnlyPostableFeeds;
+ (UIView *)timelineViewWithHeight:(CGFloat)height;

@end
