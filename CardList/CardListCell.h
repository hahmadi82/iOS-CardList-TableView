//
//  CardListCell.h
//  ARC enabled
//  Created by Hooman Ahmadi on 7/18/12.

#import <Foundation/Foundation.h>

@interface CardListCell : UITableViewCell
{
    UILabel *cardTitle;
    UIView *cellBackground;
    UIColor *cellColor;
    int cardHeight;
    int cardWidth;
}

- (void)addContent;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withHeight:(int)cellHeight withWidth:(int)cellWidth withCornerRadius:(int)cornerRadius withColor:(UIColor *)color;
@end
