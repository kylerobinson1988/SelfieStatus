//
//  SelfieCollectionViewCell.h
//  Selfie
//
//  Created by Kyle Brooks Robinson on 6/4/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelfieCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *snapshotView;

@property (weak, nonatomic) IBOutlet UIButton *likesStar;
@property (weak, nonatomic) IBOutlet UILabel *likesLabel;

@property (weak, nonatomic) IBOutlet UIButton *deleteButton;

- (IBAction)clickedDeleteButton:(id)sender;


@end
