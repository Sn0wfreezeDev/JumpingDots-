JumpingDots-
============

Three small dots that animate to indicate something is loading

An easy to use iOS implementation 

1. import the class 
2. initialise a new object 
3. say it should animate and your done! 

    JumpingDots *dots = [[JumpingDots alloc] initWithFrame:CGRectMake(10, 300, 48, 20) color:[UIColor whiteColor]];
    [self.view addSubview:dots];
    [dots startAnimating];
