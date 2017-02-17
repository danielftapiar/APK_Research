.class public Lcom/markupartist/android/widget/PullToRefreshListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/markupartist/android/widget/PullToRefreshListView$OnClickRefreshListener;,
        Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final PULL_TO_REFRESH:I = 0x2

.field private static final REFRESHING:I = 0x4

.field private static final RELEASE_TO_REFRESH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PullToRefreshListView"

.field private static final TAP_TO_REFRESH:I = 0x1


# instance fields
.field private mBounceHack:Z

.field private mCurrentScrollState:I

.field private mFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastMotionY:I

.field private mOnRefreshListener:Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mRefreshOriginalTopPadding:I

.field private mRefreshState:I

.field private mRefreshView:Landroid/widget/RelativeLayout;

.field private mRefreshViewHeight:I

.field private mRefreshViewImage:Landroid/widget/ImageView;

.field private mRefreshViewLastUpdated:Landroid/widget/TextView;

.field private mRefreshViewProgress:Landroid/widget/ProgressBar;

.field private mRefreshViewText:Landroid/widget/TextView;

.field private mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private pull_to_refresh:Ljava/lang/String;

.field private pull_to_refresh_pull:Ljava/lang/String;

.field private pull_to_refresh_refreshing:Ljava/lang/String;

.field private pull_to_refresh_release:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/markupartist/android/widget/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/markupartist/android/widget/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    invoke-direct {p0, p1}, Lcom/markupartist/android/widget/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/markupartist/android/widget/PullToRefreshListView;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    return v0
.end method

