#import <Foundation/Foundation.h>

@interface FMError : NSError

@property ( nonatomic ) NSString* sqlQuery;
@property ( nonatomic ) NSString* databasePath;

@end
