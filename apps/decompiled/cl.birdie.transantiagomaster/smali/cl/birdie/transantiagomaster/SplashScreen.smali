.class public Lcl/birdie/transantiagomaster/SplashScreen;
.super Landroid/app/Activity;
.source "SplashScreen.java"


# instance fields
.field protected _active:Z

.field protected _splashTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/SplashScreen;->_active:Z

    .line 10
    const/16 v0, 0x9c4

    iput v0, p0, Lcl/birdie/transantiagomaster/SplashScreen;->_splashTime:I

    .line 8
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/SplashScreen;->setContentView(I)V

    .line 18
    new-instance v0, Lcl/birdie/transantiagomaster/SplashScreen$1;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/SplashScreen$1;-><init>(Lcl/birdie/transantiagomaster/SplashScreen;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/SplashScreen;->_active:Z

    .line 51
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
