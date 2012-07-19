//
//  CardListAppDelegate.m
//  ARC enabled
//  Created by Hooman Ahmadi on 7/18/12.

#import "CardListAppDelegate.h"
#import "CardListController.h"

@implementation CardListAppDelegate

@synthesize window = _window;

/****************************************************************************************************************
 Layout the card shape with the attributes passed from the CardListController.
****************************************************************************************************************/
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //To have a static image in the backdrop of the card list, you want to add it to the owning view of
    //the CardListController. This is important if you want the cards to look like they are floating when
    //the user scrolls through. You can always use a UIColor if you don't want to use a background image:
    //self.window.backgroundColor = [UIColor darkGrayColor];
    UIView *backgroundView = [[UIView alloc] initWithFrame: self.window.frame];
    backgroundView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
    [self.window addSubview:backgroundView];
    
    CardListController *cl = [[CardListController alloc] init];
    self.window.rootViewController = cl;
    
    [self.window makeKeyAndVisible];
    return YES;
}
@end
