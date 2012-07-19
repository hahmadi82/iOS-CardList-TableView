//
//  CardListController.m
//  ARC enabled
//  Created by Hooman Ahmadi on 7/18/12.

#import "CardListController.h"
#import "CardListCell.h"

/****************************************************************************************************************
 Define the attributes of the card and the header section. You can toggle the header section on and off with the
 HEADER_ON flag. CARD_WIDTH should not be greater than 300. For square corners, set CORNER_RADIUS to zero.
****************************************************************************************************************/
#define CARD_SEPARATOR 30.0
#define CARD_HEIGHT 115.0
#define CARD_WIDTH 300.0
#define CARD_COLOR [UIColor whiteColor]
#define NUMBER_OF_CARDS 5.0
#define CORNER_RADIUS 10.0

#define HEADER_HEIGHT 115.0
#define HEADER_COLOR [UIColor whiteColor]
#define HEADER_ON 1

@implementation CardListController


/****************************************************************************************************************
 Returns the number of cards to be created. You can replace NUMBER_OF_CARDS with your own variable if you have
 a different way of determining the amount of cards to display.
****************************************************************************************************************/
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return NUMBER_OF_CARDS;
}

/****************************************************************************************************************
 Returns the the height of the card and proper spacing between them.
****************************************************************************************************************/
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return (CARD_HEIGHT + CARD_SEPARATOR);
}

/****************************************************************************************************************
 This method allocates the UITableView cell (the card), initializes it with the card attributes, and populates the
 content inside the cell. If the cell object has already been allocated, reuse in the view.
****************************************************************************************************************/
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CardListCell *cell = (CardListCell *)[tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    
    if (!cell) {
        cell = [[CardListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell" withHeight:CARD_HEIGHT withWidth:CARD_WIDTH withCornerRadius:CORNER_RADIUS withColor:CARD_COLOR];  
    }
    
    [cell addContent];
    
    //This line makes the entire card unclickable. This is handy if you want to add clickable buttons within the card. If
    //you want the entire card to be clickable, remove this line and define UITableView's didSelectWithRowAtIndexPath method
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

/****************************************************************************************************************
 When initializing this UITableView, make the margin lines (separator color) clear, allowing the background image 
 to show (displayed in CardListAppDelegate). To get rid of the extra styling added to the cell border by default, 
 set the separator style to none.
****************************************************************************************************************/
- (id)init
{
    self = [super initWithStyle:UITableViewStyleGrouped];
    
    if (self) {
        [self.tableView setSeparatorColor:[UIColor clearColor]];
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    
    return self;
}

/****************************************************************************************************************
Defined to initialize the UITableView.
****************************************************************************************************************/
- (id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

/****************************************************************************************************************
 Create the header section allowing the toggle defined in the macro above. 
****************************************************************************************************************/
- (void)viewDidLoad
{
    //If the header is off, create a little space to even out the space between the cards.
    //Otherwise, create the header area and add the headerContent view inside it.
    if (HEADER_ON) {
        
        //Position the content to fill the entire width with the height defined by the user
        headerContent = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, HEADER_HEIGHT)];
        headerContent.backgroundColor = HEADER_COLOR;
        
        //headerTitle is a placeholder example.
        //ADD YOUR OWN CONTENT HERE!
        UILabel *headerTitle = [[UILabel alloc] initWithFrame:CGRectMake(10.0, 5.0, 300.0, 30.0)];
        [headerTitle setFont:[UIFont fontWithName:@"Helvetica-Bold" size:18]];
        [headerTitle setText:@"HEADER TITLE"];
        headerTitle.backgroundColor = [UIColor clearColor];
        headerTitle.textColor = [UIColor blackColor];
        [headerContent addSubview:headerTitle];
        
        //Position the header area to fill the entire width with the height defined by the user and the
        //separator spacing used for the cards
        header = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, HEADER_HEIGHT + CARD_SEPARATOR - 10.0)];
        [header addSubview:headerContent];
    } else {
        //If the header is turned off, then exclude the height but still add separator space to even spacing with cards
        header = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, CARD_SEPARATOR - 10.0)]; 
    }
    
    //Add the header view and content to the UITableView's defined header area
    self.tableView.tableHeaderView = header;
    
    //Make the UITableView background clear, allowing the background image to show (displayed in CardListAppDelegate). 
    //This will give the effect of floating cards when they scroll.
    self.tableView.backgroundColor = [UIColor clearColor];
}
@end
