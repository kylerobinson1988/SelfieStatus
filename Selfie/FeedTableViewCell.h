//
//  FeedTableViewCell.h
//  Selfie
//
//  Created by Kyle Brooks Robinson on 6/4/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeedTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView * feedImageView;
@property (weak, nonatomic) IBOutlet UILabel * timeStampLabel;
@property (weak, nonatomic) IBOutlet UILabel * likesCountLabel;
@property (weak, nonatomic) IBOutlet UILabel * commentTextLabel;

@end
