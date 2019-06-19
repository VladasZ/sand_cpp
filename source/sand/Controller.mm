//
//  Controller.m
//  cpp_utils
//
//  Created by Vladas Zakrevskis on 19/06/2019.
//

#import "Controller.h"

#include "Log.hpp"

#include <ft2build.h>
#include FT_FREETYPE_H
#include FT_GLYPH_H

static FT_Library ft_library() {
    static FT_Library _library = nullptr;
    if (_library == nullptr)
        FT_Init_FreeType(&_library);
    return _library;
}

@interface Controller ()

@end

@implementation Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Info(ft_library());
    
}

@end
