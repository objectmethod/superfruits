//
//  MyScene.h
//  Super Fruits
//

//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

typedef NS_ENUM(int, GameState) {
  GameStateMainMenu,
  GameStateTutorial,
  GameStatePlay,
  GameStateFalling,
  GameStateShowingScore,
  GameStateGameOver
};

@protocol MySceneDelegate
- (UIImage *)screenshot;
- (void)shareString:(NSString *)string url:(NSURL*)url image:(UIImage *)screenshot;
@end

@interface MyScene : SKScene

-(id)initWithSize:(CGSize)size delegate:(id<MySceneDelegate>)delegate state:(GameState)state;

@property (strong, nonatomic) id<MySceneDelegate> delegate;

@end
