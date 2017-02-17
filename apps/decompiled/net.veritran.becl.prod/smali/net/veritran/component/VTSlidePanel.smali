.class public Lnet/veritran/component/VTSlidePanel;
.super Lnet/veritran/component/VTUIComponentContainer;
.source "VTSlidePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;
    }
.end annotation


# static fields
.field public static final SLIDERMENU_ALIGN_BOTTOM:I = 0x1

.field public static final SLIDERMENU_ALIGN_LEFT:I = 0x2

.field public static final SLIDERMENU_ALIGN_RIGHT:I = 0x3

.field public static final SLIDERMENU_ALIGN_TOP:I = 0x0

.field public static final SLIDERSTATE_CLOSED:I = 0x0

.field public static final SLIDERSTATE_OPENED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VTSlidePanel"


# instance fields
.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/component/VTUIComponent;",
            ">;"
        }
    .end annotation
.end field

.field private currentX:I

.field private currentY:I

.field private headerPixels:I

.field private measuredHeight:I

.field private measuredWidth:I

.field private name:Ljava/lang/String;

.field private orientation:Ljava/lang/String;

.field private sliderAlign:I

.field private sliderState:I

.field private transitionTime:F

.field private transtitionType:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

.field private view:Lnet/veritran/component/view/VTVisualAreaSlidingView;

.field private xCoordClosed:I

.field private xCoordOpened:I

.field private yCoordClosed:I

.field private yCoordOpened:I


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 2
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponentContainer;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lnet/veritran/component/VTSlidePanel;->sliderAlign:I

    .line 46
    iput v1, p0, Lnet/veritran/component/VTSlidePanel;->sliderState:I

    .line 48
    iput v1, p0, Lnet/veritran/component/VTSlidePanel;->headerPixels:I

    .line 56
    sget-object v0, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->LINEAR:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    iput-object v0, p0, Lnet/veritran/component/VTSlidePanel;->transtitionType:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/VTSlidePanel;->children:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTSlidePanel;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 106
    return-void
.end method

