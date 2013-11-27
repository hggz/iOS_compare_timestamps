#import <Foundation/Foundation.h>

@interface compare_timestamps : NSObject{
    /**
    @discussion String containing a date retrieved from a database. I normally retrieve these through JSON Serialization 
     and store them in an object container.
     */
    NSString *serverDate;
}

#pragma mark Methods to return each date component
-(int)getYear:(NSDate*)date;
-(int)getMonth:(NSDate*)date;
-(int)getDay:(NSDate*)date;
-(int)getHour:(NSDate*)date;
-(int)getMinute:(NSDate*)date;
-(int)getSecond:(NSDate*)date;

/**
@discussion Method to compare the current time returned by the server, and the time of a specific object
 */
-(NSString*)getElapsedTime:(NSDate*)serverTime:(NSDate*)timeToCompare;
/**
@discussion Method for formatting dates according to their specific formats using NSDateFormatter
 */
-(NSDate*)formatDate:(NSString*)dateString;

@end
