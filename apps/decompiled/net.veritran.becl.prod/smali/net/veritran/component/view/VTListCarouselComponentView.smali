.class public Lnet/veritran/component/view/VTListCarouselComponentView;
.super Landroid/widget/RelativeLayout;
.source "VTListCarouselComponentView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTListCarouselComponentView"


# instance fields
.field private activity:Lnet/veritran/VTCommonActivity;

.field private backgroundColor:Ljava/lang/Integer;

.field private backgroundImage:Ljava/lang/String;

.field private carrousel3d:Z

.field private cycle:Z

.field fixedBottomMargin:F

.field private fixedHeight:I

.field fixedLeftMargin:F

.field fixedRightMargin:F

.field fixedTopMargin:F

.field private fixedWidth:I

.field private gallery:Lnet/veritran/component/view/CustomGallery;

.field private imageWidth:I

.field private indicatorLocation:Ljava/lang/String;

.field measuredBottomMargin:I

.field measuredLeftMargin:I

.field measuredRightMargin:I

.field measuredTopMargin:I

.field private msgProgressBar:Landroid/widget/TextView;

.field private msgProgressBarExtra:Landroid/widget/TextView;

.field private pageIndicatorView:Lnet/veritran/component/view/VTPageIndicatorView;

.field percentageBottomMargin:F

.field private percentageHeight:F

.field percentageLeftMargin:F

.field percentageRightMargin:F

.field percentageTopMargin:F

.field private percentageWidth:F

.field private pixelsHeight:I

.field private pixelsWidth:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private showSingleItem:Z

.field private spacingFactor:F

.field stackLayer:Landroid/widget/LinearLayout;

.field private toExecuteWhenMeasured:Ljava/lang/Runnable;

.field private transitionCarouselTimer:Ljava/util/Timer;

.field private transitionTime:I

