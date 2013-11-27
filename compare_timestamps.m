#import "compare_timestamps.h"

@implementation compare_timestamps

/**
 The following Methods obtain an integer value for the different components of an NSDate object.
 You can use the NSDateComponents class to obtain all the components from formatted NSCalendar objects.
 */
-(int)getYear:(NSDate *)date{
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit| NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit fromDate:date];
    
    int year = [components year];
    
    return year;
}
-(int)getMonth:(NSDate *)date{
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit| NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit fromDate:date];
    
    int month = [components month];
    
    return month;
}
-(int)getDay:(NSDate *)date{
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit| NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit fromDate:date];
    
    int day = [components day];
    
    return day;
}
-(int)getHour:(NSDate *)date{
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit| NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit fromDate:date];
    
    int hour = [components hour];
    
    return hour;
}
-(int)getMinute:(NSDate *)date{
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit| NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit fromDate:date];
    
    int minute = [components minute];
    
    return minute;
}
-(int)getSecond:(NSDate *)date{
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit| NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit fromDate:date];
    
    int second = [components second];
    
    return second;
}
-(NSDate*)formatDate:(NSString *)dateString{
    /**
    @discussion NSDateFormatter object used to format date objects in specified format
     */
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    // Format of choice
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    NSDate *formattedDate = [dateFormatter dateFromString:dateString];
    
    return formattedDate;
}

-(NSString*)getElapsedTime:(NSDate *)serverTime :(NSDate *)timeToCompare{
    /** I use this method to compare the current time returned from the server, and a specific time and then return the
        the difference in a string of my choice to display somewhere
     */
    NSString *result = @"x amount of time has passed";
    
    return result;
}

@end
