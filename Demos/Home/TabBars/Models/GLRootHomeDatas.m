//
//  GLRootHomeDatas.m
//  Demos
//
//  Created by gaolong on 16/2/10.
//  Copyright © 2016年 schiller. All rights reserved.
//

#import "GLRootHomeDatas.h"

@interface GLRootHomeData ()

@end

@implementation GLRootHomeData
+ (NSMutableDictionary *)getCellDataSource
{
    NSMutableArray *demoArray = [GLRootHomeData getDemoArray];
    NSMutableArray *urlsArray = [GLRootHomeData getToUrlString];
    NSMutableArray *dataSourceArray = [NSMutableArray array];
    NSMutableDictionary *dataSourceDic = [NSMutableDictionary dictionary];
    
    [demoArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (idx == 0) {
            GLRootHomeCellModel *cellModel0 = [[GLRootHomeCellModel alloc] init];
            cellModel0.cellType = GLRootHomeCellTypeHeader;
            cellModel0.cellHeight = 143.0f;
            cellModel0.model = nil;
            [dataSourceArray addObject:cellModel0];
        }
        GLRootHomeCellModel *cellModel = [[GLRootHomeCellModel alloc] init];
        cellModel.cellType = GLRootHomeCellTypeSingle;
        cellModel.cellHeight = 50.0f;
        GLRootSingelCellModel *model = [[GLRootSingelCellModel alloc] init];
        model.cellId = idx;
        model.titleName = demoArray[idx];
        model.toUrlString = urlsArray[idx];
        cellModel.model = model;
        [dataSourceArray addObject:cellModel];
    }];
    
    dataSourceDic[@(0)] = dataSourceArray;

    return dataSourceDic;
}

+ (NSMutableArray *)getToUrlString
{
    NSMutableArray *urls = [NSMutableArray arrayWithArray:@[
                                GLURLDemoButtonCell, GLURLDemoScrollListCell,
                                GLURLDemoTabBarCell, GLURLDemoAnimationCell,
                                GLURLDemoRuntimeCell, GLURLDemoNetWorkCell,GLURLDemoAdScrollTimerCell,GLURLDemoWebViewCell, GLURLDemoTopBarCell, GLURLDemoLoginCell,        GLURLDemoThreadViewCell, GLURLDemoMantleViewCell,
                                GLURLDemoReactViewCell,
                                GLURLDemoDatabaseCell
                                ]];
    return urls;
}

+ (NSMutableArray *)getDemoArray
{
     NSMutableArray *demoArray = [NSMutableArray arrayWithArray:@[
                                        @"简单按钮", @"ScrollView列表", @"底部TabBar",
                                        @"动画Demo", @"运行时", @"网络框架",
                                          @"滚动动画计时器",
                                        @"微博H5跳转", @"自定义TabelView", @"自定义登录页面", @"多线程Demo", @"测试Mantle框架", @"ReactNative入口",
                                        @"FMDB数据库框架"]];
    return demoArray;
}

+ (GLTestDemoTypeCell)cellId:(NSInteger)ID
{
    return ID;
}

@end

@implementation GLRootHomeCellModel

@end

@implementation GLRootSingelCellModel

@end