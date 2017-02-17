.class public Lde/viktorreiser/toolbox/widget/SwipeableListView;
.super Landroid/widget/ListView;
.source "SwipeableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static mSelectorRect:Ljava/lang/reflect/Field;


# instance fields
.field private mCachedPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lde/viktorreiser/toolbox/widget/SwipeableListItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCancelSwipeOnFocusLoss:Z

.field private mChangeObserver:Landroid/database/DataSetObserver;

.field private mConsumeClick:Z

.field mConsumeSelection:Z

.field private mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mRestorePosition:I

.field private mStartOffset:I

.field private mStartX:I

.field private mStartY:I

.field private mSwipeStarted:Z

.field private mSwipeablePosition:I

.field private mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

.field private swipeable:Z

.field private transparentView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSelectorRect:Ljava/lang/reflect/Field;

    .line 62
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mSelectorRect"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSelectorRect:Ljava/lang/reflect/Field;

    .line 63
    sget-object v0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSelectorRect:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->swipeable:Z

    .line 69
    iput v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mRestorePosition:I

    .line 77
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    .line 78
    iput v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    .line 80
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeClick:Z

    .line 81
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeSelection:Z

    .line 82
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCancelSwipeOnFocusLoss:Z

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCachedPositions:Ljava/util/Map;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 88
    new-instance v0, Lde/viktorreiser/toolbox/widget/SwipeableListView$1;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView$1;-><init>(Lde/viktorreiser/toolbox/widget/SwipeableListView;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mChangeObserver:Landroid/database/DataSetObserver;

    .line 122
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->initialize()V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->swipeable:Z

    .line 69
    iput v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mRestorePosition:I

    .line 77
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    .line 78
    iput v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    .line 80
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeClick:Z

    .line 81
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeSelection:Z

    .line 82
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCancelSwipeOnFocusLoss:Z

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCachedPositions:Ljava/util/Map;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 88
    new-instance v0, Lde/viktorreiser/toolbox/widget/SwipeableListView$1;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView$1;-><init>(Lde/viktorreiser/toolbox/widget/SwipeableListView;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mChangeObserver:Landroid/database/DataSetObserver;

    .line 127
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->initialize()V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->swipeable:Z

    .line 69
    iput v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mRestorePosition:I

    .line 77
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    .line 78
    iput v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    .line 80
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeClick:Z

    .line 81
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeSelection:Z

    .line 82
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCancelSwipeOnFocusLoss:Z

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCachedPositions:Ljava/util/Map;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 88
    new-instance v0, Lde/viktorreiser/toolbox/widget/SwipeableListView$1;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView$1;-><init>(Lde/viktorreiser/toolbox/widget/SwipeableListView;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mChangeObserver:Landroid/database/DataSetObserver;

    .line 132
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->initialize()V

    .line 133
    return-void
.end method

.method static synthetic access$0(Lde/viktorreiser/toolbox/widget/SwipeableListView;)Lde/viktorreiser/toolbox/widget/SwipeableListItem;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    return-object v0
.end method

.method static synthetic access$1(Lde/viktorreiser/toolbox/widget/SwipeableListView;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    return v0
.end method

.method static synthetic access$2(Lde/viktorreiser/toolbox/widget/SwipeableListView;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    return v0
.end method

.method static synthetic access$3(Lde/viktorreiser/toolbox/widget/SwipeableListView;I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mRestorePosition:I

    return-void
.end method

.method static synthetic access$4(Lde/viktorreiser/toolbox/widget/SwipeableListView;Lde/viktorreiser/toolbox/widget/SwipeableListItem;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    return-void
.end method

.method private cancelSwipe()V
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    if-eqz v0, :cond_0

    .line 462
    sget-object v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CANCEL:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-direct {p0, v0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->sendSwipe(Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;)Z

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    .line 466
    :cond_0
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "intercept"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v4, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mStartX:I

    sub-int/2addr v1, v4

    iput v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mStartOffset:I

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 377
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 378
    if-eqz p2, :cond_2

    .line 379
    invoke-direct {p0, p1}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->setupSwipeableClick(Landroid/view/MotionEvent;)V

    .line 380
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 454
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    iget-boolean v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    :cond_1
    :goto_1
    return v3

    .line 383
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 386
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 389
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    if-eqz v1, :cond_4

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v4, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mStartY:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    int-to-float v4, v4

    .line 391
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    .line 392
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->cancelSwipe()V

    .line 393
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    .line 396
    :cond_4
    if-eqz p2, :cond_8

    .line 397
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    if-eqz v1, :cond_6

    .line 398
    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->MOVE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-direct {p0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->sendSwipe(Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    iput-boolean v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeClick:Z

    iput-boolean v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    .line 402
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    invoke-interface {v1}, Lde/viktorreiser/toolbox/widget/SwipeableListItem;->swipeDoesntHideListSelector()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeSelection:Z

    .line 404
    iget-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeSelection:Z

    if-nez v1, :cond_0

    .line 405
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 406
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 407
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_5
    move v1, v3

    .line 402
    goto :goto_2

    .line 412
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 413
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->cancelSwipe()V

    goto :goto_1

    :cond_7
    move v3, v2

    .line 416
    goto :goto_1

    .line 420
    :cond_8
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    if-nez v1, :cond_9

    .line 422
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    .line 423
    :cond_9
    iget-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    if-eqz v1, :cond_a

    .line 425
    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->MOVE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-direct {p0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->sendSwipe(Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;)Z

    goto/16 :goto_0

    .line 426
    :cond_a
    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->MOVE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-direct {p0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->sendSwipe(Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 428
    iput-boolean v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeClick:Z

    iput-boolean v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    .line 429
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    invoke-interface {v1}, Lde/viktorreiser/toolbox/widget/SwipeableListItem;->swipeDoesntHideListSelector()Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_3
    iput-boolean v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeSelection:Z

    goto/16 :goto_1

    :cond_b
    move v2, v3

    goto :goto_3

    .line 433
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_1

    .line 436
    :cond_d
    if-ne v0, v3, :cond_10

    .line 437
    iget-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    if-eqz v1, :cond_e

    .line 438
    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->STOP:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-direct {p0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->sendSwipe(Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;)Z

    .line 443
    :goto_4
    if-eqz p2, :cond_f

    .line 444
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 440
    :cond_e
    iput-boolean v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeClick:Z

    goto :goto_4

    .line 446
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 448
    :cond_10
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 449
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->cancelSwipe()V

    .line 450
    iput-boolean v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeClick:Z

    .line 451
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_1
.end method

.method private initialize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 365
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 366
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 368
    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 369
    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->setFadingEdgeLength(I)V

    .line 370
    return-void
.end method

.method private restoreSwipe()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 472
    iget v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mRestorePosition:I

    if-eq v0, v8, :cond_0

    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    if-nez v0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v7, v0, v1

    .line 477
    .local v7, "wantedChild":I
    invoke-virtual {p0, v7}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 479
    .local v6, "v":Landroid/view/View;
    if-ltz v7, :cond_2

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 480
    instance-of v0, v6, Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    if-nez v0, :cond_3

    .line 482
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    .line 483
    iput-object v9, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    .line 498
    .end local v6    # "v":Landroid/view/View;
    :goto_1
    iput v8, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mRestorePosition:I

    goto :goto_0

    .line 485
    .restart local v6    # "v":Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    .line 486
    .local v5, "previous":Lde/viktorreiser/toolbox/widget/SwipeableListItem;
    check-cast v6, Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    .end local v6    # "v":Landroid/view/View;
    iput-object v6, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    .line 487
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    invoke-interface {v0}, Lde/viktorreiser/toolbox/widget/SwipeableListItem;->swipeStateReset()V

    .line 488
    iget v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mRestorePosition:I

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    .line 490
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->RESTORE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    iget v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mStartOffset:I

    .line 491
    iget v4, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    move-object v1, p0

    .line 490
    invoke-interface/range {v0 .. v5}, Lde/viktorreiser/toolbox/widget/SwipeableListItem;->onViewSwipe(Landroid/widget/ListView;Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;IILde/viktorreiser/toolbox/widget/SwipeableListItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 492
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCachedPositions:Ljava/util/Map;

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    iget v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mRestorePosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 494
    :cond_4
    iput-object v9, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    goto :goto_1
.end method

.method private sendSwipe(Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;)Z
    .locals 6
    .param p1, "type"    # Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    .prologue
    .line 510
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->swipeable:Z

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    iget v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mStartOffset:I

    iget v4, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lde/viktorreiser/toolbox/widget/SwipeableListItem;->onViewSwipe(Landroid/widget/ListView;Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;IILde/viktorreiser/toolbox/widget/SwipeableListItem;)Z

    move-result v0

    .line 513
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupSwipeableClick(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 528
    iget v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    .line 530
    .local v1, "oldPosition":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mStartX:I

    .line 531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mStartY:I

    .line 532
    iput-boolean v6, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    .line 533
    iput-boolean v6, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeSelection:Z

    .line 534
    iput v6, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mStartOffset:I

    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0, v8, v9}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->pointToPosition(II)I

    move-result v8

    iput v8, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    .line 537
    iget v8, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v4, v8, v9

    .line 538
    .local v4, "wantedChild":I
    invoke-virtual {p0, v4}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 540
    .local v2, "v":Landroid/view/View;
    instance-of v8, v2, Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    if-eqz v8, :cond_2

    check-cast v2, Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    .end local v2    # "v":Landroid/view/View;
    move-object v3, v2

    .line 543
    .local v3, "view":Lde/viktorreiser/toolbox/widget/SwipeableListItem;
    :goto_0
    iget-object v8, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    if-eqz v8, :cond_0

    iget v8, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    if-eq v8, v1, :cond_0

    .line 544
    iget v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    .line 545
    .local v0, "newPosition":I
    iput v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    .line 546
    sget-object v8, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CLOSE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-direct {p0, v8}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->sendSwipe(Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;)Z

    .line 547
    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    .line 550
    .end local v0    # "newPosition":I
    :cond_0
    if-eqz v3, :cond_4

    .line 552
    iput-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    .line 554
    sget-object v5, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->START:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-direct {p0, v5}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->sendSwipe(Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 555
    iput-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    iput-boolean v7, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeClick:Z

    .line 556
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    invoke-interface {v5}, Lde/viktorreiser/toolbox/widget/SwipeableListItem;->swipeDoesntHideListSelector()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeSelection:Z

    .line 563
    :cond_1
    :goto_2
    return-void

    .end local v3    # "view":Lde/viktorreiser/toolbox/widget/SwipeableListItem;
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    move-object v3, v5

    .line 540
    goto :goto_0

    .end local v2    # "v":Landroid/view/View;
    .restart local v3    # "view":Lde/viktorreiser/toolbox/widget/SwipeableListItem;
    :cond_3
    move v5, v7

    .line 556
    goto :goto_1

    .line 560
    :cond_4
    iput-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    .line 561
    const/4 v5, -0x1

    iput v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    goto :goto_2
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeSelection:Z

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {p0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->setPressed(Z)V

    .line 349
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 354
    :cond_0
    :try_start_0
    sget-object v0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSelectorRect:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 360
    return-void

    .line 355
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v0, 0x1

    .line 267
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    if-eqz v1, :cond_3

    .line 268
    iget-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    if-eqz v1, :cond_1

    .line 270
    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeClick:Z

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    invoke-interface {v1}, Lde/viktorreiser/toolbox/widget/SwipeableListItem;->swipeOnLongClick()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->LONG_CLICK:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-direct {p0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->sendSwipe(Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;)Z

    .line 275
    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeClick:Z

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    .line 276
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    invoke-interface {v1}, Lde/viktorreiser/toolbox/widget/SwipeableListItem;->swipeDoesntHideListSelector()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeSelection:Z

    .line 277
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->invalidate()V

    goto :goto_0

    .line 283
    :cond_3
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 335
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->handleTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 217
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->restoreSwipe()V

    .line 221
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p3, :cond_1

    .line 236
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;

    .line 237
    .local v0, "adapter":Lde/viktorreiser/toolbox/widget/SectionListAdapter;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p2}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->makeSectionInvisibleIfFirstInList(I)V

    .line 240
    :cond_0
    return-void

    .line 222
    .end local v0    # "adapter":Lde/viktorreiser/toolbox/widget/SectionListAdapter;
    :cond_1
    invoke-virtual {p0, v2}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 224
    .local v1, "child":Landroid/view/View;
    instance-of v5, v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    if-eqz v5, :cond_2

    move-object v4, v1

    .line 225
    check-cast v4, Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    .line 226
    .local v4, "swipeable":Lde/viktorreiser/toolbox/widget/SwipeableListItem;
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCachedPositions:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 228
    .local v3, "previousPosition":Ljava/lang/Integer;
    if-nez v3, :cond_3

    .line 229
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCachedPositions:Ljava/util/Map;

    add-int v6, v2, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .end local v3    # "previousPosition":Ljava/lang/Integer;
    .end local v4    # "swipeable":Lde/viktorreiser/toolbox/widget/SwipeableListItem;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    .restart local v3    # "previousPosition":Ljava/lang/Integer;
    .restart local v4    # "swipeable":Lde/viktorreiser/toolbox/widget/SwipeableListItem;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int v6, v2, p2

    if-eq v5, v6, :cond_2

    .line 231
    invoke-interface {v4}, Lde/viktorreiser/toolbox/widget/SwipeableListItem;->swipeStateReset()V

    .line 232
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCachedPositions:Ljava/util/Map;

    add-int v6, v2, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 247
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 249
    :cond_0
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->cancelSwipe()V

    .line 251
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->handleTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowFocusChanged(Z)V

    .line 317
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCancelSwipeOnFocusLoss:Z

    if-eqz v0, :cond_0

    .line 318
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->cancelSwipe()V

    .line 320
    :cond_0
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v0, 0x0

    .line 294
    iget-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mConsumeClick:Z

    if-eqz v1, :cond_0

    .line 305
    :goto_0
    return v0

    .line 299
    :cond_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    invoke-interface {v1}, Lde/viktorreiser/toolbox/widget/SwipeableListItem;->swipeOnClick()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CLICK:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-direct {p0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->sendSwipe(Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;)Z

    .line 301
    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    goto :goto_0

    .line 305
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 141
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    if-eqz v2, :cond_0

    .line 142
    iget-boolean v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z

    if-eqz v2, :cond_3

    .line 144
    iget v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I

    iput v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mRestorePosition:I

    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mChangeObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 156
    :cond_1
    if-eqz p1, :cond_2

    .line 158
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mChangeObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 163
    :cond_2
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 164
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-nez v2, :cond_4

    .line 165
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 166
    const-string v3, "Section List should have FrameLayout as parent!"

    .line 165
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_3
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    invoke-interface {v2}, Lde/viktorreiser/toolbox/widget/SwipeableListItem;->swipeStateReset()V

    .line 147
    const/4 v2, 0x0

    iput-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    goto :goto_0

    .line 168
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_4
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->transparentView:Landroid/view/View;

    if-eqz v2, :cond_5

    move-object v2, v1

    .line 169
    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->transparentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_5
    move-object v2, p1

    .line 171
    check-cast v2, Lde/viktorreiser/toolbox/widget/SectionListAdapter;

    .line 172
    invoke-virtual {v2}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->getTransparentSectionView()Landroid/view/View;

    move-result-object v2

    .line 171
    iput-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->transparentView:Landroid/view/View;

    .line 173
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 174
    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 173
    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 175
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout;

    .end local v1    # "parent":Landroid/view/ViewParent;
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->transparentView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-interface {p1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 177
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->transparentView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    return-void
.end method

.method public setCancelSwipeOnFocusLoss(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCancelSwipeOnFocusLoss:Z

    .line 116
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 259
    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "l":Landroid/view/View$OnCreateContextMenuListener;
    :cond_0
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 260
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 189
    if-eqz p1, :cond_0

    if-ne p1, p0, :cond_1

    .line 190
    :cond_0
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 209
    :goto_0
    return-void

    .line 193
    :cond_1
    new-instance v0, Lde/viktorreiser/toolbox/widget/SwipeableListView$2;

    invoke-direct {v0, p0, p1}, Lde/viktorreiser/toolbox/widget/SwipeableListView$2;-><init>(Lde/viktorreiser/toolbox/widget/SwipeableListView;Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method public setSwipeable(Z)V
    .locals 0
    .param p1, "swipeable"    # Z

    .prologue
    .line 519
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView;->swipeable:Z

    .line 520
    return-void
.end method
