iOS-CardList-TableView
======================

An Objective-C template that allows customizing a UITableView to display a list of card-style cells, along with a
header area at the top.

When I was learning Objective-C, I found it difficult to customize a UITableView to have a slicker,
customized look with floating cards, like:
https://github.com/hahmadi82/iOS-CardList-TableView/blob/master/CardList%20Example.png

I've created a customizable template so anyone can easily create cooler-looking UITables with a floating
card-style look (instead of a list-style look):
https://github.com/hahmadi82/iOS-CardList-TableView/blob/master/CardList%20Template.png

Many popular apps use this card-style interface. 

Easy Set-Up
===========
All you need to do is tweak the list of attributes (in CardListController.m) and, voila, you have a card-style list:

    #define CARD_SEPARATOR 30.0
    #define CARD_HEIGHT 115.0
    #define CARD_WIDTH 300.0
    #define CARD_COLOR [UIColor whiteColor]
    #define NUMBER_OF_CARDS 5.0
    #define CORNER_RADIUS 10.0

    #define HEADER_HEIGHT 115.0
    #define HEADER_COLOR [UIColor whiteColor]
    #define HEADER_ON 1

I've also added the option of having a header area for any unique content that should be displayed at the top of
the UITableView (turned on and off by the HEADER_ON constant).

Things to Consider
==================
1) After formatting the cards, you can create your card content in the addContent method of CardListCell.m.
A card title example is included.

2) If utilizing the header area, you can add header content to the viewDidLoad method of CardListController.m.
A header title example is included.

3) The floating effect of the cards is helped by the background image displayed in the didFinishLaunchingWithOptions
method located in CardListAppDelegate.m. It's important to add a background image to the subview of the class displaying
the CardListController. This does not need to be done in the app delegate.
A placeholder background is included in the template.

4) Feel free to customize any aspect of this template to suit your needs. The comments should help you understand
how everything works, if you wish for deeper customization.

Enjoy!