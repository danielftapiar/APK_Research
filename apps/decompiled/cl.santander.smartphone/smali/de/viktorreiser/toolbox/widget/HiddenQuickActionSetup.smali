.class public Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;
.super Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;
.source "HiddenQuickActionSetup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;,
        Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$OnQuickActionListener;,
        Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;
    }
.end annotation


# instance fields
.field private mClickedActionView:Landroid/view/View;

.field private mCloseSwipeableOnQuickAction:Z

.field private mImageHeight:I

.field private mImageWidth:I

.field private mIndicatorDelay:I

.field private mIndicatorImage:Landroid/widget/ImageView;

.field private mIndicatorPopup:Landroid/widget/PopupWindow;

.field private mIndicatorSpacing:Landroid/graphics/Rect;

.field private mIndicatorStart:Ljava/lang/Runnable;

.field private mIndicatorTitle:Landroid/widget/TextView;

.field private mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

.field private mPopupDelayHandler:Landroid/os/Handler;

.field private mQuickActionListener:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$OnQuickActionListener;

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 133
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;-><init>()V

    .line 64
    iput v4, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mImageWidth:I

    .line 67
    iput v4, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mImageHeight:I

    .line 79
    const/16 v0, 0x12c

    iput v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorDelay:I

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mPopupDelayHandler:Landroid/os/Handler;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mCloseSwipeableOnQuickAction:Z

    .line 134
    new-instance v0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-direct {v0, p0, p1}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;-><init>(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;Landroid/content/Context;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    .line 135
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 136
    const/4 v2, -0x1

    invoke-direct {v1, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 135
    invoke-virtual {v0, v1}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v0, v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->setOrientation(I)V

    .line 138
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->setGravity(I)V

    .line 139
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->setPadding(IIII)V

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p1, v1}, Lde/viktorreiser/toolbox/util/AndroidUtils;->dipToPixel(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorSpacing:Landroid/graphics/Rect;

    .line 143
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->setupQuickActionTouchListener()V

    .line 144
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->setupShowPopupStart()V

    .line 146
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorPopup:Landroid/widget/PopupWindow;

    .line 147
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorPopup:Landroid/widget/PopupWindow;

    const v1, 0x1030004

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 148
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->setupDefaultIndicator()V

    .line 150
    return-void
.end method

.method static synthetic access$0(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mClickedActionView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$10(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mClickedActionView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorDelay:I

    return v0
.end method

.method static synthetic access$3(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorStart:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mPopupDelayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mCloseSwipeableOnQuickAction:Z

    return v0
.end method

.method static synthetic access$6(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$OnQuickActionListener;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mQuickActionListener:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$OnQuickActionListener;

    return-object v0
.end method

.method static synthetic access$7(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$8(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    return-object v0
.end method

.method static synthetic access$9(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorSpacing:Landroid/graphics/Rect;

    return-object v0
.end method

.method private setupDefaultIndicator()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, -0x1

    const/high16 v7, 0x41c80000    # 25.0f

    .line 482
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v4}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 484
    .local v2, "popupContent":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v4}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 483
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v4}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 487
    .local v0, "c":Landroid/content/Context;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 488
    invoke-static {v0, v7}, Lde/viktorreiser/toolbox/util/AndroidUtils;->dipToPixel(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v7}, Lde/viktorreiser/toolbox/util/AndroidUtils;->dipToPixel(Landroid/content/Context;F)I

    move-result v5

    .line 487
    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 489
    .local v1, "imageParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v0, v4}, Lde/viktorreiser/toolbox/util/AndroidUtils;->dipToPixel(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 490
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 492
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 493
    const/4 v4, -0x2

    .line 492
    invoke-direct {v3, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 494
    .local v3, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 496
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v5}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorImage:Landroid/widget/ImageView;

    .line 497
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v5}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorTitle:Landroid/widget/TextView;

    .line 498
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 500
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 504
    return-void
.end method

.method private setupQuickActionTouchListener()V
    .locals 1

    .prologue
    .line 507
    new-instance v0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;-><init>(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 558
    return-void
.end method

.method private setupShowPopupStart()V
    .locals 1

    .prologue
    .line 561
    new-instance v0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;-><init>(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorStart:Ljava/lang/Runnable;

    .line 588
    return-void
.end method


# virtual methods
.method public addAction(III)Z
    .locals 2
    .param p1, "actionId"    # I
    .param p2, "actionDescriptionResId"    # I
    .param p3, "drawableResId"    # I

    .prologue
    .line 345
    .line 347
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 349
    :goto_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 345
    invoke-virtual {p0, p1, v0, v1}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->addAction(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 347
    :cond_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v0}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 348
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public addAction(IILandroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "actionId"    # I
    .param p2, "actionDescriptionResId"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 365
    .line 367
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 365
    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->addAction(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 367
    :cond_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v0}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 368
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public addAction(ILjava/lang/String;I)Z
    .locals 1
    .param p1, "actionId"    # I
    .param p2, "actionDescription"    # Ljava/lang/String;
    .param p3, "drawableResId"    # I

    .prologue
    .line 385
    .line 386
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v0}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 385
    invoke-virtual {p0, p1, p2, v0}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->addAction(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public addAction(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Z
    .locals 10
    .param p1, "actionId"    # I
    .param p2, "actionDescription"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v8, 0x0

    .line 402
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v7}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getChildCount()I

    move-result v0

    .line 404
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 410
    new-instance v3, Landroid/widget/ImageView;

    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v7}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 412
    .local v3, "iv":Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 413
    iget v7, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mImageWidth:I

    iget v9, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mImageHeight:I

    .line 412
    invoke-direct {v4, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 414
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 416
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    new-instance v2, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;

    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;-><init>(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;)V

    .line 420
    .local v2, "info":Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;
    iput p1, v2, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;->id:I

    .line 421
    iput-object p2, v2, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;->description:Ljava/lang/String;

    .line 423
    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v7}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 424
    .local v6, "rl":Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 425
    const/4 v7, -0x1

    .line 424
    invoke-direct {v5, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 426
    .local v5, "params2":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 427
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 429
    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 430
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 432
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v7, v6}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->addView(Landroid/view/View;)V

    .line 434
    const/4 v7, 0x1

    .end local v2    # "info":Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;
    .end local v3    # "iv":Landroid/widget/ImageView;
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "params2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "rl":Landroid/widget/RelativeLayout;
    :goto_1
    return v7

    .line 405
    :cond_0
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v7, v1}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;

    iget v7, v7, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;->id:I

    if-ne p1, v7, :cond_1

    move v7, v8

    .line 406
    goto :goto_1

    .line 404
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHiddenView()Landroid/view/View;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    return-object v0
.end method

.method public removeAction(I)Z
    .locals 3
    .param p1, "actionId"    # I

    .prologue
    .line 447
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getChildCount()I

    move-result v0

    .line 449
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 456
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 450
    :cond_0
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v2, v1}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;

    iget v2, v2, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 451
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v2, v1}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->removeViewAt(I)V

    .line 452
    const/4 v2, 0x1

    goto :goto_1

    .line 449
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v0, p1}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->setBackgroundColor(I)V

    .line 183
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v0}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->invalidate()V

    .line 184
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 160
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v0, p1}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v0}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->invalidate()V

    .line 162
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v0, p1}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->setBackgroundResource(I)V

    .line 172
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v0}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->invalidate()V

    .line 173
    return-void
