#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface ViewControllerTests : XCTestCase

@end

@implementation ViewControllerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

-(void) testURLEncoding {
    NSLog(@"testURLEncoding()");
    
    ViewController *viewController = [[ViewController alloc]init];
    
    NSString *string = @"www.google.com?q=กขค";
    NSString *expect = @"www.google.com%3Fq=%E0%B8%81%E0%B8%82%E0%B8%84";
    
    NSString *result = [viewController URLEncoding:string];
    
    NSLog(@"Result: %@",result);
    
    XCTAssertTrue([result isEqualToString:expect]);
}

-(void) testURLEncodingWithEmptyString {
    NSLog(@"testURLEncodingWithEmptyString()");
    
    ViewController *viewController = [[ViewController alloc]init];
    
    NSString *string = @"";
    
    NSString *result = [viewController URLEncoding:string];
    
    NSLog(@"Result: %@",result);
    
    XCTAssertTrue([result length] == 0);
}

-(void) testURLEncodingWithNilString {
    NSLog(@"testURLEncodingWithNilString()");
    
    ViewController *viewController = [[ViewController alloc]init];
    
    NSString *result = [viewController URLEncoding:nil];
    
    NSLog(@"Result: %@",result);
    
    XCTAssertTrue([result length] == 0);
}

-(void) testCalculatePrice {
    NSLog(@"testCalculatePrice()");
    double first = 1.0;
    double second = 2.0;
    
    double result = [[[ViewController alloc]init] calculatePrice:first second:second];
    
    XCTAssertEqual(result, 3);
}

-(void) testCalculatePriceWithDecimalNumber {
    NSLog(@"testCalculatePriceWithWrongNumber()");
    
    double first = 1.7;
    double second = 4.5;
    
    double result = [[[ViewController alloc]init] calculatePrice:first second:second];
    
    XCTAssertEqual(result, 6.2);
}

@end
