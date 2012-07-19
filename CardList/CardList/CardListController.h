#import <Foundation/Foundation.h>

@interface CardListController : UITableViewController
{
    NSMutableArray *lineItems;
    NSMutableArray *spotItems;
    UIActivityIndicatorView *loading;
    UIImageView *navImageView;
    UIBarButtonItem *signOutButton;
    
    UIView *header;
    UIView *headerContent;
}

@end
