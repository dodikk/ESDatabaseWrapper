#import <Foundation/Foundation.h>

@protocol ESReadonlyDbScheme <NSObject>

-(NSArray*)indexNamesForTable:( NSString* )tableName;

@end
