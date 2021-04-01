//
//  ViewController.h
//  iTahDoodle
//
//  Created by wangyuqing on 2021/3/31.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDataSource> //将ViewController 作为UITableView的数据源，因此它要遵循UITableViewDataSource协议。

//VIEW
@property (nonatomic) UITableView *myTable;
@property (nonatomic) UITextField *myField;
@property (nonatomic) UIButton *myButton;

//MODEL
@property (nonatomic) NSMutableArray *tasks;

-(void) addTask:(id)sender;

@end