.field private viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;Ljava/lang/String;ZIFLjava/lang/Runnable;)V
    .locals 13
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;
    .param p2, "style"    # Ljava/lang/String;
    .param p3, "cycle"    # Z
    .param p4, "transitionTime"    # I
    .param p5, "spacingFactor"    # F
    .param p6, "toExecuteWhenMeasured"    # Ljava/lang/Runnable;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v8, 0x0

    iput-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->transitionCarouselTimer:Ljava/util/Timer;

    .line 46
    const/high16 v8, -0x40800000    # -1.0f

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageWidth:F

    .line 47
    const/high16 v8, -0x40800000    # -1.0f

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageHeight:F

    .line 53
    const/4 v8, 0x0

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageLeftMargin:F

    .line 54
    const/4 v8, 0x0

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageTopMargin:F

    .line 55
    const/4 v8, 0x0

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageRightMargin:F

    .line 56
    const/4 v8, 0x0

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageBottomMargin:F

    .line 58
    const/high16 v8, -0x40800000    # -1.0f

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedLeftMargin:F

    .line 59
    const/high16 v8, -0x40800000    # -1.0f

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedRightMargin:F

    .line 60
    const/high16 v8, -0x40800000    # -1.0f

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedTopMargin:F

    .line 61
    const/high16 v8, -0x40800000    # -1.0f

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedBottomMargin:F

    .line 63
    const/4 v8, 0x0

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredLeftMargin:I

    .line 64
    const/4 v8, 0x0

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredRightMargin:I

    .line 65
    const/4 v8, 0x0

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredTopMargin:I

    .line 66
    const/4 v8, 0x0

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredBottomMargin:I

    .line 73
    const/4 v8, -0x1

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedWidth:I

    .line 74
    const/4 v8, -0x1

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedHeight:I

    .line 76
    const/4 v8, 0x0

    iput-boolean v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->carrousel3d:Z

    .line 77
    const/4 v8, 0x0

    iput-boolean v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->showSingleItem:Z

    .line 79
    const/high16 v8, 0x3e800000    # 0.25f

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->spacingFactor:F

    .line 81
    const/4 v8, 0x0

    iput-boolean v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->cycle:Z

    .line 82
    const/4 v8, 0x0

    iput v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->transitionTime:I

    .line 91
    iput-object p1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->activity:Lnet/veritran/VTCommonActivity;

    .line 92
    move/from16 v0, p3

    iput-boolean v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->cycle:Z

    .line 93
    move/from16 v0, p4

    iput v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->transitionTime:I

    .line 94
    move/from16 v0, p5

    iput v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->spacingFactor:F

    .line 96
    if-eqz p2, :cond_2

    const-string v8, "COVERFLOW"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "HIGHLIGHTED"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->carrousel3d:Z

    .line 97
    if-eqz p2, :cond_3

    const-string v8, "SINGLE"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->showSingleItem:Z

    .line 99
    iget-boolean v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->carrousel3d:Z

    if-eqz v8, :cond_4

    .line 101
    sget-object v7, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->COVERFLOW:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    .line 103
    .local v7, "type":Lnet/veritran/component/view/VTCarousel3d$CarrouselType;
    const-string v8, "HIGHLIGHTED"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 105
    sget-object v7, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->HIGHLIGHTED:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    .line 108
    :cond_1
    new-instance v8, Lnet/veritran/component/view/VTCarousel3d;

    invoke-direct {v8, p1, v7}, Lnet/veritran/component/view/VTCarousel3d;-><init>(Landroid/content/Context;Lnet/veritran/component/view/VTCarousel3d$CarrouselType;)V

    iput-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    .line 115
    .end local v7    # "type":Lnet/veritran/component/view/VTCarousel3d$CarrouselType;
    :goto_2
    iget-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lnet/veritran/component/view/CustomGallery;->setAnimationDuration(I)V

    .line 117
    iget-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lnet/veritran/component/view/CustomGallery;->setCallbackDuringFling(Z)V

    .line 119
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 120
    .local v1, "lpgal":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    invoke-virtual {p0, v8, v1}, Lnet/veritran/component/view/VTListCarouselComponentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->stackLayer:Landroid/widget/LinearLayout;

    .line 123
    iget-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->stackLayer:Landroid/widget/LinearLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 125
    .local v6, "sp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xd

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 126
    iget-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->stackLayer:Landroid/widget/LinearLayout;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 127
    iget-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->stackLayer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8, v6}, Lnet/veritran/component/view/VTListCarouselComponentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v8, Landroid/widget/ProgressBar;

    const/4 v9, 0x0

    const v10, 0x101007a

    invoke-direct {v8, p1, v9, v10}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->progressBar:Landroid/widget/ProgressBar;

    .line 130
    iget-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->progressBar:Landroid/widget/ProgressBar;

    const v9, 0x1e240

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setId(I)V

    .line 131
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v3, "p":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->stackLayer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->msgProgressBar:Landroid/widget/TextView;

    .line 141
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v8

    invoke-virtual {v8}, Lnet/veritran/VTUserApplicationSmart;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 143
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v9

    const-string v10, "$string"

    const-string v11, "appPleaseWait"

    invoke-virtual {v9, v10, v11}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 141
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "msgPleaseWait":Ljava/lang/String;
    iget-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->msgProgressBar:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->msgProgressBar:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/16 v12, 0xa

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 153
    iget-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->msgProgressBar:Landroid/widget/TextView;

    const v9, 0x12d687    # 1.729997E-39f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setId(I)V

    .line 155
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    .local v4, "pp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->stackLayer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->msgProgressBar:Landroid/widget/TextView;

    invoke-virtual {v8, v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lnet/veritran/component/view/CustomGallery;->setClickable(Z)V

    .line 164
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->msgProgressBarExtra:Landroid/widget/TextView;

    .line 167
    iget-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->msgProgressBarExtra:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/16 v12, 0xa

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 172
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 174
    .local v5, "ppp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v8, 0x3

    const v9, 0x12d687    # 1.729997E-39f

    invoke-virtual {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 175
    const/16 v8, 0xe

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 179
    iget-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->stackLayer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->msgProgressBarExtra:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    move-object/from16 v0, p6

    iput-object v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->toExecuteWhenMeasured:Ljava/lang/Runnable;

    .line 184
    return-void

    .line 96
    .end local v1    # "lpgal":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "msgPleaseWait":Ljava/lang/String;
    .end local v3    # "p":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "pp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "ppp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "sp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 97
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 110
    :cond_4
    new-instance v8, Lnet/veritran/component/view/CustomGallery;

    invoke-direct {v8, p1}, Lnet/veritran/component/view/CustomGallery;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    .line 112
    iget-object v8, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lnet/veritran/component/view/CustomGallery;->setSpacing(I)V

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lnet/veritran/component/view/VTListCarouselComponentView;)Lnet/veritran/component/view/CustomGallery;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/view/VTListCarouselComponentView;

    .prologue
    .line 28
    iget-object v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    return-object v0
.end method

.method static synthetic access$100(Lnet/veritran/component/view/VTListCarouselComponentView;)Lnet/veritran/VTCommonActivity;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/view/VTListCarouselComponentView;

    .prologue
    .line 28
    iget-object v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->activity:Lnet/veritran/VTCommonActivity;

    return-object v0
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredTopMargin:I

    return v0
.end method

.method public getPixelsHeight()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsHeight:I

    return v0
.end method

.method public getPixelsWidth()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsWidth:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageWidth:F

    return v0
.end method

.method public locateIndicator(I)V
    .locals 4
    .param p1, "countItems"    # I

    .prologue
    const/4 v3, -0x2

    .line 626
    iget-object v1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->pageIndicatorView:Lnet/veritran/component/view/VTPageIndicatorView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->indicatorLocation:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->indicatorLocation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 627
    iget-object v1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->pageIndicatorView:Lnet/veritran/component/view/VTPageIndicatorView;

    iget-object v2, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    invoke-virtual {v2}, Lnet/veritran/component/view/CustomGallery;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lnet/veritran/component/view/VTPageIndicatorView;->setCountItems(II)V

    .line 629
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 631
    .local v0, "sp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->indicatorLocation:Ljava/lang/String;

    const-string v2, "down"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 633
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 643
    :cond_0
    :goto_0
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 645
    iget-object v1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->pageIndicatorView:Lnet/veritran/component/view/VTPageIndicatorView;

    invoke-virtual {p0, v1, v0}, Lnet/veritran/component/view/VTListCarouselComponentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    .end local v0    # "sp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void

    .line 635
    .restart local v0    # "sp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->indicatorLocation:Ljava/lang/String;

    const-string v2, "up"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 637
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 639
    :cond_3
    iget-object v1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->indicatorLocation:Ljava/lang/String;

    const-string v2, "center"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 546
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageLeftMargin:F

    .line 547
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredLeftMargin:I

    .line 548
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageRightMargin:F

    .line 549
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredRightMargin:I

    .line 550
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageTopMargin:F

    .line 551
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredTopMargin:I

    .line 552
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageBottomMargin:F

    .line 553
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredBottomMargin:I

    .line 554
    return-void

    .line 547
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 549
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 551
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 553
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 360
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListCarouselComponentView;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 361
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-super {v0, v1, v2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    const-string v18, "VTListCarouselComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListCarouselComponentView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " onMeasure ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] -> widthMeasureSpec: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";heightMeasureSpec:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTListCarouselComponentView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 369
    .local v13, "mw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 370
    .local v10, "mh":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 371
    .local v16, "sw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 372
    .local v14, "sh":I
    invoke-static {v13}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v12

    .line 373
    .local v12, "modeWidth":Ljava/lang/String;
    invoke-static {v10}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v11

    .line 374
    .local v11, "modeHeight":Ljava/lang/String;
    const-string v18, "VTListCarouselComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListCarouselComponentView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " onMeasure ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] -> width("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "):"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";height("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "):"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListCarouselComponentView;->measureAbsoluteMargins()V

    .line 380
    const-string v18, "VTListCarouselComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListCarouselComponentView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " onMeasure  ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] -> leftMargin:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredLeftMargin:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";rightMargin:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredRightMargin:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";topMargin:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredTopMargin:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";bottomMargin:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredBottomMargin:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredLeftMargin:I

    move/from16 v18, v0

    sub-int v18, v16, v18

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredRightMargin:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsWidth:I

    .line 385
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredTopMargin:I

    move/from16 v18, v0

    sub-int v18, v14, v18

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->measuredBottomMargin:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsHeight:I

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageWidth:F

    move/from16 v18, v0

    const/high16 v19, -0x40800000    # -1.0f

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_2

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageWidth:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsWidth:I

    .line 391
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageHeight:F

    move/from16 v18, v0

    const/high16 v19, -0x40800000    # -1.0f

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_3

    .line 392
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageHeight:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsHeight:I

    .line 395
    :cond_3
    const-string v18, "VTListCarouselComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListCarouselComponentView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " onMeasure  ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] -> pixelsWidth:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";pixelsHeight:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListCarouselComponentView;->getChildCount()I

    move-result v5

    .line 400
    .local v5, "childCount":I
    move-object/from16 v0, p0

    iget v3, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsHeight:I

    .line 401
    .local v3, "availableHeight":I
    const/4 v8, 0x0

    .line 402
    .local v8, "maxWidth":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_5

    .line 403
    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 405
    .local v9, "measurecSpecHeight":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lnet/veritran/component/view/VTListCarouselComponentView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 406
    .local v17, "v":Landroid/view/View;
    const-string v18, "VTListCarouselComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListCarouselComponentView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Measuring "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v18, "VTListCarouselComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListCarouselComponentView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Measuring "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "{"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "}"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2, v9}, Lnet/veritran/component/view/VTListCarouselComponentView;->measureChild(Landroid/view/View;II)V

    .line 410
    const-string v18, "VTListCarouselComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListCarouselComponentView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " measuredWidth:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";measuredHeight:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 411
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 410
    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v3, v3, v18

    .line 413
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v8, :cond_4

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 402
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 415
    .end local v9    # "measurecSpecHeight":I
    .end local v17    # "v":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageWidth:F

    move/from16 v18, v0

    const/high16 v19, -0x40800000    # -1.0f

    cmpl-float v18, v18, v19

    if-nez v18, :cond_6

    .line 416
    move-object/from16 v0, p0

    iput v8, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsWidth:I

    .line 419
    :cond_6
    move-object/from16 v0, p0

    iput v8, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->imageWidth:I

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->toExecuteWhenMeasured:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 423
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListCarouselComponentView;->getHandler()Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->toExecuteWhenMeasured:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->carrousel3d:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 428
    move-object/from16 v0, p0

    iget v6, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsWidth:I

    .line 429
    .local v6, "galleryWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->imageWidth:I

    move/from16 v18, v0

    sub-int v18, v6, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->imageWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->spacingFactor:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v15, v0

    .line 430
    .local v15, "spacing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lnet/veritran/component/view/CustomGallery;->setSpacing(I)V

    .line 431
    const-string v18, "VTListCarouselComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "spacing : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .end local v6    # "galleryWidth":I
    .end local v15    # "spacing":I
    :cond_8
    const-string v18, "VTListCarouselComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListCarouselComponentView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " onMeasure  ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] -> pixelsWidth:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";availableHeight:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-super {v0, v1, v3}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 439
    invoke-super/range {p0 .. p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->backgroundColor:Ljava/lang/Integer;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->backgroundColor:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTListCarouselComponentView;->setBackgroundColor(I)V

    .line 443
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->backgroundImage:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->backgroundImage:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 444
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->backgroundImage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsWidth:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 445
    .local v4, "b":Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListCarouselComponentView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTListCarouselComponentView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 447
    .end local v4    # "b":Landroid/graphics/Bitmap;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->pageIndicatorView:Lnet/veritran/component/view/VTPageIndicatorView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->pageIndicatorView:Lnet/veritran/component/view/VTPageIndicatorView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListCarouselComponentView;->pixelsWidth:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lnet/veritran/component/view/VTPageIndicatorView;->measure(II)V

    goto/16 :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 586
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onScrollChanged(IIII)V

    .line 587
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->restartSessionTimeout()V

    .line 588
    return-void
.end method

.method public setAdapter(Lnet/veritran/MobileArrayAdapter;)V
    .locals 2
    .param p1, "mobileArrayAdapter"    # Lnet/veritran/MobileArrayAdapter;

    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    .line 592
    iget-boolean v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->carrousel3d:Z

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {p1, v1, v1}, Lnet/veritran/MobileArrayAdapter;->setZoomModifier(FF)V

    .line 597
    :cond_0
    iget-boolean v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->showSingleItem:Z

    invoke-virtual {p1, v0}, Lnet/veritran/MobileArrayAdapter;->setShowSingleItem(Z)V

    .line 599
    iget-object v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/CustomGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 600
    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "backgroundImage"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->backgroundImage:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 510
    iput-object p1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->backgroundColor:Ljava/lang/Integer;

    .line 511
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 615
    iput-object p1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->backgroundImage:Ljava/lang/String;

    .line 616
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 1
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 516
    if-nez p1, :cond_0

    .line 517
    const-string p1, "center"

    .line 518
    :cond_0
    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTListCarouselComponentView;->setGravity(I)V

    .line 525
    :goto_0
    return-void

    .line 520
    :cond_1
    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTListCarouselComponentView;->setGravity(I)V

    goto :goto_0

    .line 523
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTListCarouselComponentView;->setGravity(I)V

    goto :goto_0
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 532
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 582
    iput p1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedHeight:I

    .line 583
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 188
    const-string v0, "VTListCarouselComponentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFixedMargins("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iput p1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedLeftMargin:F

    .line 190
    iput p2, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedTopMargin:F

    .line 191
    iput p3, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedRightMargin:F

    .line 192
    iput p4, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedBottomMargin:F

    .line 193
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 568
    iput p1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->fixedWidth:I

    .line 569
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 541
    iput p1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageHeight:F

    .line 542
    return-void
.end method

.method public setIndicatorLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "indicatorLocation"    # Ljava/lang/String;

    .prologue
    .line 654
    iput-object p1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->indicatorLocation:Ljava/lang/String;

    .line 655
    return-void
.end method

.method public setOnItemChangeListener(Lnet/veritran/component/VTImplicitOnItemSelectedListener;)V
    .locals 1
    .param p1, "vtImplicitOnItemSelectedListener"    # Lnet/veritran/component/VTImplicitOnItemSelectedListener;

    .prologue
    .line 609
    iget-object v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/CustomGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 610
    return-void
.end method

.method public setOnItemClickListener(Lnet/veritran/component/VTImplicitOnClickListener;)V
    .locals 1
    .param p1, "vtImplicitOnClickListener"    # Lnet/veritran/component/VTImplicitOnClickListener;

    .prologue
    .line 604
    iget-object v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/CustomGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 605
    return-void
.end method

.method public setPageIndicatorView(Lnet/veritran/component/view/VTPageIndicatorView;)V
    .locals 0
    .param p1, "pageIndicatorView"    # Lnet/veritran/component/view/VTPageIndicatorView;

    .prologue
    .line 650
    iput-object p1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->pageIndicatorView:Lnet/veritran/component/view/VTPageIndicatorView;

    .line 651
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 222
    iput p1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageLeftMargin:F

    .line 223
    iput p2, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageTopMargin:F

    .line 224
    iput p3, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageRightMargin:F

    .line 225
    iput p4, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageBottomMargin:F

    .line 226
    return-void
.end method

.method public setProgressMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->msgProgressBarExtra:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method

.method public setSelectedIndex(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "cantElements"    # I

    .prologue
    const/4 v3, 0x0

    .line 197
    iget-object v1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    if-eqz v1, :cond_0

    .line 199
    iget-boolean v1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->cycle:Z

    if-eqz v1, :cond_1

    .line 200
    const v1, 0x7fffffff

    mul-int/lit8 v2, p2, 0x2

    div-int/2addr v1, v2

    mul-int/2addr v1, p2

    add-int v0, v1, p1

    .line 202
    .local v0, "newIndex":I
    iget-object v1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    invoke-virtual {v1, v0, v3}, Lnet/veritran/component/view/CustomGallery;->setSelection(IZ)V

    .line 208
    .end local v0    # "newIndex":I
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    invoke-virtual {v1, p1, v3}, Lnet/veritran/component/view/CustomGallery;->setSelection(IZ)V

    goto :goto_0
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 536
    iput p1, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->percentageWidth:F

    .line 537
    return-void
.end method

.method public showProgress(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 242
    iget-object v4, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;

    if-eqz p1, :cond_2

    move v0, v2

    :goto_0
    invoke-virtual {v4, v0}, Lnet/veritran/component/view/CustomGallery;->setVisibility(I)V

    .line 243
    iget-object v4, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_3

    move v0, v3

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 244
    iget-object v4, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->msgProgressBar:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move v0, v3

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->msgProgressBarExtra:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    if-nez p1, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->transitionTime:I

    if-lez v0, :cond_1

    .line 249
    new-instance v1, Lnet/veritran/component/view/VTListCarouselComponentView$1;

    invoke-direct {v1, p0}, Lnet/veritran/component/view/VTListCarouselComponentView$1;-><init>(Lnet/veritran/component/view/VTListCarouselComponentView;)V

    .line 347
    .local v1, "timerGoToNextIndex":Ljava/util/TimerTask;
    iget-object v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->transitionCarouselTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->transitionCarouselTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->transitionCarouselTimer:Ljava/util/Timer;

    .line 353
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->transitionCarouselTimer:Ljava/util/Timer;

    .line 354
    iget-object v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->transitionCarouselTimer:Ljava/util/Timer;

    iget v2, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->transitionTime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iget v4, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->transitionTime:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 356
    .end local v1    # "timerGoToNextIndex":Ljava/util/TimerTask;
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 242
    goto :goto_0

    :cond_3
    move v0, v2

    .line 243
    goto :goto_1

    :cond_4
    move v0, v2

    .line 244
    goto :goto_2

    :cond_5
    move v3, v2

    .line 245
    goto :goto_3
.end method

.method public stopCarouselTransitionTimer()V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->transitionCarouselTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->transitionCarouselTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/component/view/VTListCarouselComponentView;->transitionCarouselTimer:Ljava/util/Timer;

    .line 624
    :cond_0
    return-void
.end method
