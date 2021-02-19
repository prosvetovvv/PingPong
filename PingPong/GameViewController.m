//
//  ViewController.m
//  PingPong
//
//  Created by Vitaly Prosvetov on 18.02.2021.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupGameScene];
}

- (void)setupGameScene {
    [self setupBackground];
    [self setupGrid];
    [self setupPaddles];
    [self setupScoreLabels];
}

- (void)setupBackground {
    self.view.backgroundColor = [UIColor tableBackground];
}

- (void)setupGrid {
    self.gridView = [[UIView alloc] initWithFrame:CGRectMake(0, HALF_SCREEN_HEIGHT, SCREEN_WIDTH, 4)];
    self.gridView.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0.5];
    [self.view addSubview:self.gridView];
}

- (void)setupPaddles {
    self.paddleTop = [[UIImageView alloc] initWithFrame:CGRectMake(HALF_SCREEN_WIDTH - 45, 40, 90, 60)];
    self.paddleTop.image = [UIImage imageNamed:@"paddleTop"];
    self.paddleTop.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:self.paddleTop];
    
    self.paddleBottom = [[UIImageView alloc] initWithFrame:CGRectMake(HALF_SCREEN_WIDTH - 45, SCREEN_HEIGHT - 90, 90, 60)];
    self.paddleBottom.image = [UIImage imageNamed:@"paddleBottom"];
    self.paddleBottom.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:self.paddleBottom];
}

- (void)setupScoreLabels {
    self.scoreTop = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 70, HALF_SCREEN_HEIGHT - 70, 50, 50)];
    self.scoreTop.textColor = [UIColor whiteColor];
    self.scoreTop.text = @"0";
    self.scoreTop.font = [UIFont systemFontOfSize:40.0 weight:UIFontWeightLight];
    self.scoreTop.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.scoreTop];
    
    self.scoreBottom = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 70, HALF_SCREEN_HEIGHT + 20, 50, 50)];
    self.scoreBottom.textColor = [UIColor whiteColor];
    self.scoreBottom.text = @"0";
    self.scoreBottom.font = [UIFont systemFontOfSize:40.0 weight:UIFontWeightLight];
    self.scoreBottom.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.scoreBottom];
}

- (void)setupBall {
    self.ball = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x - 10, self.view.center.y - 10, 20, 20)];
    self.ball.backgroundColor = [UIColor whiteColor];
    self.ball.layer.cornerRadius = 10;
    self.ball.hidden = YES;
    [self.view addSubview:self.ball];
}

@end
