.class public Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
.super Lcom/nineoldandroids/view/ViewPropertyAnimator;
.source "ViewPropertyAnimatorPreHC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;,
        Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;,
        Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x200

.field private static final NONE:I = 0x0

.field private static final ROTATION:I = 0x10

.field private static final ROTATION_X:I = 0x20

.field private static final ROTATION_Y:I = 0x40

.field private static final SCALE_X:I = 0x4

.field private static final SCALE_Y:I = 0x8

.field private static final TRANSFORM_MASK:I = 0x1ff

.field private static final TRANSLATION_X:I = 0x1

.field private static final TRANSLATION_Y:I = 0x2

.field private static final X:I = 0x80

.field private static final Y:I = 0x100


# instance fields
.field private mAnimationStarter:Ljava/lang/Runnable;

.field private mAnimatorEventListener:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;

.field private mAnimatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nineoldandroids/animation/Animator;",
            "Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mDurationSet:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mInterpolatorSet:Z

.field private mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

.field mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

.field private mStartDelay:J

.field private mStartDelaySet:Z

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 211
    invoke-direct {p0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;-><init>()V

    .line 52
    iput-boolean v2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mDurationSet:Z

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mStartDelay:J

    .line 65
    iput-boolean v2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mStartDelaySet:Z

    .line 78
    iput-boolean v2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mInterpolatorSet:Z

    .line 83
    iput-object v3, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .line 90
    new-instance v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;

    invoke-direct {v0, p0, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;-><init>(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$1;)V

    iput-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorEventListener:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mPendingAnimations:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$1;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$1;-><init>(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)V

    iput-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimationStarter:Ljava/lang/Runnable;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;

    .line 212
    iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mView:Landroid/view/View;

    .line 213
    invoke-static {p1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    .line 214
    return-void
.end method

.method static synthetic access$100(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)V
    .locals 0
    .param p0, "x0"    # Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->startAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->setValue(IF)V

    return-void
.end method

.method private animateProperty(IF)V
    .locals 2
    .param p1, "constantName"    # I
    .param p2, "toValue"    # F

    .prologue
    .line 470
    invoke-direct {p0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->getValue(I)F

    move-result v1

    .line 471
    .local v1, "fromValue":F
    sub-float v0, p2, v1

    .line 472
    .local v0, "deltaValue":F
    invoke-direct {p0, p1, v1, v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IFF)V

    .line 473
    return-void
.end method

.method private animatePropertyBy(IF)V
    .locals 1
    .param p1, "constantName"    # I
    .param p2, "byValue"    # F

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->getValue(I)F

    move-result v0

    .line 485
    .local v0, "fromValue":F
    invoke-direct {p0, p1, v0, p2}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IFF)V

    .line 486
    return-void
.end method

.method private animatePropertyBy(IFF)V
    .locals 8
    .param p1, "constantName"    # I
    .param p2, "startValue"    # F
    .param p3, "byValue"    # F

    .prologue
    .line 498
    iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 499
    const/4 v1, 0x0

    .line 500
    .local v1, "animatorToCancel":Lcom/nineoldandroids/animation/Animator;
    iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 501
    .local v0, "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/nineoldandroids/animation/Animator;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nineoldandroids/animation/Animator;

    .line 502
    .local v5, "runningAnim":Lcom/nineoldandroids/animation/Animator;
    iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;

    .line 503
    .local v2, "bundle":Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;
    invoke-virtual {v2, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->cancel(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 508
    iget v6, v2, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->mPropertyMask:I

    if-nez v6, :cond_0

    .line 510
    move-object v1, v5

    .line 515
    .end local v2    # "bundle":Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;
    .end local v5    # "runningAnim":Lcom/nineoldandroids/animation/Animator;
    :cond_1
    if-eqz v1, :cond_2

    .line 516
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/Animator;->cancel()V

    .line 520
    .end local v0    # "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/nineoldandroids/animation/Animator;>;"
    .end local v1    # "animatorToCancel":Lcom/nineoldandroids/animation/Animator;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v4, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;

    invoke-direct {v4, p1, p2, p3}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;-><init>(IFF)V

    .line 521
    .local v4, "nameValuePair":Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;
    iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mView:Landroid/view/View;

    iget-object v7, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 523
    iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mView:Landroid/view/View;

    iget-object v7, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 524
    return-void
.end method

.method private getValue(I)F
    .locals 1
    .param p1, "propertyConstant"    # I

    .prologue
    .line 588
    sparse-switch p1, :sswitch_data_0

    .line 620
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 591
    :sswitch_0
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getTranslationX()F

    move-result v0

    goto :goto_0

    .line 594
    :sswitch_1
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getTranslationY()F

    move-result v0

    goto :goto_0

    .line 597
    :sswitch_2
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getRotation()F

    move-result v0

    goto :goto_0

    .line 600
    :sswitch_3
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getRotationX()F

    move-result v0

    goto :goto_0

    .line 603
    :sswitch_4
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getRotationY()F

    move-result v0

    goto :goto_0

    .line 606
    :sswitch_5
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getScaleX()F

    move-result v0

    goto :goto_0

    .line 609
    :sswitch_6
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getScaleY()F

    move-result v0

    goto :goto_0

    .line 612
    :sswitch_7
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getX()F

    move-result v0

    goto :goto_0

    .line 615
    :sswitch_8
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getY()F

    move-result v0

    goto :goto_0

    .line 618
    :sswitch_9
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getAlpha()F

    move-result v0

    goto :goto_0

    .line 588
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method private setValue(IF)V
    .locals 1
    .param p1, "propertyConstant"    # I
    .param p2, "value"    # F

    .prologue
    .line 536
    sparse-switch p1, :sswitch_data_0

    .line 578
    :goto_0
    return-void

    .line 539
    :sswitch_0
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setTranslationX(F)V

    goto :goto_0

    .line 543
    :sswitch_1
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setTranslationY(F)V

    goto :goto_0

    .line 547
    :sswitch_2
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setRotation(F)V

    goto :goto_0

    .line 551
    :sswitch_3
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setRotationX(F)V

    goto :goto_0

    .line 555
    :sswitch_4
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setRotationY(F)V

    goto :goto_0

    .line 559
    :sswitch_5
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setScaleX(F)V

    goto :goto_0

    .line 563
    :sswitch_6
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setScaleY(F)V

    goto :goto_0

    .line 567
    :sswitch_7
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setX(F)V

    goto :goto_0

    .line 571
    :sswitch_8
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setY(F)V

    goto :goto_0

    .line 575
    :sswitch_9
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setAlpha(F)V

    goto :goto_0

    .line 536
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method private startAnimation()V
    .locals 9

    .prologue
    .line 432
    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    invoke-static {v6}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 433
    .local v0, "animator":Lcom/nineoldandroids/animation/ValueAnimator;
    iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 435
    .local v2, "nameValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;>;"
    iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 436
    const/4 v5, 0x0

    .line 437
    .local v5, "propertyMask":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 438
    .local v4, "propertyCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 439
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;

    .line 440
    .local v3, "nameValuesHolder":Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;
    iget v6, v3, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;->mNameConstant:I

    or-int/2addr v5, v6

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v3    # "nameValuesHolder":Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;
    :cond_0
    iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;

    new-instance v7, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;

    invoke-direct {v7, v5, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorEventListener:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;

    invoke-virtual {v0, v6}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 444
    iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorEventListener:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;

    invoke-virtual {v0, v6}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 445
    iget-boolean v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mStartDelaySet:Z

    if-eqz v6, :cond_1

    .line 446
    iget-wide v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mStartDelay:J

    invoke-virtual {v0, v6, v7}, Lcom/nineoldandroids/animation/ValueAnimator;->setStartDelay(J)V

    .line 448
    :cond_1
    iget-boolean v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mDurationSet:Z

    if-eqz v6, :cond_2

    .line 449
    iget-wide v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mDuration:J

    invoke-virtual {v0, v6, v7}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 451
    :cond_2
    iget-boolean v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mInterpolatorSet:Z

    if-eqz v6, :cond_3

    .line 452
    iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 454
    :cond_3
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    .line 455
    return-void
.end method


# virtual methods
.method public alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 416
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V

    .line 417
    return-object p0
.end method

.method public alphaBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 422
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V

    .line 423
    return-object p0
.end method

.method public cancel()V
    .locals 6

    .prologue
    .line 294
    iget-object v4, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 295
    iget-object v4, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 297
    .local v2, "mAnimatorMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/nineoldandroids/animation/Animator;Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 298
    .local v0, "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/nineoldandroids/animation/Animator;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Animator;

    .line 299
    .local v3, "runningAnim":Lcom/nineoldandroids/animation/Animator;
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/Animator;->cancel()V

    goto :goto_0

    .line 302
    .end local v0    # "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/nineoldandroids/animation/Animator;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mAnimatorMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/nineoldandroids/animation/Animator;Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;>;"
    .end local v3    # "runningAnim":Lcom/nineoldandroids/animation/Animator;
    :cond_0
    iget-object v4, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 303
    iget-object v4, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mView:Landroid/view/View;

    iget-object v5, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 304
    return-void
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mDurationSet:Z

    if-eqz v0, :cond_0

    .line 244
    iget-wide v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mDuration:J

    .line 248
    :goto_0
    return-wide v0

    :cond_0
    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mStartDelaySet:Z

    if-eqz v0, :cond_0

    .line 255
    iget-wide v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mStartDelay:J

    .line 259
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public rotation(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 332
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V

    .line 333
    return-object p0
.end method

.method public rotationBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 338
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V

    .line 339
    return-object p0
.end method

.method public rotationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 344
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V

    .line 345
    return-object p0
.end method

.method public rotationXBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 350
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V

    .line 351
    return-object p0
.end method

.method public rotationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 356
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V

    .line 357
    return-object p0
.end method

.method public rotationYBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 362
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V

    .line 363
    return-object p0
.end method

.method public scaleX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 392
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V

    .line 393
    return-object p0
.end method

.method public scaleXBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 398
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V

    .line 399
    return-object p0
.end method

.method public scaleY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 404
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V

    .line 405
    return-object p0
.end method

.method public scaleYBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 410
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V

    .line 411
    return-object p0
.end method

.method public setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 225
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mDurationSet:Z

    .line 230
    iput-wide p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mDuration:J

    .line 231
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mInterpolatorSet:Z

    .line 277
    iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 278
    return-object p0
.end method

.method public setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 0
    .param p1, "listener"    # Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .line 284
    return-object p0
.end method

.method public setStartDelay(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 3
    .param p1, "startDelay"    # J

    .prologue
    .line 265
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mStartDelaySet:Z

    .line 270
    iput-wide p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mStartDelay:J

    .line 271
    return-object p0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->startAnimation()V

    .line 290
    return-void
.end method

.method public translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 368
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V

    .line 369
    return-object p0
.end method

.method public translationXBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 374
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V

    .line 375
    return-object p0
.end method

.method public translationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 380
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V

    .line 381
    return-object p0
.end method

.method public translationYBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 386
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V

    .line 387
    return-object p0
.end method

.method public x(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 308
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V

    .line 309
    return-object p0
.end method

.method public xBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 314
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V

    .line 315
    return-object p0
.end method

.method public y(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 320
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V

    .line 321
    return-object p0
.end method

.method public yBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 326
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V

    .line 327
    return-object p0
.end method
