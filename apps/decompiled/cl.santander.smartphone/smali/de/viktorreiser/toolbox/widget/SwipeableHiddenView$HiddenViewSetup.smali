.class public abstract Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;
.super Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;
.source "SwipeableHiddenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HiddenViewSetup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;
    }
.end annotation


# static fields
.field protected static final INVALID_POSITION:I = -0x1


# instance fields
.field protected closeAnimation:Landroid/view/animation/Interpolator;

.field private currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

.field protected interruptOffset:F

.field protected openAnimation:Landroid/view/animation/Interpolator;

.field protected swipeDirection:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;-><init>()V

    .line 199
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->openAnimation:Landroid/view/animation/Interpolator;

    .line 202
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->openAnimation:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->closeAnimation:Landroid/view/animation/Interpolator;

    .line 205
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->interruptOffset:F

    .line 208
    sget-object v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;->BOTH:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->swipeDirection:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    .line 188
    return-void
.end method

.method static synthetic access$0(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    return-void
.end method

.method static synthetic access$1(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;)Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    return-object v0
.end method

.method private checkAnimation(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Interpolator;

    .prologue
    const v1, 0x49742400    # 1000000.0f

    .line 481
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-nez v0, :cond_0

    .line 482
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const v1, 0xf4240

    if-eq v0, v1, :cond_1

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 484
    const-string v1, "Animation should return 0 for 0 and 1 for 1"

    .line 483
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_1
    return-void
.end method


# virtual methods
.method public final closeHiddenView()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 309
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CLOSE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    move v4, v3

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->onViewSwipe(Landroid/widget/ListView;Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;IILde/viktorreiser/toolbox/widget/SwipeableListItem;)Z

    .line 312
    :cond_0
    return-void
.end method

.method public final getCurrentListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentListView:Landroid/widget/ListView;
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$1(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)Landroid/widget/ListView;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCurrentPosition()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentPosition:I
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$0(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)I

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getCurrentSwipeableHiddenView()Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    return-object v0
.end method

.method public abstract getHiddenView()Landroid/view/View;
.end method

.method public final isHiddenViewCovered()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    invoke-virtual {v0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->isHiddenViewCovered()Z

    move-result v0

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isHiddenViewVisible()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    invoke-virtual {v0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->isHiddenViewVisible()Z

    move-result v0

    .line 282
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAnimation(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->checkAnimation(Landroid/view/animation/Interpolator;)V

    .line 429
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->closeAnimation:Landroid/view/animation/Interpolator;

    .line 430
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->openAnimation:Landroid/view/animation/Interpolator;

    .line 431
    return-void
.end method

.method public final setAnimationInteruptionOffset(F)V
    .locals 2
    .param p1, "offset"    # F

    .prologue
    .line 447
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 448
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "0 <= offset <= 1 not true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->interruptOffset:F

    .line 452
    return-void
.end method

.method public final setCloseAnimation(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->checkAnimation(Landroid/view/animation/Interpolator;)V

    .line 345
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->closeAnimation:Landroid/view/animation/Interpolator;

    .line 346
    return-void
.end method

.method public final setOpenAnimation(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->checkAnimation(Landroid/view/animation/Interpolator;)V

    .line 328
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->openAnimation:Landroid/view/animation/Interpolator;

    .line 329
    return-void
.end method

.method public setSwipeDirection(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;)V
    .locals 1
    .param p1, "direction"    # Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 465
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 468
    :cond_0
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->checkChangesLock()V

    .line 469
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->swipeDirection:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    .line 470
    return-void
.end method

.method protected final updateHiddenView()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$2(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;Landroid/view/View;)V

    .line 513
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # invokes: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->bindHiddenView()V
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$3(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)V

    .line 515
    :cond_0
    return-void
.end method