.method private applyHeaderPadding(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 225
    .local v2, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 245
    return-void

    .line 226
    :cond_0
    iget v4, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->isVerticalFadingEdgeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/markupartist/android/widget/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 231
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    float-to-int v0, v4

    .line 235
    .local v0, "historicalY":I
    iget v4, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mLastMotionY:I

    sub-int v4, v0, v4

    .line 236
    iget v5, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewHeight:I

    .line 235
    sub-int/2addr v4, v5

    int-to-double v4, v4

    .line 236
    const-wide v6, 0x3ffb333333333333L    # 1.7

    .line 235
    div-double/2addr v4, v6

    double-to-int v3, v4

    .line 238
    .local v3, "topPadding":I
    iget-object v4, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    .line 239
    iget-object v5, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v5

    .line 241
    iget-object v6, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v6

    .line 242
    iget-object v7, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v7

    .line 238
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 225
    .end local v0    # "historicalY":I
    .end local v3    # "topPadding":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v12, 0xfa

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 92
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/markupartist/android/widget/pulltorefresh/R$string;->pull_to_refresh_tap_label:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->pull_to_refresh:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/markupartist/android/widget/pulltorefresh/R$string;->pull_to_refresh_release_label:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->pull_to_refresh_release:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/markupartist/android/widget/pulltorefresh/R$string;->pull_to_refresh_pull_label:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->pull_to_refresh_pull:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/markupartist/android/widget/pulltorefresh/R$string;->pull_to_refresh_refreshing_label:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->pull_to_refresh_refreshing:Ljava/lang/String;

    .line 98
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    .line 100
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 98
    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 101
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 102
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 103
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 104
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    .line 106
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 104
    iput-object v5, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 107
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 108
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 109
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 112
    const-string v0, "layout_inflater"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    .line 114
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    .line 115
    sget v1, Lcom/markupartist/android/widget/pulltorefresh/R$layout;->pull_to_refresh_header:I

    const/4 v2, 0x0

    .line 114
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    .line 117
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/markupartist/android/widget/pulltorefresh/R$id;->pull_to_refresh_text:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/markupartist/android/widget/pulltorefresh/R$id;->pull_to_refresh_image:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/markupartist/android/widget/pulltorefresh/R$id;->pull_to_refresh_progress:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 120
    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewProgress:Landroid/widget/ProgressBar;

    .line 123
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/markupartist/android/widget/pulltorefresh/R$id;->pull_to_refresh_updated_at:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    iput-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 126
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/markupartist/android/widget/PullToRefreshListView$OnClickRefreshListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/markupartist/android/widget/PullToRefreshListView$OnClickRefreshListener;-><init>(Lcom/markupartist/android/widget/PullToRefreshListView;Lcom/markupartist/android/widget/PullToRefreshListView$OnClickRefreshListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshOriginalTopPadding:I

    .line 129
    iput v3, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    .line 131
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/markupartist/android/widget/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 133
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 135
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/markupartist/android/widget/PullToRefreshListView;->measureView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewHeight:I

    .line 137
    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 281
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 282
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 283
    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    .line 284
    const/4 v5, -0x2

    .line 282
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 288
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 287
    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 289
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 291
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 292
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 296
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 297
    return-void

    .line 294
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private resetHeader()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 262
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v1, :cond_0

    .line 263
    iput v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    .line 265
    invoke-direct {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->resetHeaderPadding()V

    .line 268
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->pull_to_refresh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    sget v1, Lcom/markupartist/android/widget/pulltorefresh/R$drawable;->ic_pulltorefresh_arrow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 274
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 277
    :cond_0
    return-void
.end method

.method private resetHeaderPadding()V
    .locals 5

    .prologue
    .line 251
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    .line 252
    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    .line 253
    iget v2, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshOriginalTopPadding:I

    .line 254
    iget-object v3, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    .line 255
    iget-object v4, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    .line 251
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 256
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/markupartist/android/widget/PullToRefreshListView;->setSelection(I)V

    .line 143
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 371
    const-string v0, "PullToRefreshListView"

    const-string v1, "onRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mOnRefreshListener:Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mOnRefreshListener:Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;->onRefresh()V

    .line 376
    :cond_0
    return-void
.end method

.method public onRefreshComplete()V
    .locals 2

    .prologue
    .line 391
    const-string v0, "PullToRefreshListView"

    const-string v1, "onRefreshComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->resetHeader()V

    .line 397
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    if-lez v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->invalidateViews()V

    .line 399
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/markupartist/android/widget/PullToRefreshListView;->setSelection(I)V

    .line 401
    :cond_0
    return-void
.end method

.method public onRefreshComplete(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "lastUpdated"    # Ljava/lang/CharSequence;

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/markupartist/android/widget/PullToRefreshListView;->setLastUpdated(Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->onRefreshComplete()V

    .line 385
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 304
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mCurrentScrollState:I

    if-ne v0, v2, :cond_6

    .line 305
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v1, :cond_6

    .line 306
    if-nez p2, :cond_5

    .line 307
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewHeight:I

    add-int/lit8 v1, v1, 0x14

    if-ge v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v0

    if-ltz v0, :cond_3

    .line 310
    :cond_0
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v4, :cond_3

    .line 311
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->pull_to_refresh_release:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 313
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 314
    iput v4, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    .line 337
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 341
    :cond_2
    return-void

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewHeight:I

    add-int/lit8 v1, v1, 0x14

    if-ge v0, v1, :cond_1

    .line 316
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v3, :cond_1

    .line 317
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->pull_to_refresh_pull:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v2, :cond_4

    .line 319
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 320
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 322
    :cond_4
    iput v3, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    goto :goto_0

    .line 325
    :cond_5
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    invoke-direct {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->resetHeader()V

    goto :goto_0

    .line 328
    :cond_6
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mCurrentScrollState:I

    if-ne v0, v3, :cond_7

    .line 329
    if-nez p2, :cond_7

    .line 330
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v1, :cond_7

    .line 331
    invoke-virtual {p0, v2}, Lcom/markupartist/android/widget/PullToRefreshListView;->setSelection(I)V

    .line 332
    iput-boolean v2, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mBounceHack:Z

    goto :goto_0

    .line 333
    :cond_7
    iget-boolean v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mBounceHack:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mCurrentScrollState:I

    if-ne v0, v3, :cond_1

    .line 334
    invoke-virtual {p0, v2}, Lcom/markupartist/android/widget/PullToRefreshListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 345
    iput p2, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mCurrentScrollState:I

    .line 347
    iget v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mCurrentScrollState:I

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mBounceHack:Z

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 354
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 188
    .local v0, "y":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mBounceHack:Z

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 218
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 192
    :pswitch_0
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->isVerticalScrollBarEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    invoke-virtual {p0, v3}, Lcom/markupartist/android/widget/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v1, v4, :cond_0

    .line 196
    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewHeight:I

    if-ge v1, v2, :cond_2

    .line 197
    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    if-ltz v1, :cond_3

    .line 198
    :cond_2
    iget v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 200
    iput v4, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    .line 201
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->prepareForRefresh()V

    .line 202
    invoke-virtual {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->onRefresh()V

    goto :goto_0

    .line 203
    :cond_3
    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewHeight:I

    if-lt v1, v2, :cond_4

    .line 204
    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    if-gtz v1, :cond_0

    .line 206
    :cond_4
    invoke-direct {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->resetHeader()V

    .line 207
    invoke-virtual {p0, v3}, Lcom/markupartist/android/widget/PullToRefreshListView;->setSelection(I)V

    goto :goto_0

    .line 212
    :pswitch_1
    iput v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mLastMotionY:I

    goto :goto_0

    .line 215
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/markupartist/android/widget/PullToRefreshListView;->applyHeaderPadding(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public prepareForRefresh()V
    .locals 2

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->resetHeaderPadding()V

    .line 359
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->pull_to_refresh_refreshing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    const/4 v0, 0x4

    iput v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I

    .line 368
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/markupartist/android/widget/PullToRefreshListView;->setSelection(I)V

    .line 150
    return-void
.end method

.method public setLastUpdated(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "lastUpdated"    # Ljava/lang/CharSequence;

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnRefreshListener(Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;)V
    .locals 0
    .param p1, "onRefreshListener"    # Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mOnRefreshListener:Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;

    .line 170
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 161
    return-void
.end method

.method public setTexts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tap_to_refresh"    # Ljava/lang/String;
    .param p2, "pull_to_refresh"    # Ljava/lang/String;
    .param p3, "release_to_refresh"    # Ljava/lang/String;
    .param p4, "loading"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->pull_to_refresh:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->pull_to_refresh_pull:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->pull_to_refresh_release:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/markupartist/android/widget/PullToRefreshListView;->pull_to_refresh_refreshing:Ljava/lang/String;

    .line 88
    return-void
.end method
