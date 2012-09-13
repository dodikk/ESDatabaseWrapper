#import <Foundation/Foundation.h>

@interface NSString (Sqlite3Escape)

+(NSString*)sqlite3EscapeString:( NSString* )str_;
+(NSString*)sqlite3QuotedStringOrNull:( NSString* )str_;

@end
