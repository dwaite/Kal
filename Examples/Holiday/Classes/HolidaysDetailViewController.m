/*
 * Copyright (c) 2009 Keith Lazuka
 * License: http://www.opensource.org/licenses/mit-license.html
 */

#import "HolidaysDetailViewController.h"
#import "Holiday.h"

@implementation HolidaysDetailViewController

- (id)initWithHoliday:(Holiday *)aHoliday
{
  if ((self = [super init])) {
    holiday = aHoliday;
  }
  return self;
}

- (void)loadView
{
  UILabel *label = [[UILabel alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
  label.text = [NSString stringWithFormat:@"%@ - %@", holiday.country, holiday.name];
  label.textAlignment = UITextAlignmentCenter;
  self.view = label;
}



@end
