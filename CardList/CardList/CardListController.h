//
//  CardListController.h
//  ARC enabled
//  Created by Hooman Ahmadi on 7/18/12.

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
