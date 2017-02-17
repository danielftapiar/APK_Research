.class public Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;
.super Landroid/widget/FrameLayout;
.source "SwipeableHiddenView.java"

# interfaces
.implements Lde/viktorreiser/toolbox/widget/SwipeableListItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$de$viktorreiser$toolbox$widget$SwipeableListItem$SwipeEvent:[I

.field private static mChildren:Ljava/lang/reflect/Field;

.field private static mChildrenCount:Ljava/lang/reflect/Field;


# instance fields
.field private mAnimateForward:Z

.field private mAnimating:Z

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationStep:Ljava/lang/Runnable;

.field private mAnimationStepTime:J

.field private mCurrentChildren:[Landroid/view/View;

.field private mCurrentListView:Landroid/widget/ListView;

.field private mCurrentPosition:I

.field private mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

.field private mHiddenView:Landroid/view/View;

.field private mHiddenViewCache:Landroid/view/View;

.field private mLastOffset:I

.field private mLongClicked:Z

.field private mOffset:F

.field private mOverlayView:Landroid/view/View;

.field private mStartDirection:Z

.field private mStartOffset:F

.field private mStartX:I

.field private mStarted:Z

.field private mStartedTwice:Z


# direct methods
.method static synthetic $SWITCH_TABLE$de$viktorreiser$toolbox$widget$SwipeableListItem$SwipeEvent()[I
    .locals 3

    .prologue
    .line 77
    sget-object v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->$SWITCH_TABLE$de$viktorreiser$toolbox$widget$SwipeableListItem$SwipeEvent:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->values()[Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CANCEL:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CLICK:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CLOSE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->LONG_CLICK:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->MOVE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->RESTORE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->START:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->STOP:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->$SWITCH_TABLE$de$viktorreiser$toolbox$widget$SwipeableListItem$SwipeEvent:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "mChildren"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mChildren:Ljava/lang/reflect/Field;

    .line 156
    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mChildren:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 157
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "mChildrenCount"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mChildrenCount:Ljava/lang/reflect/Field;

    .line 158
    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mChildrenCount:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 160
    .restart local v0    # "e":Ljava/lang/Exception;
    sput-object v3, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mChildren:Ljava/lang/reflect/Field;

    .line 161
    sput-object v3, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mChildrenCount:Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 598
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentPosition:I

    .line 91
    iput v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLastOffset:I

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    .line 103
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStarted:Z

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationHandler:Landroid/os/Handler;

    .line 125
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimateForward:Z

    .line 145
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLongClicked:Z

    .line 146
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartedTwice:Z

    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentChildren:[Landroid/view/View;

    .line 599
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->initialize(Landroid/util/AttributeSet;)V

    .line 600
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 603
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentPosition:I

    .line 91
    iput v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLastOffset:I

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    .line 103
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStarted:Z

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationHandler:Landroid/os/Handler;

    .line 125
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimateForward:Z

    .line 145
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLongClicked:Z

    .line 146
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartedTwice:Z

    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentChildren:[Landroid/view/View;

    .line 604
    invoke-direct {p0, p2}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->initialize(Landroid/util/AttributeSet;)V

    .line 605
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 608
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentPosition:I

    .line 91
    iput v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLastOffset:I

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    .line 103
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStarted:Z

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationHandler:Landroid/os/Handler;

    .line 125
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimateForward:Z

    .line 145
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLongClicked:Z

    .line 146
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartedTwice:Z

    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentChildren:[Landroid/view/View;

    .line 609
    invoke-direct {p0, p2}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->initialize(Landroid/util/AttributeSet;)V

    .line 610
    return-void
.end method

.method static synthetic access$0(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$1(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$10(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;F)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    return-void
.end method

.method static synthetic access$11(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;Z)V
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z

    return-void
.end method

.method static synthetic access$12(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;J)V
    .locals 0

    .prologue
    .line 141
    iput-wide p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationStepTime:J

    return-void
.end method

.method static synthetic access$13(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$14(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationStep:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$3(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)V
    .locals 0

    .prologue
    .line 1251
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->bindHiddenView()V

    return-void
.end method

.method static synthetic access$5(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z

    return v0
.end method

.method static synthetic access$6(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationStepTime:J

    return-wide v0
.end method

.method static synthetic access$7(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    return-object v0
.end method

.method static synthetic access$8(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    return v0
.end method

.method static synthetic access$9(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimateForward:Z

    return v0
.end method

.method private animate(Z)V
    .locals 2
    .param p1, "forward"    # Z

    .prologue
    .line 1278
    invoke-direct {p0, p1}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->calculateAnimationDirectionChange(Z)V

    .line 1280
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z

    if-nez v0, :cond_0

    .line 1281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z

    .line 1282
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationStepTime:J

    .line 1283
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationStep:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1285
    :cond_0
    return-void
.end method

.method private bindHiddenView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1252
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1253
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenViewCache:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1254
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    invoke-virtual {v0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->getHiddenView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    .line 1256
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1257
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "getHiddenView() did return null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1260
    :cond_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1261
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1264
    :cond_1
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    const/4 v1, 0x1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1265
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1264
    invoke-super {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1267
    :cond_2
    return-void
.end method

.method private calculateAnimationDirectionChange(Z)V
    .locals 12
    .param p1, "forward"    # Z

    .prologue
    const/high16 v11, 0x447a0000    # 1000.0f

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 1288
    iget-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimateForward:Z

    if-eq v7, p1, :cond_0

    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-object v7, v7, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->openAnimation:Landroid/view/animation/Interpolator;

    iget-object v8, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-object v8, v8, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->closeAnimation:Landroid/view/animation/Interpolator;

    if-eq v7, v8, :cond_0

    .line 1289
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->isHiddenViewCovered()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->isHiddenViewVisible()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1290
    :cond_0
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimateForward:Z

    .line 1323
    :cond_1
    :goto_0
    return-void

    .line 1294
    :cond_2
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimateForward:Z

    .line 1296
    if-eqz p1, :cond_4

    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-object v7, v7, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->closeAnimation:Landroid/view/animation/Interpolator;

    .line 1297
    :goto_1
    iget v8, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-interface {v7, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    .line 1296
    mul-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1298
    .local v0, "current":I
    if-eqz p1, :cond_5

    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-object v2, v7, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->openAnimation:Landroid/view/animation/Interpolator;

    .line 1299
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    :goto_2
    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    const/4 v6, 0x1

    .line 1300
    .local v6, "wasNegativ":Z
    :goto_3
    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iput v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    .line 1302
    const/4 v3, 0x0

    .line 1303
    .local v3, "left":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1306
    .local v4, "right":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    const/16 v7, 0xf

    if-lt v1, v7, :cond_7

    .line 1320
    :cond_3
    if-eqz v6, :cond_1

    .line 1321
    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    neg-float v7, v7

    iput v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    goto :goto_0

    .line 1296
    .end local v0    # "current":I
    .end local v1    # "i":I
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v3    # "left":F
    .end local v4    # "right":F
    .end local v6    # "wasNegativ":Z
    :cond_4
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-object v7, v7, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->openAnimation:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 1298
    .restart local v0    # "current":I
    :cond_5
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-object v2, v7, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->closeAnimation:Landroid/view/animation/Interpolator;

    goto :goto_2

    .line 1299
    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 1307
    .restart local v1    # "i":I
    .restart local v3    # "left":F
    .restart local v4    # "right":F
    .restart local v6    # "wasNegativ":Z
    :cond_7
    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    invoke-interface {v2, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1309
    .local v5, "v":I
    int-to-float v7, v0

    add-float/2addr v7, v9

    float-to-int v7, v7

    if-le v5, v7, :cond_8

    .line 1310
    iget v4, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    .line 1311
    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    add-float/2addr v7, v3

    div-float/2addr v7, v10

    iput v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    .line 1306
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1312
    :cond_8
    int-to-float v7, v0

    add-float/2addr v7, v9

    float-to-int v7, v7

    if-ge v5, v7, :cond_3

    .line 1313
    iget v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    .line 1314
    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    add-float/2addr v7, v4

    div-float/2addr v7, v10

    iput v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    goto :goto_5
.end method

.method private checkAddView()V
    .locals 3

    .prologue
    .line 1224
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getChildCount()I

    move-result v0

    .line 1226
    .local v0, "count":I
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1227
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1228
    const-string v2, "Swipeable action list item can host only one direct child!"

    .line 1227
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1230
    :cond_2
    return-void
.end method

.method private checkRequirements()V
    .locals 3

    .prologue
    .line 1236
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1249
    :cond_0
    return-void

    .line 1240
    :cond_1
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    if-nez v0, :cond_2

    .line 1241
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1242
    const-string v2, " needs a a setup which is set by setHiddenViewSetup()!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1241
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1245
    :cond_2
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1246
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1247
    const-string v2, " needs a child to have function!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1246
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleTouch(Landroid/view/MotionEvent;Z)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "intercept"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 1169
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-boolean v0, v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->consumeClick:Z

    if-eqz v0, :cond_0

    .line 1170
    invoke-virtual {p0, v6}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->setClickable(Z)V

    .line 1173
    :cond_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-boolean v0, v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->consumeLongClick:Z

    if-eqz v0, :cond_1

    .line 1174
    invoke-virtual {p0, v6}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->setLongClickable(Z)V

    .line 1177
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1210
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 1211
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1212
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStarted:Z

    .line 1215
    :goto_1
    return v0

    .line 1179
    :pswitch_0
    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartedTwice:Z

    if-nez v0, :cond_2

    .line 1180
    iput-boolean v6, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartedTwice:Z

    .line 1181
    iput-boolean v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLongClicked:Z

    .line 1182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartX:I

    .line 1183
    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->START:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->onViewSwipe(Landroid/widget/ListView;Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;IILde/viktorreiser/toolbox/widget/SwipeableListItem;)Z

    goto :goto_0

    .line 1188
    :pswitch_1
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLongClicked:Z

    if-nez v0, :cond_2

    .line 1189
    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->MOVE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartX:I

    sub-int v3, v0, v3

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->onViewSwipe(Landroid/widget/ListView;Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;IILde/viktorreiser/toolbox/widget/SwipeableListItem;)Z

    goto :goto_0

    .line 1194
    :pswitch_2
    iput-boolean v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartedTwice:Z

    .line 1196
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLongClicked:Z

    if-nez v0, :cond_2

    .line 1197
    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->STOP:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartX:I

    sub-int v3, v0, v3

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->onViewSwipe(Landroid/widget/ListView;Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;IILde/viktorreiser/toolbox/widget/SwipeableListItem;)Z

    goto :goto_0

    .line 1202
    :pswitch_3
    iput-boolean v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartedTwice:Z

    .line 1204
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLongClicked:Z

    if-nez v0, :cond_2

    .line 1205
    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CANCEL:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartX:I

    sub-int v3, v0, v3

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->onViewSwipe(Landroid/widget/ListView;Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;IILde/viktorreiser/toolbox/widget/SwipeableListItem;)Z

    goto :goto_0

    .line 1214
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v6

    .line 1215
    goto :goto_1

    .line 1177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x2

    .line 1123
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenViewCache:Landroid/view/View;

    .line 1124
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenViewCache:Landroid/view/View;

    const/4 v1, -0x1

    .line 1125
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1124
    invoke-super {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1127
    new-instance v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;-><init>(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationStep:Ljava/lang/Runnable;

    .line 1163
    if-nez p1, :cond_0

    .line 1166
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1014
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 1022
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1023
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v1, -0x1

    .line 1038
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->checkAddView()V

    .line 1039
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    .line 1040
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1041
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1040
    invoke-super {p0, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1030
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1031
    return-void
.end method

.method public closeHiddenView()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 590
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->isHiddenViewCovered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CLOSE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->onViewSwipe(Landroid/widget/ListView;Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;IILde/viktorreiser/toolbox/widget/SwipeableListItem;)Z

    .line 593
    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 853
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getDrawingTime()J

    move-result-wide v0

    .line 855
    .local v0, "drawingTime":J
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->isHiddenViewCovered()Z

    move-result v5

    if-nez v5, :cond_4

    .line 856
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 858
    iget-boolean v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimateForward:Z

    if-eqz v5, :cond_0

    .line 859
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-object v2, v5, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->openAnimation:Landroid/view/animation/Interpolator;

    .line 860
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-interface {v2, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    mul-float v3, v5, v6

    .line 862
    .local v3, "offset":F
    iget v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_1

    .line 864
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v8, v8, v3, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 870
    :goto_1
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    if-nez v5, :cond_2

    .line 873
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenViewCache:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 878
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 880
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 881
    .local v4, "overlayOffset":I
    iget v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_3

    .line 883
    :goto_3
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 884
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 885
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    neg-int v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 889
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v3    # "offset":F
    .end local v4    # "overlayOffset":I
    :goto_4
    return-void

    .line 859
    :cond_0
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-object v2, v5, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->closeAnimation:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 867
    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v3    # "offset":F
    :cond_1
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v5, v8, v6, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_1

    .line 875
    :cond_2
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    .line 881
    .restart local v4    # "overlayOffset":I
    :cond_3
    neg-int v4, v4

    goto :goto_3

    .line 887
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v3    # "offset":F
    .end local v4    # "overlayOffset":I
    :cond_4
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_4
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 900
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->checkRequirements()V

    .line 908
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    .line 909
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentChildren:[Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->isHiddenViewCovered()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    :goto_0
    aput-object v2, v3, v4

    .line 910
    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mChildren:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentChildren:[Landroid/view/View;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 911
    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mChildrenCount:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 913
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 915
    .local v1, "result":Z
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 916
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentChildren:[Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    aput-object v4, v2, v3

    .line 918
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 919
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentChildren:[Landroid/view/View;

    const/4 v3, 0x1

    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    aput-object v4, v2, v3

    .line 920
    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mChildrenCount:Ljava/lang/reflect/Field;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 935
    :goto_1
    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mChildren:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentChildren:[Landroid/view/View;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 942
    .end local v1    # "result":Z
    :goto_2
    return v1

    .line 909
    :cond_0
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    goto :goto_0

    .line 922
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentChildren:[Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 923
    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mChildrenCount:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 941
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_2

    .line 925
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "result":Z
    :cond_2
    :try_start_1
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 926
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentChildren:[Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    aput-object v4, v2, v3

    .line 927
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentChildren:[Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 928
    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mChildrenCount:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 930
    :cond_3
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentChildren:[Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 931
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentChildren:[Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 932
    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mChildrenCount:Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 939
    .end local v1    # "result":Z
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_2
.end method

.method public isHiddenViewCovered()Z
    .locals 2

    .prologue
    .line 579
    iget v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHiddenViewSetupSet()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHiddenViewVisible()Z
    .locals 2

    .prologue
    .line 564
    iget v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 959
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-boolean v0, v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->detachedFromList:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->handleTouch(Landroid/view/MotionEvent;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 842
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getChildCount()I

    move-result v0

    .line 843
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 846
    return-void

    .line 844
    :cond_0
    invoke-virtual {p0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 843
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 801
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->checkRequirements()V

    .line 803
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 804
    .local v1, "p":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 805
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 806
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 808
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    .line 809
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 811
    .local v0, "height":I
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->isHiddenViewCovered()Z

    move-result v2

    if-nez v2, :cond_2

    .line 812
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    .line 814
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 815
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 816
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    or-int v3, v0, v4

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    .line 832
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->setMeasuredDimension(II)V

    .line 833
    return-void

    .line 818
    :cond_1
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    .line 819
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    or-int/2addr v3, v4

    .line 818
    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 821
    :cond_2
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->isHiddenViewCovered()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenViewCache:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v2, :cond_3

    .line 822
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenViewCache:Landroid/view/View;

    .line 823
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenViewCache:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 822
    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    .line 825
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenViewCache:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 826
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenViewCache:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    .line 829
    :cond_3
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenViewCache:Landroid/view/View;

    or-int v3, v0, v4

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 951
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-boolean v1, v1, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->detachedFromList:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->handleTouch(Landroid/view/MotionEvent;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onViewSwipe(Landroid/widget/ListView;Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;IILde/viktorreiser/toolbox/widget/SwipeableListItem;)Z
    .locals 10
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "event"    # Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;
    .param p3, "offset"    # I
    .param p4, "position"    # I
    .param p5, "restoreItem"    # Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    .prologue
    .line 619
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->checkRequirements()V

    .line 621
    iget-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z

    if-eqz v7, :cond_0

    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget v8, v8, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->interruptOffset:F

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_6

    .line 622
    :cond_0
    iget-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimateForward:Z

    if-eqz v7, :cond_6

    :cond_1
    const/4 v1, 0x0

    .line 624
    .local v1, "mayInterruptAnimation":Z
    :goto_0
    sget-object v7, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->START:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    if-ne p2, v7, :cond_2

    .line 625
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStarted:Z

    .line 628
    :cond_2
    iget-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStarted:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z

    if-eqz v7, :cond_3

    if-eqz v1, :cond_4

    .line 629
    :cond_3
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget-object v8, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget v8, v8, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->startOffset:I

    if-lt v7, v8, :cond_4

    .line 630
    const/4 v7, 0x1

    iput-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStarted:Z

    .line 631
    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartDirection:Z

    .line 632
    iget-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartDirection:Z

    invoke-direct {p0, v7}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->calculateAnimationDirectionChange(Z)V

    .line 633
    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    iput v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartOffset:F

    .line 634
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-boolean v7, v7, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->stickyStart:Z

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    :goto_2
    iput v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLastOffset:I

    .line 637
    :cond_4
    invoke-static {}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->$SWITCH_TABLE$de$viktorreiser$toolbox$widget$SwipeableListItem$SwipeEvent()[I

    move-result-object v7

    invoke-virtual {p2}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 745
    :cond_5
    :goto_3
    iput p3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLastOffset:I

    .line 747
    iget-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStarted:Z

    :goto_4
    return v7

    .line 622
    .end local v1    # "mayInterruptAnimation":Z
    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    .line 631
    .restart local v1    # "mayInterruptAnimation":Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    :cond_8
    move v7, p3

    .line 634
    goto :goto_2

    .line 639
    :pswitch_0
    instance-of v7, p5, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    if-eqz v7, :cond_9

    move-object v4, p5

    .line 640
    check-cast v4, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    .line 642
    .local v4, "v":Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;
    iget-boolean v7, v4, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimateForward:Z

    iput-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimateForward:Z

    .line 643
    iget-boolean v7, v4, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z

    iput-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z

    .line 644
    iget-wide v7, v4, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationStepTime:J

    iput-wide v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationStepTime:J

    .line 645
    iget-boolean v7, v4, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStarted:Z

    iput-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStarted:Z

    .line 646
    iget-object v7, v4, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentListView:Landroid/widget/ListView;

    iput-object v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentListView:Landroid/widget/ListView;

    .line 647
    iget v7, v4, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentPosition:I

    iput v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentPosition:I

    .line 648
    iget v7, v4, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLastOffset:I

    iput v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLastOffset:I

    .line 649
    iget v7, v4, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    iput v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    .line 651
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->bindHiddenView()V

    .line 652
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->requestLayout()V

    .line 654
    const/4 v7, 0x1

    goto :goto_4

    .line 656
    .end local v4    # "v":Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;
    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    .line 660
    :pswitch_1
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->bindHiddenView()V

    .line 662
    iget-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z

    if-eqz v7, :cond_a

    if-eqz v1, :cond_5

    .line 663
    :cond_a
    iput p4, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentPosition:I

    .line 664
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentListView:Landroid/widget/ListView;

    .line 665
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationHandler:Landroid/os/Handler;

    iget-object v8, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationStep:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 666
    const/4 v7, 0x0

    iput-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z

    .line 667
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    invoke-static {v7, p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->access$0(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)V

    goto :goto_3

    .line 672
    :pswitch_2
    iget-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStarted:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLastOffset:I

    if-eq p3, v7, :cond_5

    .line 673
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->isHiddenViewCovered()Z

    move-result v5

    .line 674
    .local v5, "wasCoveredBefore":Z
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->isHiddenViewVisible()Z

    move-result v6

    .line 675
    .local v6, "wasVisibleBefore":Z
    iget v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    .line 676
    .local v0, "lastOffset":F
    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLastOffset:I

    sub-int v9, p3, v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    .line 678
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-object v7, v7, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->swipeDirection:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    sget-object v8, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;->LEFT:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    if-ne v7, v8, :cond_b

    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_c

    .line 679
    :cond_b
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-object v7, v7, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->swipeDirection:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    sget-object v8, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;->RIGHT:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    if-ne v7, v8, :cond_d

    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_d

    .line 680
    :cond_c
    const/4 v7, 0x0

    iput v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    .line 683
    :cond_d
    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_e

    .line 684
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    .line 687
    :cond_e
    if-nez v5, :cond_f

    if-eqz v6, :cond_11

    .line 689
    :cond_f
    iput-boolean v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimateForward:Z

    .line 696
    :goto_5
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->isHiddenViewCovered()Z

    move-result v7

    if-eq v5, v7, :cond_10

    .line 697
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->requestLayout()V

    .line 700
    :cond_10
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->invalidate()V

    goto/16 :goto_3

    .line 691
    :cond_11
    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_12

    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_14

    .line 692
    :cond_12
    const/4 v7, 0x0

    cmpg-float v7, v0, v7

    if-gez v7, :cond_13

    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-gez v7, :cond_14

    .line 693
    :cond_13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_14

    const/4 v7, 0x0

    .line 691
    :goto_6
    invoke-direct {p0, v7}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->calculateAnimationDirectionChange(Z)V

    goto :goto_5

    .line 693
    :cond_14
    const/4 v7, 0x1

    goto :goto_6

    .line 705
    .end local v0    # "lastOffset":F
    .end local v5    # "wasCoveredBefore":Z
    .end local v6    # "wasVisibleBefore":Z
    :pswitch_3
    iget-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStarted:Z

    if-eqz v7, :cond_5

    .line 708
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->isHiddenViewCovered()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 709
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->animate(Z)V

    goto/16 :goto_3

    .line 710
    :cond_15
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->isHiddenViewVisible()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 711
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->animate(Z)V

    goto/16 :goto_3

    .line 713
    :cond_16
    iget-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartDirection:Z

    invoke-direct {p0, v7}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->calculateAnimationDirectionChange(Z)V

    .line 714
    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartOffset:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v2, v7, v8

    .line 715
    .local v2, "moved":F
    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget v8, v8, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->stopOffset:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v3, v7, v8

    .line 717
    .local v3, "stop":F
    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStartOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_18

    cmpl-float v7, v2, v3

    if-lez v7, :cond_17

    const/4 v7, 0x1

    :goto_7
    invoke-direct {p0, v7}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->animate(Z)V

    goto/16 :goto_3

    :cond_17
    const/4 v7, 0x0

    goto :goto_7

    :cond_18
    neg-float v7, v3

    cmpl-float v7, v2, v7

    if-lez v7, :cond_19

    const/4 v7, 0x1

    goto :goto_7

    :cond_19
    const/4 v7, 0x0

    goto :goto_7

    .line 724
    .end local v2    # "moved":F
    .end local v3    # "stop":F
    :pswitch_4
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->animate(Z)V

    goto/16 :goto_3

    .line 729
    :pswitch_5
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->isHiddenViewCovered()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 730
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-object v7, v7, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->swipeDirection:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    sget-object v8, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;->LEFT:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    if-ne v7, v8, :cond_1a

    .line 731
    const v7, -0x43dc28f6    # -0.01f

    iput v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    .line 735
    :goto_8
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->requestLayout()V

    .line 736
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->animate(Z)V

    goto/16 :goto_3

    .line 733
    :cond_1a
    const v7, 0x3c23d70a    # 0.01f

    iput v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    goto :goto_8

    .line 738
    :cond_1b
    iget v8, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    iget v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_1c

    const v7, -0x43dc28f6    # -0.01f

    :goto_9
    add-float/2addr v7, v8

    iput v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    .line 739
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->requestLayout()V

    .line 740
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->animate(Z)V

    goto/16 :goto_3

    .line 738
    :cond_1c
    const v7, 0x3c23d70a    # 0.01f

    goto :goto_9

    .line 637
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 967
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-boolean v0, v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->detachedFromList:Z

    if-nez v0, :cond_1

    .line 968
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v3

    .line 976
    :cond_0
    :goto_0
    return v3

    .line 971
    :cond_1
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-boolean v0, v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->consumeClick:Z

    if-eqz v0, :cond_2

    .line 972
    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CLICK:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    const/4 v4, -0x1

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->onViewSwipe(Landroid/widget/ListView;Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;IILde/viktorreiser/toolbox/widget/SwipeableListItem;)Z

    .line 973
    const/4 v3, 0x1

    goto :goto_0

    .line 976
    :cond_2
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStarted:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v3

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 984
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-boolean v0, v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->detachedFromList:Z

    if-nez v0, :cond_1

    .line 985
    invoke-super {p0}, Landroid/widget/FrameLayout;->performLongClick()Z

    move-result v3

    .line 999
    :cond_0
    :goto_0
    return v3

    .line 988
    :cond_1
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStarted:Z

    if-nez v0, :cond_0

    .line 990
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-boolean v0, v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->consumeLongClick:Z

    if-eqz v0, :cond_2

    .line 991
    iput-boolean v6, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLongClicked:Z

    .line 992
    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->LONG_CLICK:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->onViewSwipe(Landroid/widget/ListView;Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;IILde/viktorreiser/toolbox/widget/SwipeableListItem;)Z

    move v3, v6

    .line 993
    goto :goto_0

    .line 994
    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    iput-boolean v6, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLongClicked:Z

    .line 996
    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CANCEL:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->onViewSwipe(Landroid/widget/ListView;Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;IILde/viktorreiser/toolbox/widget/SwipeableListItem;)Z

    move v3, v6

    .line 997
    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 1086
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getChildCount()I

    move-result v0

    .line 1088
    .local v0, "count":I
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    if-nez v1, :cond_2

    if-lez v0, :cond_2

    .line 1089
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    .line 1091
    add-int/lit8 v1, v0, -0x1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 1093
    :cond_2
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1049
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenViewCache:Landroid/view/View;

    if-eq v1, p1, :cond_2

    .line 1050
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 1051
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1052
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1054
    .local v0, "cache":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenViewCache:Landroid/view/View;

    .line 1055
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1056
    if-nez v0, :cond_3

    move-object v1, v2

    .line 1055
    :goto_0
    invoke-direct {v4, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1054
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1057
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1058
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenViewCache:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1059
    iput-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    .line 1062
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    if-ne v1, p1, :cond_1

    .line 1063
    iput-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    .line 1066
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1068
    :cond_2
    return-void

    .line 1056
    .restart local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1075
    if-eqz p1, :cond_1

    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mHiddenView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1076
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOverlayView:Landroid/view/View;

    .line 1077
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 1079
    :cond_1
    return-void
.end method

.method public removeViews(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 1100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setHiddenViewSetup(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;)V
    .locals 2
    .param p1, "setup"    # Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    .prologue
    .line 532
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    if-eqz v0, :cond_0

    .line 533
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Setup already set, you can\'t set another one!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    if-nez p1, :cond_1

    .line 537
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 540
    :cond_1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    .line 541
    return-void
.end method

.method public setPadding(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1108
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    .line 1109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1110
    const-string v2, " does not allow padding parameters! Use inner view for that!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1109
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1112
    :cond_1
    return-void
.end method

.method public swipeDoesntHideListSelector()Z
    .locals 1

    .prologue
    .line 792
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->checkRequirements()V

    .line 793
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-boolean v0, v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->dontHideSelector:Z

    return v0
.end method

.method public swipeOnClick()Z
    .locals 1

    .prologue
    .line 774
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->checkRequirements()V

    .line 775
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-boolean v0, v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->consumeClick:Z

    return v0
.end method

.method public swipeOnLongClick()Z
    .locals 1

    .prologue
    .line 783
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->checkRequirements()V

    .line 784
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    iget-boolean v0, v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->consumeLongClick:Z

    return v0
.end method

.method public swipeStateReset()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 755
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->currentSwipeableHiddenView:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->access$1(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;)Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 756
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    invoke-static {v0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->access$0(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)V

    .line 759
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentPosition:I

    .line 760
    iput-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mCurrentListView:Landroid/widget/ListView;

    .line 761
    iput-boolean v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mStarted:Z

    .line 762
    const/4 v0, 0x0

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F

    .line 763
    iput v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mLastOffset:I

    .line 764
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationStep:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 765
    iput-boolean v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z

    .line 766
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->invalidate()V

    .line 767
    return-void
.end method
