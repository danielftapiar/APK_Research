.class public Lnet/veritran/VTSlidingPanelManager;
.super Ljava/lang/Object;
.source "VTSlidingPanelManager.java"


# static fields
.field private static slidingPanelsAttached:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lnet/veritran/component/VTSlidePanel;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnet/veritran/VTSlidingPanelManager;->slidingPanelsAttached:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSlidingPanel(Lnet/veritran/component/VTSlidePanel;)V
    .locals 5
    .param p0, "slidePanel"    # Lnet/veritran/component/VTSlidePanel;

    .prologue
    .line 28
    const-string v2, "ZZZ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSlidingPanel("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v2, Lnet/veritran/VTSlidingPanelManager;->slidingPanelsAttached:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v2

    iget-object v0, v2, Lnet/veritran/VTAbstractActivity;->mainFrameLayout:Landroid/widget/FrameLayout;

    .line 34
    .local v0, "mainLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getLayoutParamsForDeltaCoordinates()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 36
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    sget-object v2, Lnet/veritran/VTSlidingPanelManager;->slidingPanelsAttached:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_0
    return-void

    .line 42
    .end local v0    # "mainLayout":Landroid/widget/FrameLayout;
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v2

    iget-object v0, v2, Lnet/veritran/VTAbstractActivity;->mainFrameLayout:Landroid/widget/FrameLayout;

    .line 44
    .restart local v0    # "mainLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getLayoutParamsForDeltaCoordinates()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 46
    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private static getBlackRectangle(Lnet/veritran/component/VTSlidePanel;)Landroid/view/View;
    .locals 8
    .param p0, "slidePanel"    # Lnet/veritran/component/VTSlidePanel;

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 128
    .local v6, "pallet":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 129
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 130
    .local v5, "paint":Landroid/graphics/Paint;
    const/high16 v2, -0x1000000

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredHeight()I

    move-result v2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 132
    new-instance v7, Landroid/widget/ImageView;

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 133
    .local v7, "view":Landroid/widget/ImageView;
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    return-object v7
.end method

.method private static getBlackRectangleLayoutParams(Lnet/veritran/component/VTSlidePanel;)Landroid/view/WindowManager$LayoutParams;
    .locals 2
    .param p0, "slidePanel"    # Lnet/veritran/component/VTSlidePanel;

    .prologue
    .line 139
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 140
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 141
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 142
    invoke-static {}, Lnet/veritran/VTCommonActivity;->getScreenHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 143
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 144
    invoke-virtual {p0}, Lnet/veritran/component/VTSlidePanel;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 145
    const v1, 0x60228

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 146
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 148
    return-object v0
.end method

.method public static getSlidingPanel(Ljava/lang/String;)Lnet/veritran/component/VTSlidePanel;
    .locals 6
    .param p0, "slidePanelName"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v3, "ZZZ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSlidingPanel("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v3, Lnet/veritran/VTSlidingPanelManager;->slidingPanelsAttached:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 116
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lnet/veritran/component/VTSlidePanel;Landroid/view/View;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 118
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/veritran/component/VTSlidePanel;Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/veritran/component/VTSlidePanel;

    .line 119
    .local v2, "vtSlidePanel":Lnet/veritran/component/VTSlidePanel;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lnet/veritran/component/VTSlidePanel;->getComponentId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lnet/veritran/component/VTSlidePanel;->getComponentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/veritran/component/VTSlidePanel;Landroid/view/View;>;"
    .end local v2    # "vtSlidePanel":Lnet/veritran/component/VTSlidePanel;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static removeAll()V
    .locals 8

    .prologue
    .line 80
    const-string v5, "ZZZ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeAll():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lnet/veritran/VTSlidingPanelManager;->slidingPanelsAttached:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v3, 0x0

    .line 85
    .local v3, "mainLayout":Landroid/widget/FrameLayout;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 87
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v5

    iget-object v3, v5, Lnet/veritran/VTAbstractActivity;->mainFrameLayout:Landroid/widget/FrameLayout;

    .line 94
    sget-object v5, Lnet/veritran/VTSlidingPanelManager;->slidingPanelsAttached:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 95
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lnet/veritran/component/VTSlidePanel;Landroid/view/View;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 97
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/veritran/component/VTSlidePanel;Landroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/veritran/component/VTSlidePanel;

    .line 100
    .local v4, "vtSlidePanel":Lnet/veritran/component/VTSlidePanel;
    :try_start_0
    invoke-virtual {v4}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->clearAnimation()V

    .line 102
    invoke-virtual {v4}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "ZZZ"

    const-string v6, "Catched exception empty (fortify)"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/veritran/component/VTSlidePanel;Landroid/view/View;>;"
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lnet/veritran/component/VTSlidePanel;Landroid/view/View;>;>;"
    .end local v4    # "vtSlidePanel":Lnet/veritran/component/VTSlidePanel;
    :cond_0
    return-void
.end method

.method public static removeSlidingPanelsFromVisualArea(Ljava/lang/String;)V
    .locals 7
    .param p0, "visualAreaToMatch"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v4, "ZZZ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeSlidingPanelsFromVisualArea("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v4

    invoke-virtual {v4}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v4

    iget-object v2, v4, Lnet/veritran/VTAbstractActivity;->mainFrameLayout:Landroid/widget/FrameLayout;

    .line 64
    .local v2, "mainLayout":Landroid/widget/FrameLayout;
    sget-object v4, Lnet/veritran/VTSlidingPanelManager;->slidingPanelsAttached:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 65
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lnet/veritran/component/VTSlidePanel;Landroid/view/View;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/veritran/component/VTSlidePanel;Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/veritran/component/VTSlidePanel;

    .line 68
    .local v3, "vtSlidePanel":Lnet/veritran/component/VTSlidePanel;
    invoke-virtual {v3}, Lnet/veritran/component/VTSlidePanel;->getVisualAreaName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    invoke-virtual {v3}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v4

    invoke-virtual {v4}, Lnet/veritran/component/view/VTVisualAreaSlidingView;->clearAnimation()V

    .line 72
    invoke-virtual {v3}, Lnet/veritran/component/VTSlidePanel;->getView()Lnet/veritran/component/view/VTVisualAreaSlidingView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 77
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/veritran/component/VTSlidePanel;Landroid/view/View;>;"
    .end local v3    # "vtSlidePanel":Lnet/veritran/component/VTSlidePanel;
    :cond_1
    return-void
.end method