.method private componentWillFinishAllChildren(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 683
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 685
    check-cast v3, Landroid/view/ViewGroup;

    .line 687
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 689
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 691
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lnet/veritran/component/VTSlidePanel;->componentWillFinishAllChildren(Landroid/view/View;)V

    .line 687
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 695
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    invoke-static {p1}, Lnet/veritran/utils/VTAndroidUtils;->getUIComponentFromView(Landroid/view/View;)Lnet/veritran/component/VTUIComponent;

    move-result-object v2

    .line 697
    .local v2, "relatedComponent":Lnet/veritran/component/VTUIComponent;
    if-eqz v2, :cond_1

    .line 699
    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->componentWillFinish()V

    .line 701
    :cond_1
    return-void
.end method

.method private createLinearAnimation(JIIZZ)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "duration"    # J
    .param p3, "toX"    # I
    .param p4, "toY"    # I
    .param p5, "increase"    # Z
    .param p6, "decrease"    # Z

    .prologue
    const/4 v3, 0x0

    .line 419
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lnet/veritran/component/VTSlidePanel;->currentX:I

    sub-int v1, p3, v1

    int-to-float v1, v1

    iget v2, p0, Lnet/veritran/component/VTSlidePanel;->currentY:I

    sub-int v2, p4, v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 421
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 423
    if-eqz p5, :cond_1

    .line 425
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 432
    :cond_0
    :goto_0
    return-object v0

    .line 427
    :cond_1
    if-eqz p6, :cond_0

    .line 429
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method private createTransparencyAnimation(JIIZ)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "duration"    # J
    .param p3, "toX"    # I
    .param p4, "toY"    # I
    .param p5, "isOpening"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 437
    const/4 v0, 0x0

    .line 439
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    if-eqz p5, :cond_0

    .line 441
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/AlphaAnimation;
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 448
    .restart local v0    # "anim":Landroid/view/animation/AlphaAnimation;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 450
    new-instance v1, Lnet/veritran/component/VTSlidePanel$2;

    invoke-direct {v1, p0, p5, p3, p4}, Lnet/veritran/component/VTSlidePanel$2;-><init>(Lnet/veritran/component/VTSlidePanel;ZII)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 481
    return-object v0

    .line 445
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/AlphaAnimation;
    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v0    # "anim":Landroid/view/animation/AlphaAnimation;
    goto :goto_0
.end method

.method private getAnimation(IIZ)Landroid/view/animation/Animation;
    .locals 15
    .param p1, "toX"    # I
    .param p2, "toY"    # I
    .param p3, "isOpening"    # Z

    .prologue
    .line 486
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel;->transtitionType:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    sget-object v1, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->TRANSPARENCY:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    if-eq v0, v1, :cond_2

    .line 488
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel;->transtitionType:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    sget-object v1, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->INCREASE:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    if-ne v0, v1, :cond_0

    const/4 v6, 0x1

    .line 489
    .local v6, "increase":Z
    :goto_0
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel;->transtitionType:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    sget-object v1, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->DECREASE:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    if-ne v0, v1, :cond_1

    const/4 v7, 0x1

    .line 491
    .local v7, "decrease":Z
    :goto_1
    iget v0, p0, Lnet/veritran/component/VTSlidePanel;->transitionTime:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v2, v0

    move-object v1, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lnet/veritran/component/VTSlidePanel;->createLinearAnimation(JIIZZ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 495
    .end local v6    # "increase":Z
    .end local v7    # "decrease":Z
    :goto_2
    return-object v0

    .line 488
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 489
    .restart local v6    # "increase":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 495
    .end local v6    # "increase":Z
    :cond_2
    iget v0, p0, Lnet/veritran/component/VTSlidePanel;->transitionTime:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v10, v0

    move-object v9, p0

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct/range {v9 .. v14}, Lnet/veritran/component/VTSlidePanel;->createTransparencyAnimation(JIIZ)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_2
.end method

.method private initSlidePanel(Z)V
    .locals 12
    .param p1, "createChildPanel"    # Z

    .prologue
    const/16 v7, 0x2710

    const/high16 v11, -0x80000000

    const/4 v10, -0x1

    .line 117
    invoke-direct {p0}, Lnet/veritran/component/VTSlidePanel;->initSlidePanelOpenSizeAndStatus()V

    .line 119
    const/4 v2, 0x0

    .line 120
    .local v2, "panel":Lnet/veritran/component/VTUIComponent;
    if-eqz p1, :cond_6

    .line 121
    new-instance v3, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;

    invoke-direct {v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;-><init>()V

    .line 122
    .local v3, "panelComponent":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredWidth()I

    move-result v6

    if-ltz v6, :cond_0

    .line 123
    const-string v6, "width"

    const-string v8, "100"

    invoke-virtual {v3, v6, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredHeight()I

    move-result v6

    if-ltz v6, :cond_1

    .line 125
    const-string v6, "height"

    const-string v8, "100"

    invoke-virtual {v3, v6, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_1
    const-string v6, "scroll"

    const-string v8, "no"

    invoke-virtual {v3, v6, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;-><init>()V

    .line 132
    .local v0, "componentList":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    iget-object v6, p0, Lnet/veritran/component/VTSlidePanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v6, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSlidePanel;

    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSlidePanel;->getConfigurationVisualComponentsList()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v4

    .line 133
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 134
    iget-object v6, p0, Lnet/veritran/component/VTSlidePanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v6, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSlidePanel;

    .line 135
    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSlidePanel;->getConfigurationVisualComponentsList()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v5

    .line 136
    .local v5, "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v5    # "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_2
    invoke-virtual {v3, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->setConfigurationVisualComponentsList(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;)V

    .line 140
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v6

    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v3, v8, v9}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v6

    const-string v8, "SlidePanelMenu"

    invoke-virtual {v6, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v6

    new-instance v8, Lnet/veritran/component/VTSlidePanel$1;

    invoke-direct {v8, p0}, Lnet/veritran/component/VTSlidePanel$1;-><init>(Lnet/veritran/component/VTSlidePanel;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p0, v2}, Lnet/veritran/component/VTSlidePanel;->addChild(Lnet/veritran/component/VTUIComponent;)V

    .line 158
    .end local v0    # "componentList":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    .end local v1    # "i":I
    .end local v3    # "panelComponent":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;
    .end local v4    # "size":I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredHeight()I

    move-result v6

    if-eq v6, v10, :cond_4

    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredWidth()I

    move-result v6

    if-ne v6, v10, :cond_5

    :cond_4
    if-eqz v2, :cond_5

    .line 159
    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredWidth()I

    move-result v6

    if-ne v6, v10, :cond_7

    move v6, v7

    :goto_2
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 160
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredHeight()I

    move-result v9

    if-ne v9, v10, :cond_8

    :goto_3
    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 159
    invoke-virtual {v8, v6, v7}, Landroid/view/View;->measure(II)V

    .line 161
    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lnet/veritran/component/VTSlidePanel;->setMeasuredHeight(I)V

    .line 162
    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0, v6}, Lnet/veritran/component/VTSlidePanel;->setMeasuredWidth(I)V

    .line 163
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v6

    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->setPixelsHeight(I)V

    .line 164
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v6

    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->setPixelsWidth(I)V

    .line 167
    :cond_5
    invoke-direct {p0}, Lnet/veritran/component/VTSlidePanel;->initSlidePanelHeaderSizeAndPosition()V

    .line 168
    return-void

    .line 154
    :cond_6
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getChildCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 155
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lnet/veritran/component/VTSlidePanel;->getChildAt(I)Lnet/veritran/component/VTUIComponent;

    move-result-object v2

    goto :goto_1

    .line 159
    :cond_7
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredWidth()I

    move-result v6

    goto :goto_2

    .line 160
    :cond_8
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredHeight()I

    move-result v7

    goto :goto_3
.end method

.method private initSlidePanelHeaderSizeAndPosition()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/high16 v12, 0x42c80000    # 100.0f

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 344
    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenWidth()I

    move-result v6

    .line 345
    .local v6, "screenW":I
    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenHeight()I

    move-result v5

    .line 347
    .local v5, "screenH":I
    iget-object v8, p0, Lnet/veritran/component/VTSlidePanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "headerSize"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 348
    .local v7, "slideClosedSize":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    .line 350
    const/4 v2, -0x1

    .line 351
    .local v2, "headerPerc":I
    const/4 v1, -0x1

    .line 353
    .local v1, "headerFixed":I
    :try_start_0
    const-string v8, "%"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    float-to-int v2, v8

    .line 357
    :goto_0
    if-ne v2, v10, :cond_0

    .line 359
    :try_start_1
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Lnet/veritran/VTCommonActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    float-to-int v1, v8

    .line 364
    :cond_0
    :goto_1
    if-ne v1, v10, :cond_1

    if-ne v2, v10, :cond_1

    .line 365
    const/16 v2, 0x64

    .line 368
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredWidth()I

    move-result v4

    .line 369
    .local v4, "panelPixelWidth":I
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredHeight()I

    move-result v3

    .line 370
    .local v3, "panelPixelHeight":I
    iget v8, p0, Lnet/veritran/component/VTSlidePanel;->sliderAlign:I

    if-eqz v8, :cond_2

    iget v8, p0, Lnet/veritran/component/VTSlidePanel;->sliderAlign:I

    if-ne v8, v13, :cond_5

    .line 371
    :cond_2
    if-eq v2, v10, :cond_4

    .line 372
    mul-int v8, v2, v3

    int-to-float v8, v8

    div-float/2addr v8, v12

    float-to-int v8, v8

    iput v8, p0, Lnet/veritran/component/VTSlidePanel;->headerPixels:I

    .line 383
    :cond_3
    :goto_2
    const-string v8, "VTSlidePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "panelPixelWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";panelPixelHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v8, "VTSlidePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "headerPixels="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lnet/veritran/component/VTSlidePanel;->headerPixels:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget v8, p0, Lnet/veritran/component/VTSlidePanel;->sliderAlign:I

    if-nez v8, :cond_7

    .line 386
    sub-int v8, v6, v4

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lnet/veritran/component/VTSlidePanel;->xCoordClosed:I

    iput v8, p0, Lnet/veritran/component/VTSlidePanel;->xCoordOpened:I

    .line 387
    iput v11, p0, Lnet/veritran/component/VTSlidePanel;->yCoordOpened:I

    .line 388
    iget v8, p0, Lnet/veritran/component/VTSlidePanel;->headerPixels:I

    sub-int v8, v3, v8

    neg-int v8, v8

    iput v8, p0, Lnet/veritran/component/VTSlidePanel;->yCoordClosed:I

    .line 403
    :goto_3
    iget v8, p0, Lnet/veritran/component/VTSlidePanel;->sliderState:I

    if-ne v8, v13, :cond_a

    .line 404
    iget v8, p0, Lnet/veritran/component/VTSlidePanel;->xCoordOpened:I

    iget v9, p0, Lnet/veritran/component/VTSlidePanel;->yCoordOpened:I

    invoke-virtual {p0, v8, v9}, Lnet/veritran/component/VTSlidePanel;->setCurrentXY(II)V

    .line 408
    :goto_4
    const-string v8, "VTSlidePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lnet/veritran/component/VTSlidePanel;->currentX:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";initY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lnet/veritran/component/VTSlidePanel;->currentY:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->defineVisibility()V

    .line 415
    return-void

    .line 354
    .end local v3    # "panelPixelHeight":I
    .end local v4    # "panelPixelWidth":I
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 360
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 361
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    goto/16 :goto_1

    .line 373
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "panelPixelHeight":I
    .restart local v4    # "panelPixelWidth":I
    :cond_4
    if-eq v1, v10, :cond_3

    .line 374
    iput v1, p0, Lnet/veritran/component/VTSlidePanel;->headerPixels:I

    goto/16 :goto_2

    .line 377
    :cond_5
    if-eq v2, v10, :cond_6

    .line 378
    mul-int v8, v2, v4

    int-to-float v8, v8

    div-float/2addr v8, v12

    float-to-int v8, v8

    iput v8, p0, Lnet/veritran/component/VTSlidePanel;->headerPixels:I

    goto/16 :goto_2

    .line 379
    :cond_6
    if-eq v1, v10, :cond_3

    .line 380
    iput v1, p0, Lnet/veritran/component/VTSlidePanel;->headerPixels:I

    goto/16 :goto_2

    .line 389
    :cond_7
    iget v8, p0, Lnet/veritran/component/VTSlidePanel;->sliderAlign:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    .line 390
    iput v11, p0, Lnet/veritran/component/VTSlidePanel;->xCoordOpened:I

    .line 391
    iget v8, p0, Lnet/veritran/component/VTSlidePanel;->headerPixels:I

    sub-int v8, v4, v8

    neg-int v8, v8

    iput v8, p0, Lnet/veritran/component/VTSlidePanel;->xCoordClosed:I

    .line 392
    sub-int v8, v5, v3

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lnet/veritran/component/VTSlidePanel;->yCoordClosed:I

    iput v8, p0, Lnet/veritran/component/VTSlidePanel;->yCoordOpened:I

    goto :goto_3

    .line 393
    :cond_8
    iget v8, p0, Lnet/veritran/component/VTSlidePanel;->sliderAlign:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_9

    .line 394
    sub-int v8, v6, v4

    iput v8, p0, Lnet/veritran/component/VTSlidePanel;->xCoordOpened:I

    .line 395
    iget v8, p0, Lnet/veritran/component/VTSlidePanel;->headerPixels:I

    sub-int v8, v6, v8

    iput v8, p0, Lnet/veritran/component/VTSlidePanel;->xCoordClosed:I

    .line 396
    sub-int v8, v5, v3

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lnet/veritran/component/VTSlidePanel;->yCoordClosed:I

    iput v8, p0, Lnet/veritran/component/VTSlidePanel;->yCoordOpened:I

    goto/16 :goto_3

    .line 398
    :cond_9
    sub-int v8, v6, v4

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lnet/veritran/component/VTSlidePanel;->xCoordClosed:I

    iput v8, p0, Lnet/veritran/component/VTSlidePanel;->xCoordOpened:I

    .line 399
    sub-int v8, v5, v3

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lnet/veritran/component/VTSlidePanel;->yCoordOpened:I

    .line 400
    iget v8, p0, Lnet/veritran/component/VTSlidePanel;->headerPixels:I

    sub-int v8, v5, v8

    iput v8, p0, Lnet/veritran/component/VTSlidePanel;->yCoordClosed:I

    goto/16 :goto_3

    .line 406
    :cond_a
    iget v8, p0, Lnet/veritran/component/VTSlidePanel;->xCoordClosed:I

    iget v9, p0, Lnet/veritran/component/VTSlidePanel;->yCoordClosed:I

    invoke-virtual {p0, v8, v9}, Lnet/veritran/component/VTSlidePanel;->setCurrentXY(II)V

    goto/16 :goto_4
.end method

.method private initSlidePanelOpenSizeAndStatus()V
    .locals 25

    .prologue
    .line 172
    const-string v21, "VTSlidePanel"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Name="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSlidePanel;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v21, "VTSlidePanel"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Name="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSlidePanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v23, v0

    const-string v24, "name"

    invoke-virtual/range {v23 .. v24}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v21, "VTSlidePanel"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Name="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSlidePanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-super/range {p0 .. p0}, Lnet/veritran/component/VTUIComponentContainer;->init()V

    .line 179
    const/16 v20, -0x1

    .line 180
    .local v20, "w":I
    const/4 v7, -0x1

    .line 187
    .local v7, "h":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSlidePanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v21, v0

    const-string v22, "direction"

    invoke-virtual/range {v21 .. v22}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, "origin":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 189
    const-string v8, "bottom"

    .line 194
    :goto_0
    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenWidth()I

    move-result v14

    .line 195
    .local v14, "screenW":I
    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenHeight()I

    move-result v13

    .line 196
    .local v13, "screenH":I
    const-string v21, "VTSlidePanel"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "screenW="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ";screenH"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v21, "top"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 198
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/VTSlidePanel;->sliderAlign:I

    .line 207
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSlidePanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v21, v0

    const-string v22, "width"

    invoke-virtual/range {v21 .. v22}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 208
    .local v17, "slideWidth":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSlidePanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v17

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSlidePanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v21, v0

    const-string v22, "initialState"

    invoke-virtual/range {v21 .. v22}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 210
    .local v15, "slideInitialState":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSlidePanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v15, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v15

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSlidePanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v21, v0

    const-string v22, "openedLength"

    invoke-virtual/range {v21 .. v22}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 212
    .local v16, "slideOpenedSize":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSlidePanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v16

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSlidePanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v21, v0

    const-string v22, "transitionTime"

    invoke-virtual/range {v21 .. v22}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSlidePanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v18

    .line 218
    .local v18, "transitionTimeStr":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/VTSlidePanel;->transitionTime:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSlidePanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v21, v0

    const-string v22, "transitionType"

    invoke-virtual/range {v21 .. v22}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSlidePanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v19

    .line 229
    .local v19, "transitionTypeStr":Ljava/lang/String;
    const-string v21, "transparency"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 231
    sget-object v21, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->TRANSPARENCY:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTSlidePanel;->transtitionType:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    .line 247
    :cond_0
    :goto_3
    const-string v21, "opened"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 248
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/VTSlidePanel;->sliderState:I

    .line 253
    :goto_4
    const-string v22, "VTSlidePanel"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SliderState = "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/VTSlidePanel;->sliderState:I

    move/from16 v21, v0

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    const-string v21, "opened"

    :goto_5
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/VTSlidePanel;->sliderAlign:I

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/VTSlidePanel;->sliderAlign:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 257
    :cond_1
    move-object/from16 v10, v17

    .line 258
    .local v10, "panelWidth":Ljava/lang/String;
    move-object/from16 v9, v16

    .line 265
    .local v9, "panelHeight":Ljava/lang/String;
    :goto_6
    :try_start_1
    const-string v21, "%"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    .line 266
    .local v12, "percWidth":F
    float-to-int v0, v12

    move/from16 v20, v0

    .line 277
    .end local v12    # "percWidth":F
    :goto_7
    :try_start_2
    const-string v21, "%"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v11

    .line 278
    .local v11, "percHeight":F
    float-to-int v7, v11

    .line 288
    .end local v11    # "percHeight":F
    :goto_8
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v7

    move/from16 v22, v0

    const-string v23, "V"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lnet/veritran/component/VTSlidePanel;->getSlideMenuVisualArea(FFLjava/lang/String;)V

    .line 289
    return-void

    .line 191
    .end local v9    # "panelHeight":Ljava/lang/String;
    .end local v10    # "panelWidth":Ljava/lang/String;
    .end local v13    # "screenH":I
    .end local v14    # "screenW":I
    .end local v15    # "slideInitialState":Ljava/lang/String;
    .end local v16    # "slideOpenedSize":Ljava/lang/String;
    .end local v17    # "slideWidth":Ljava/lang/String;
    .end local v18    # "transitionTimeStr":Ljava/lang/String;
    .end local v19    # "transitionTypeStr":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSlidePanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 199
    .restart local v13    # "screenH":I
    .restart local v14    # "screenW":I
    :cond_3
    const-string v21, "left"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 200
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/VTSlidePanel;->sliderAlign:I

    goto/16 :goto_1

    .line 201
    :cond_4
    const-string v21, "right"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 202
    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/VTSlidePanel;->sliderAlign:I

    goto/16 :goto_1

    .line 204
    :cond_5
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/VTSlidePanel;->sliderAlign:I

    goto/16 :goto_1

    .line 220
    .restart local v15    # "slideInitialState":Ljava/lang/String;
    .restart local v16    # "slideOpenedSize":Ljava/lang/String;
    .restart local v17    # "slideWidth":Ljava/lang/String;
    .restart local v18    # "transitionTimeStr":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 222
    .local v6, "ex":Ljava/lang/NumberFormatException;
    const-string v21, "VTSlidePanel"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Couldn\'t parse float number: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 233
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    .restart local v19    # "transitionTypeStr":Ljava/lang/String;
    :cond_6
    const-string v21, "linear"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 235
    sget-object v21, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->LINEAR:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTSlidePanel;->transtitionType:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    goto/16 :goto_3

    .line 237
    :cond_7
    const-string v21, "increase"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 239
    sget-object v21, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->INCREASE:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTSlidePanel;->transtitionType:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    goto/16 :goto_3

    .line 241
    :cond_8
    const-string v21, "decrease"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 243
    sget-object v21, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->DECREASE:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTSlidePanel;->transtitionType:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    goto/16 :goto_3

    .line 250
    :cond_9
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/VTSlidePanel;->sliderState:I

    goto/16 :goto_4

    .line 253
    :cond_a
    const-string v21, "closed"

    goto/16 :goto_5

    .line 260
    :cond_b
    move-object/from16 v9, v17

    .line 261
    .restart local v9    # "panelHeight":Ljava/lang/String;
    move-object/from16 v10, v16

    .restart local v10    # "panelWidth":Ljava/lang/String;
    goto/16 :goto_6

    .line 267
    :catch_1
    move-exception v4

    .line 269
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v21, "r"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v12

    .line 270
    .restart local v12    # "percWidth":F
    float-to-int v0, v12

    move/from16 v20, v0

    goto/16 :goto_7

    .line 271
    .end local v12    # "percWidth":F
    :catch_2
    move-exception v5

    .line 272
    .local v5, "ee":Ljava/lang/Exception;
    const-string v21, "VTSlidePanel"

    const-string v22, "Catched exception empty (fortify)"

    invoke-static/range {v21 .. v22}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 279
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ee":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 281
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v21, "r"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v11

    .line 282
    .restart local v11    # "percHeight":F
    float-to-int v7, v11

    goto/16 :goto_8

    .line 283
    .end local v11    # "percHeight":F
    :catch_4
    move-exception v5

    .line 284
    .restart local v5    # "ee":Ljava/lang/Exception;
    const-string v21, "VTSlidePanel"

    const-string v22, "Catched exception empty (fortify)"

    invoke-static/range {v21 .. v22}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8
.end method


# virtual methods
.method public addChild(Lnet/veritran/component/VTUIComponent;)V
    .locals 2
    .param p1, "child"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    .line 725
    invoke-virtual {p1, p0}, Lnet/veritran/component/VTUIComponent;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 726
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel;->view:Lnet/veritran/component/view/VTVisualAreaSlidingView;

    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->addView(Landroid/view/View;)V

    .line 730
    return-void
.end method

.method public closeSlide()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 530
    const-string v3, "VTSlidePanel"

    const-string v4, "closeSlide()"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget v3, p0, Lnet/veritran/component/VTSlidePanel;->sliderState:I

    if-eqz v3, :cond_0

    .line 532
    iput v5, p0, Lnet/veritran/component/VTSlidePanel;->sliderState:I

    .line 536
    :cond_0
    iget v1, p0, Lnet/veritran/component/VTSlidePanel;->xCoordClosed:I

    .line 537
    .local v1, "toX":I
    iget v2, p0, Lnet/veritran/component/VTSlidePanel;->yCoordClosed:I

    .line 539
    .local v2, "toY":I
    move-object v0, p0

    .line 542
    .local v0, "self":Lnet/veritran/component/VTSlidePanel;
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v3

    new-instance v4, Lnet/veritran/component/VTSlidePanel$4;

    invoke-direct {v4, p0, v1, v2, v0}, Lnet/veritran/component/VTSlidePanel$4;-><init>(Lnet/veritran/component/VTSlidePanel;IILnet/veritran/component/VTSlidePanel;)V

    invoke-virtual {v3, v4}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->setOnAnimationEnd(Lnet/veritran/component/view/VTVisualAreaSlidingView$onAnimationEndInterface;)V

    .line 552
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v3

    invoke-direct {p0, v1, v2, v5}, Lnet/veritran/component/VTSlidePanel;->getAnimation(IIZ)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 554
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 555
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 557
    :cond_1
    return-void
.end method

.method public executeEvent(Ljava/lang/String;)Z
    .locals 4
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTSlidePanel;->checkEventType(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->isRefreshEvent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 69
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->refreshContainer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-direct {p0, v1}, Lnet/veritran/component/VTSlidePanel;->initSlidePanel(Z)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->refreshContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lnet/veritran/component/VTSlidePanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTUIComponent;

    .line 74
    .local v0, "component":Lnet/veritran/component/VTUIComponent;
    const-string v3, "REFRESH_WITHOUT_MEASURE"

    invoke-virtual {v0, v3}, Lnet/veritran/component/VTUIComponent;->executeEvent(Ljava/lang/String;)Z

    goto :goto_0

    .line 77
    .end local v0    # "component":Lnet/veritran/component/VTUIComponent;
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->refreshMeasure()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->requestLayout()V

    .line 80
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->invalidate()V

    .line 81
    invoke-static {p0}, Lnet/veritran/VTSlidingPanelManager;->addSlidingPanel(Lnet/veritran/component/VTSlidePanel;)V

    :cond_2
    :goto_1
    move v1, v2

    .line 101
    :cond_3
    return v1

    .line 83
    :cond_4
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->isVisibilityEvent()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 84
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->updateVisibility()V

    goto :goto_1

    .line 85
    :cond_5
    const-string v3, "OPEN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 86
    iget v3, p0, Lnet/veritran/component/VTSlidePanel;->sliderState:I

    if-eq v3, v2, :cond_3

    .line 89
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->openSlide()V

    goto :goto_1

    .line 90
    :cond_6
    const-string v3, "CLOSE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 91
    iget v3, p0, Lnet/veritran/component/VTSlidePanel;->sliderState:I

    if-eqz v3, :cond_3

    .line 94
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->closeSlide()V

    goto :goto_1

    .line 95
    :cond_7
    const-string v3, "TOGGLE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->toggleSlide()V

    goto :goto_1
.end method

.method public getChildAt(I)Lnet/veritran/component/VTUIComponent;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 678
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTUIComponent;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLayoutParamsForDeltaCoordinates()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    .line 577
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 579
    .local v0, "wlp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lnet/veritran/component/VTSlidePanel;->currentX:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 580
    iget v1, p0, Lnet/veritran/component/VTSlidePanel;->currentY:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 582
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 584
    return-object v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lnet/veritran/component/VTSlidePanel;->measuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lnet/veritran/component/VTSlidePanel;->measuredWidth:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel;->orientation:Ljava/lang/String;

    return-object v0
.end method

.method public getSlideMenuVisualArea(FFLjava/lang/String;)V
    .locals 8
    .param p1, "wPerc"    # F
    .param p2, "hPerc"    # F
    .param p3, "orientation"    # Ljava/lang/String;

    .prologue
    .line 293
    const-string v4, "VTSlidePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSlideMenuVisualArea("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v4

    if-nez v4, :cond_4

    .line 295
    new-instance v2, Lnet/veritran/component/view/VTVisualAreaSlidingView;

    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Lnet/veritran/component/view/VTVisualAreaSlidingView;-><init>(Landroid/content/Context;)V

    .line 298
    .local v2, "menuLayout":Lnet/veritran/component/view/VTVisualAreaSlidingView;
    invoke-virtual {p0, p3}, Lnet/veritran/component/VTSlidePanel;->setOrientation(Ljava/lang/String;)V

    .line 299
    const/4 v3, -0x1

    .line 300
    .local v3, "wPixels":I
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    .line 301
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v3, v4

    .line 302
    :cond_0
    const/4 v0, -0x1

    .line 303
    .local v0, "hPixels":I
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_1

    .line 304
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 305
    :cond_1
    const-string v4, "VTSlidePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSlideMenuVisualArea("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "px,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "px)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0, v3}, Lnet/veritran/component/VTSlidePanel;->setMeasuredWidth(I)V

    .line 307
    invoke-virtual {p0, v0}, Lnet/veritran/component/VTSlidePanel;->setMeasuredHeight(I)V

    .line 308
    invoke-virtual {v2, v3}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->setPixelsWidth(I)V

    .line 309
    invoke-virtual {v2, v0}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->setPixelsHeight(I)V

    .line 316
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->setOrientation(I)V

    .line 318
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const/4 v3, -0x2

    .end local v3    # "wPixels":I
    :cond_2
    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    const/4 v0, -0x2

    .end local v0    # "hPixels":I
    :cond_3
    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 322
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    const-string v4, "VTSlideMenu"

    invoke-virtual {v2, v4}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->setTag(Ljava/lang/Object;)V

    .line 326
    invoke-virtual {p0, v2}, Lnet/veritran/component/VTSlidePanel;->setView(Lnet/veritran/component/view/VTVisualAreaSlidingView;)V

    .line 340
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuLayout":Lnet/veritran/component/view/VTVisualAreaSlidingView;
    :goto_0
    return-void

    .line 329
    :cond_4
    invoke-virtual {p0, p3}, Lnet/veritran/component/VTSlidePanel;->setOrientation(Ljava/lang/String;)V

    .line 330
    const/4 v3, -0x1

    .line 331
    .restart local v3    # "wPixels":I
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_5

    .line 332
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v3, v4

    .line 333
    :cond_5
    const/4 v0, -0x1

    .line 334
    .restart local v0    # "hPixels":I
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_6

    .line 335
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 336
    :cond_6
    const-string v4, "VTSlidePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSlideMenuVisualArea("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "px,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "px)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0, v3}, Lnet/veritran/component/VTSlidePanel;->setMeasuredWidth(I)V

    .line 338
    invoke-virtual {p0, v0}, Lnet/veritran/component/VTSlidePanel;->setMeasuredHeight(I)V

    goto :goto_0
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel;->view:Lnet/veritran/component/view/VTVisualAreaSlidingView;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lnet/veritran/component/VTUIComponentContainer;->init()V

    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/veritran/component/VTSlidePanel;->initSlidePanel(Z)V

    .line 113
    return-void
.end method

.method public openSlide()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 500
    const-string v3, "VTSlidePanel"

    const-string v4, "openSlide()"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v3, "VTSlidePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";clickable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->isClickable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget v3, p0, Lnet/veritran/component/VTSlidePanel;->sliderState:I

    if-eq v3, v6, :cond_0

    .line 503
    iput v6, p0, Lnet/veritran/component/VTSlidePanel;->sliderState:I

    .line 506
    :cond_0
    iget v1, p0, Lnet/veritran/component/VTSlidePanel;->xCoordOpened:I

    .line 507
    .local v1, "toX":I
    iget v2, p0, Lnet/veritran/component/VTSlidePanel;->yCoordOpened:I

    .line 509
    .local v2, "toY":I
    move-object v0, p0

    .line 512
    .local v0, "self":Lnet/veritran/component/VTSlidePanel;
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v3

    new-instance v4, Lnet/veritran/component/VTSlidePanel$3;

    invoke-direct {v4, p0, v1, v2, v0}, Lnet/veritran/component/VTSlidePanel$3;-><init>(Lnet/veritran/component/VTSlidePanel;IILnet/veritran/component/VTSlidePanel;)V

    invoke-virtual {v3, v4}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->setOnAnimationEnd(Lnet/veritran/component/view/VTVisualAreaSlidingView$onAnimationEndInterface;)V

    .line 522
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v3

    invoke-direct {p0, v1, v2, v6}, Lnet/veritran/component/VTSlidePanel;->getAnimation(IIZ)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 524
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 525
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 527
    :cond_1
    return-void
.end method

.method public removeAllViews()V
    .locals 3

    .prologue
    .line 705
    iget-object v1, p0, Lnet/veritran/component/VTSlidePanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTUIComponent;

    .line 707
    .local v0, "component":Lnet/veritran/component/VTUIComponent;
    invoke-virtual {v0}, Lnet/veritran/component/VTUIComponent;->componentWillFinish()V

    .line 709
    check-cast v0, Lnet/veritran/component/VTVisualArea;

    .end local v0    # "component":Lnet/veritran/component/VTUIComponent;
    invoke-virtual {v0}, Lnet/veritran/component/VTVisualArea;->removeAllViews()V

    goto :goto_0

    .line 712
    :cond_0
    iget-object v1, p0, Lnet/veritran/component/VTSlidePanel;->view:Lnet/veritran/component/view/VTVisualAreaSlidingView;

    invoke-direct {p0, v1}, Lnet/veritran/component/VTSlidePanel;->componentWillFinishAllChildren(Landroid/view/View;)V

    .line 714
    iget-object v1, p0, Lnet/veritran/component/VTSlidePanel;->view:Lnet/veritran/component/view/VTVisualAreaSlidingView;

    invoke-virtual {v1}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->removeAllViews()V

    .line 715
    iget-object v1, p0, Lnet/veritran/component/VTSlidePanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 716
    return-void
.end method

.method public setCurrentXY(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 571
    iput p1, p0, Lnet/veritran/component/VTSlidePanel;->currentX:I

    .line 572
    iput p2, p0, Lnet/veritran/component/VTSlidePanel;->currentY:I

    .line 573
    return-void
.end method

.method public setMeasuredHeight(I)V
    .locals 0
    .param p1, "measuredHeight"    # I

    .prologue
    .line 627
    iput p1, p0, Lnet/veritran/component/VTSlidePanel;->measuredHeight:I

    .line 628
    return-void
.end method

.method public setMeasuredWidth(I)V
    .locals 0
    .param p1, "measuredWidth"    # I

    .prologue
    .line 613
    iput p1, p0, Lnet/veritran/component/VTSlidePanel;->measuredWidth:I

    .line 614
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 666
    iput-object p1, p0, Lnet/veritran/component/VTSlidePanel;->name:Ljava/lang/String;

    .line 667
    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 0
    .param p1, "orientation"    # Ljava/lang/String;

    .prologue
    .line 661
    iput-object p1, p0, Lnet/veritran/component/VTSlidePanel;->orientation:Ljava/lang/String;

    .line 662
    return-void
.end method

.method public setView(Lnet/veritran/component/view/VTVisualAreaSlidingView;)V
    .locals 2
    .param p1, "view"    # Lnet/veritran/component/view/VTVisualAreaSlidingView;

    .prologue
    const/4 v1, 0x1

    .line 641
    iput-object p1, p0, Lnet/veritran/component/VTSlidePanel;->view:Lnet/veritran/component/view/VTVisualAreaSlidingView;

    .line 644
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel;->view:Lnet/veritran/component/view/VTVisualAreaSlidingView;

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 646
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel;->view:Lnet/veritran/component/view/VTVisualAreaSlidingView;

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->setAnimationCacheEnabled(Z)V

    .line 647
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel;->view:Lnet/veritran/component/view/VTVisualAreaSlidingView;

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->setDrawingCacheEnabled(Z)V

    .line 648
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 739
    iget-object v1, p0, Lnet/veritran/component/VTSlidePanel;->view:Lnet/veritran/component/view/VTVisualAreaSlidingView;

    if-nez v1, :cond_0

    .line 740
    const-string v0, "null"

    .line 744
    .local v0, "sView":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VTVisualArea {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/VTSlidePanel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "} [width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 745
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 746
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getOrientation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 747
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getParent()Lnet/veritran/component/VTUIComponent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "children="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/VTSlidePanel;->children:Ljava/util/ArrayList;

    .line 748
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 742
    .end local v0    # "sView":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lnet/veritran/component/VTSlidePanel;->view:Lnet/veritran/component/view/VTVisualAreaSlidingView;

    invoke-virtual {v1}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "sView":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public toggleSlide()V
    .locals 3

    .prologue
    .line 560
    const-string v0, "VTSlidePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleSlide() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/veritran/component/VTSlidePanel;->headerPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget v0, p0, Lnet/veritran/component/VTSlidePanel;->sliderState:I

    if-nez v0, :cond_0

    .line 562
    const/4 v0, 0x1

    iput v0, p0, Lnet/veritran/component/VTSlidePanel;->sliderState:I

    .line 563
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->openSlide()V

    .line 568
    :goto_0
    return-void

    .line 565
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/component/VTSlidePanel;->sliderState:I

    .line 566
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->closeSlide()V

    goto :goto_0
.end method
