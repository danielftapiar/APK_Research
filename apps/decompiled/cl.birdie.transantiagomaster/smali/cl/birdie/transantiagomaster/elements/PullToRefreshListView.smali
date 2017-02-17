.class public Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;,
        Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$OnRefreshListener;,
        Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnGlobalLayoutListener;,
        Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnItemClickListener;,
        Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnItemLongClickListener;,
        Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$elements$PullToRefreshListView$State:[I

.field private static measuredHeaderHeight:I


# instance fields
.field private bounceBackHeader:Z

.field private flipAnimation:Landroid/view/animation/RotateAnimation;

.field private hasResetHeader:Z

.field private header:Landroid/widget/RelativeLayout;

.field private headerContainer:Landroid/widget/LinearLayout;

.field private headerPadding:I

.field private image:Landroid/widget/ImageView;

.field private lastUpdated:J

.field private lastUpdatedDateFormat:Ljava/text/SimpleDateFormat;

.field private lastUpdatedText:Ljava/lang/String;

.field private lastUpdatedTextView:Landroid/widget/TextView;

.field private lockScrollWhileRefreshing:Z

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private onRefreshListener:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$OnRefreshListener;

.field private previousY:F

.field private pullToRefreshText:Ljava/lang/String;

.field private refreshingText:Ljava/lang/String;

.field private releaseToRefreshText:Ljava/lang/String;

.field private reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private scrollbarEnabled:Z

.field private showLastUpdatedText:Z

.field private spinner:Landroid/widget/ProgressBar;

.field private state:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

.field private text:Landroid/widget/TextView;


# direct methods
.method private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$elements$PullToRefreshListView$State()[I
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->$SWITCH_TABLE$cl$birdie$transantiagomaster$elements$PullToRefreshListView$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->values()[Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->REFRESHING:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->$SWITCH_TABLE$cl$birdie$transantiagomaster$elements$PullToRefreshListView$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lastUpdatedDateFormat:Ljava/text/SimpleDateFormat;

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lastUpdated:J

    .line 90
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->init()V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lastUpdatedDateFormat:Ljava/text/SimpleDateFormat;

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lastUpdated:J

    .line 95
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->init()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lastUpdatedDateFormat:Ljava/text/SimpleDateFormat;

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lastUpdated:J

    .line 100
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->init()V

    .line 101
    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->state:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    return-object v0
.end method

.method static synthetic access$1(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->scrollbarEnabled:Z

    return v0
.end method

.method static synthetic access$10(I)V
    .locals 0

    .prologue
    .line 58
    sput p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->measuredHeaderHeight:I

    return-void
.end method

.method static synthetic access$11$291b7658(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->hasResetHeader:Z

    return-void
.end method

.method static synthetic access$12(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$13(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->measuredHeaderHeight:I

    return v0
.end method

.method static synthetic access$3(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;I)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setHeaderPadding(I)V

    return-void
.end method

.method static synthetic access$5(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->bounceBackHeader:Z

    return v0
.end method

.method static synthetic access$6$291b7658(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->bounceBackHeader:Z

    return-void
.end method

.method static synthetic access$7(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->resetHeader()V

    return-void
.end method

.method static synthetic access$8(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;)V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setState(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;)V

    return-void
.end method

.method static synthetic access$9(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private bounceBackHeader()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 336
    iget-object v3, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->state:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    sget-object v4, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->REFRESHING:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    if-ne v3, v4, :cond_0

    .line 337
    iget-object v3, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int v9, v3, v4

    .line 340
    .local v9, "yTranslate":I
    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 344
    int-to-float v8, v9

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    .line 340
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 346
    .local v0, "bounceAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 347
    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 348
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 349
    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 350
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fb33333    # 1.4f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 351
    new-instance v1, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;

    invoke-direct {v1, p0, v9}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;-><init>(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 353
    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 354
    return-void

    .line 338
    .end local v0    # "bounceAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v9    # "yTranslate":I
    :cond_0
    iget-object v3, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    neg-int v3, v3

    iget-object v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    sub-int v9, v3, v4

    goto :goto_0
.end method

.method private init()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v12, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 221
    invoke-virtual {p0, v12}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 223
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f030058

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    .line 224
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f08013b

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    .line 225
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    const v5, 0x7f08013f

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->text:Landroid/widget/TextView;

    .line 226
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    const v5, 0x7f080140

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lastUpdatedTextView:Landroid/widget/TextView;

    .line 227
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    const v5, 0x7f08013c

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->image:Landroid/widget/ImageView;

    .line 228
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    const v5, 0x7f08013d

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->spinner:Landroid/widget/ProgressBar;

    .line 230
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f06013c

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->pullToRefreshText:Ljava/lang/String;

    .line 231
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f06013d

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->releaseToRefreshText:Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f06013e

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->refreshingText:Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f06013f

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lastUpdatedText:Ljava/lang/String;

    .line 235
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    .line 236
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 237
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0xfa

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 238
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 240
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 241
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 242
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 243
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 245
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 246
    sget-object v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setState(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;)V

    .line 247
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->scrollbarEnabled:Z

    .line 249
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 250
    new-instance v1, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnGlobalLayoutListener;

    invoke-direct {v1, p0, v12}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnGlobalLayoutListener;-><init>(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;B)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 252
    new-instance v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnItemClickListener;

    invoke-direct {v0, p0, v12}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnItemClickListener;-><init>(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;B)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 253
    new-instance v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnItemLongClickListener;

    invoke-direct {v0, p0, v12}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnItemLongClickListener;-><init>(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;B)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 254
    return-void
.end method

.method private resetHeader()V
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setHeaderPadding(I)V

    .line 359
    sget-object v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setState(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;)V

    .line 368
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->bounceBackHeader:Z

    goto :goto_0

    .line 366
    :cond_1
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->bounceBackHeader()V

    goto :goto_0
.end method

.method private setHeaderPadding(I)V
    .locals 3
    .param p1, "padding"    # I

    .prologue
    const/4 v2, 0x0

    .line 257
    iput p1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->headerPadding:I

    .line 259
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 260
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    int-to-float v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 261
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    return-void
.end method

.method private setState(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;)V
    .locals 8
    .param p1, "state"    # Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x0

    .line 378
    :goto_0
    iput-object p1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->state:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    .line 379
    invoke-static {}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->$SWITCH_TABLE$cl$birdie$transantiagomaster$elements$PullToRefreshListView$State()[I

    move-result-object v0

    invoke-virtual {p1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 410
    :cond_0
    :goto_1
    return-void

    .line 381
    :pswitch_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->pullToRefreshText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-boolean v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->showLastUpdatedText:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lastUpdated:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lastUpdatedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lastUpdatedText:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lastUpdatedDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lastUpdated:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 393
    :pswitch_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->releaseToRefreshText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 399
    :pswitch_2
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->refreshingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lastUpdated:J

    .line 402
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->onRefreshListener:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$OnRefreshListener;

    if-nez v0, :cond_1

    .line 403
    sget-object p1, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    goto/16 :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->onRefreshListener:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$OnRefreshListener;->onRefresh()V

    goto :goto_1

    .line 379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final onRefreshComplete()V
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->state:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    .line 180
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->resetHeader()V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lastUpdated:J

    .line 182
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 414
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 416
    iget-boolean v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->hasResetHeader:Z

    if-nez v0, :cond_1

    .line 417
    sget v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->measuredHeaderHeight:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->state:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    sget-object v1, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->REFRESHING:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    if-eq v0, v1, :cond_0

    .line 418
    sget v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->measuredHeaderHeight:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setHeaderPadding(I)V

    .line 421
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->hasResetHeader:Z

    .line 423
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v6, -0x40800000    # -1.0f

    .line 266
    iget-boolean v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->lockScrollWhileRefreshing:Z

    if-eqz v4, :cond_1

    .line 267
    iget-object v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->state:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    sget-object v5, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->REFRESHING:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v3

    .line 271
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 332
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 275
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->previousY:F

    goto :goto_1

    .line 279
    :pswitch_1
    iget v3, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->previousY:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->state:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    sget-object v4, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    if-eq v3, v4, :cond_3

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_4

    .line 280
    :cond_3
    invoke-static {}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->$SWITCH_TABLE$cl$birdie$transantiagomaster$elements$PullToRefreshListView$State()[I

    move-result-object v3

    iget-object v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->state:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 292
    :cond_4
    :goto_2
    iput v6, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->previousY:F

    goto :goto_1

    .line 282
    :pswitch_2
    sget-object v3, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->REFRESHING:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    invoke-direct {p0, v3}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setState(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;)V

    .line 283
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->bounceBackHeader()V

    goto :goto_2

    .line 288
    :pswitch_3
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->resetHeader()V

    goto :goto_2

    .line 298
    :pswitch_4
    iget v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->previousY:F

    add-float/2addr v4, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_5

    iget v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->previousY:F

    sub-float/2addr v4, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 299
    :cond_5
    const-string v4, "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

    const-string v5, "OK"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->previousY:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_2

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 303
    .local v2, "y":F
    iget v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->previousY:F

    sub-float v0, v2, v4

    .line 304
    .local v0, "diff":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_6

    const v4, 0x3fd9999a    # 1.7f

    div-float/2addr v0, v4

    .line 305
    :cond_6
    iput v2, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->previousY:F

    .line 307
    iget v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->headerPadding:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 309
    .local v1, "newHeaderPadding":I
    iget v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->headerPadding:I

    if-eq v1, v4, :cond_2

    iget-object v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->state:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    sget-object v5, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->REFRESHING:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    if-eq v4, v5, :cond_2

    .line 310
    invoke-direct {p0, v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setHeaderPadding(I)V

    .line 312
    iget-object v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->state:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    sget-object v5, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    if-ne v4, v5, :cond_7

    iget v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->headerPadding:I

    if-lez v4, :cond_7

    .line 313
    sget-object v4, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    invoke-direct {p0, v4}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setState(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;)V

    .line 315
    iget-object v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 316
    iget-object v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->image:Landroid/widget/ImageView;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 317
    :cond_7
    iget-object v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->state:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    sget-object v5, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->headerPadding:I

    if-gez v4, :cond_0

    .line 318
    sget-object v4, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    invoke-direct {p0, v4}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setState(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;)V

    .line 320
    iget-object v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 321
    iget-object v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->image:Landroid/widget/ImageView;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 280
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 105
    .local p1, "onItemClickListener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 106
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 110
    .local p1, "onItemLongClickListener":Landroid/widget/AdapterView$OnItemLongClickListener;, "Landroid/widget/AdapterView$OnItemLongClickListener;"
    iput-object p1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 111
    return-void
.end method

.method public final setOnRefreshListener(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$OnRefreshListener;)V
    .locals 0
    .param p1, "onRefreshListener"    # Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$OnRefreshListener;

    .prologue
    .line 120
    iput-object p1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->onRefreshListener:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$OnRefreshListener;

    .line 121
    return-void
.end method
