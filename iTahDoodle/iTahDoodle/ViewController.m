//
//  ViewController.m
//  iTahDoodle
//
//  Created by wangyuqing on 2021/3/31.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    
    [super loadView];
    
    //1. 以winFrame为基准
    CGRect winFrame = [[UIScreen mainScreen] bounds];
    //2. 设置三个对象的frame（table, field, button）
    CGRect tableFrame = CGRectMake(20, 120, winFrame.size.width-40, winFrame.size.height-140);
    CGRect fieldFrame = CGRectMake(20, 80, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 80, 72, 31);

    //3.1 创建UITableView对象并设置
    self.myTable = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
    self.myTable.separatorStyle = UITableViewCellSelectionStyleNone;
    self.myTable.dataSource = self; //将ViewController作为UITableView的数据源
    [self.myTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];

    //3.2 创建UITextField对象并设置
    self.myField = [[UITextField alloc] initWithFrame:fieldFrame];
    self.myField.borderStyle = UITextBorderStyleRoundedRect;
    self.myField.placeholder = @"Type a task, tap Insert";

    //3.3 创建UIButton对象并设置
    self.myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.myButton.frame = buttonFrame;
    [self.myButton setTitle:@"Insert" forState:UIControlStateNormal];
    [self.myButton addTarget:self action:@selector(addTask:) forControlEvents:UIControlEventTouchUpInside];//触发UIButton，会调用self(ViewController)里的方法addTask

    //4. 将三个UI对象加入UIViewController的view
    [self.view addSubview:self.myTable];
    [self.view addSubview:self.myField];
    [self.view addSubview:self.myButton];
    
    //create a new array（MODEL）
    self.tasks = [NSMutableArray array];
    
    //Left Button
    UIBarButtonItem *myLeftButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemOrganize target:self action:@selector(goLeft:)];
    self.navigationItem.leftBarButtonItem = myLeftButton;
    self.navigationItem.leftBarButtonItem.tintColor= [UIColor greenColor];
    
    //Right Button
    UIBarButtonItem *myRightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(goRight:)];
    self.navigationItem.rightBarButtonItem = myRightButton;
    self.navigationItem.rightBarButtonItem.tintColor= [UIColor systemPinkColor];
    

}

//UIButton回调ViewController的方法
-(void) addTask:(id)sender{
    NSString *text = [self.myField text]; //得到输入框内容
    if([text length]==0) return; //如果没有内容，返回
    [self.tasks addObject:text]; //将任务添加到array中
    [self.myTable reloadData]; //刷新表格视图
    [self.myField setText:@""]; //清空输入框
    [self.myField resignFirstResponder];//关闭键盘
    
}

//UITableViewDataSource协议声明了两个必需方法：
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{ //给出表格段给出的行数
    return [self.tasks count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *c = [self.myTable dequeueReusableCellWithIdentifier:@"Cell"];
    NSString *item = [self.tasks objectAtIndex:indexPath.row];
    c.textLabel.text = item;
    return c;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)goLeft:(id)sender {
    [self.navigationController pushViewController:UIViewController.new animated:YES];
}

- (void)goRight:(id)sender {
    [self.navigationController pushViewController:UIViewController.new animated:YES];
}




@end
