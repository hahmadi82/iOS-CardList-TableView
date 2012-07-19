#import "CardListCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation CardListCell

/****************************************************************************************************************
 Take all the attributes defined in the CardList controller and use them to initialize the cell atributes.
****************************************************************************************************************/
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withHeight:(int)cellHeight withWidth:(int)cellWidth withCornerRadius:(int)cornerRadius withColor:(UIColor *)color
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        //Use the QuartzCore library to add rounded corners to the cards
        cellBackground = [[UIView alloc] initWithFrame:CGRectZero];
        [[self contentView] addSubview:cellBackground];
        cellBackground.layer.masksToBounds = YES;
        cellBackground.layer.cornerRadius = cornerRadius;

        //All the area not used by the cellBackground ends up being the separated space between the cells.
        //We make this area clear to give a floating effect to the cards over the background image (displayed
        //in CardListAppDelegate). We also get rid of the extra lines by setting the selectionStyle to none.
        self.backgroundColor = [UIColor clearColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        cardWidth = cellWidth;
        cardHeight = cellHeight;
        cellColor = color;
    }
    return self;
}

/****************************************************************************************************************
 Layout the card shape with the attributes passed from the CardListController.
****************************************************************************************************************/
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGRect cellBackgroundFrame = CGRectMake((300.0 - cardWidth) / 2, 0.0, cardWidth, cardHeight);
    [cellBackground setFrame:cellBackgroundFrame];
    cellBackground.backgroundColor = cellColor;
}

/****************************************************************************************************************
 All the content inside the card can be added here. Feel free to add text and buttons.
****************************************************************************************************************/
- (void)addContent
{
    //cardTitle is a placeholder example.
    //ADD YOUR OWN CONTENT HERE!
    cardTitle = [[UILabel alloc] initWithFrame:CGRectZero];
    [[self contentView] addSubview:cardTitle];
    [cardTitle setFrame:CGRectMake(10.0, 5.0, cardWidth - 20.0, 30.0)];
    cardTitle.textAlignment = UITextAlignmentLeft;
    cardTitle.backgroundColor = cellColor;
    [cardTitle setFont:[UIFont fontWithName:@"Helvetica-Bold" size:15]];
    cardTitle.textColor = [UIColor blackColor];
    [cardTitle setText:@"CARD TITLE"];
}

@end