.end method

.method public setCloseSwipableOnQuickActionClick(Z)V
    .locals 0
    .param p1, "close"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mCloseSwipeableOnQuickAction:Z

    .line 232
    return-void
.end method

.method public setImageSize(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, -0x1

    .line 206
    if-eq p1, v3, :cond_0

    if-ne p2, v3, :cond_1

    .line 207
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "width or height can\'t be FILL_PARENT!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    :cond_1
    iput p1, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mImageWidth:I

    .line 211
    iput p2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mImageHeight:I

    .line 212
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 214
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_2

    .line 221
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->requestLayout()V

    .line 222
    return-void

    .line 216
    :cond_2
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v3, v1}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 215
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 217
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 218
    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setIndicatorDelay(I)V
    .locals 0
    .param p1, "delay"    # I

    .prologue
    .line 241
    iput p1, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorDelay:I

    .line 242
    return-void
.end method

.method public setIndicatorImageSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, -0x1

    .line 308
    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width or height can\'t be FILL_PARENT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 313
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 314
    return-void
.end method

.method public setIndicatorLayout(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 255
    if-nez p1, :cond_0

    .line 256
    invoke-virtual {p0, v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->setIndicatorLayout(Landroid/view/View;)V

    .line 262
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 259
    const-string v2, "layout_inflater"

    .line 258
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 260
    .local v0, "li":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->setIndicatorLayout(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setIndicatorLayout(Landroid/view/View;)V
    .locals 4
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->setupDefaultIndicator()V

    .line 297
    :goto_0
    return-void

    .line 278
    :cond_0
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, "image":Landroid/view/View;
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 281
    .local v1, "title":Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 282
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "image":Landroid/view/View;
    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorImage:Landroid/widget/ImageView;

    .line 288
    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 289
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "title":Landroid/view/View;
    iput-object v1, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorTitle:Landroid/widget/TextView;

    .line 295
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 284
    .restart local v0    # "image":Landroid/view/View;
    .restart local v1    # "title":Landroid/view/View;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 285
    const-string v3, "Indicator layout doesn\'t define image view with android ID icon!"

    .line 284
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    .end local v0    # "image":Landroid/view/View;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 292
    const-string v3, "Indicator layout doesn\'t define text view with android ID title!"

    .line 291
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setIndicatorSpacing(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 329
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorSpacing:Landroid/graphics/Rect;

    .line 330
    return-void
.end method

.method public setOnQuickActionListener(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$OnQuickActionListener;)V
    .locals 0
    .param p1, "l"    # Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$OnQuickActionListener;

    .prologue
    .line 466
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mQuickActionListener:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$OnQuickActionListener;

    .line 467
    return-void
.end method

.method public setViewPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->setPadding(IIII)V

    .line 194
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    invoke-virtual {v0}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->invalidate()V

    .line 195
    return-void
.end method
