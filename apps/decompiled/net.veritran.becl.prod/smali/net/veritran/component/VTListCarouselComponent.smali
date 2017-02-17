.class public Lnet/veritran/component/VTListCarouselComponent;
.super Lnet/veritran/component/VTListComponent;
.source "VTListCarouselComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VTListCarouselComponent"

.field private static dictAreaNameVectorCarousels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/component/VTListCarouselComponent;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private imagesPreloaded:Z

.field private pageIndicator:Lnet/veritran/component/view/VTPageIndicatorView;

.field private vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/veritran/component/VTListCarouselComponent;->dictAreaNameVectorCarousels:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lnet/veritran/component/VTListComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/component/VTListCarouselComponent;->imagesPreloaded:Z

    .line 86
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/component/VTListCarouselComponent;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTListCarouselComponent;

    .prologue
    .line 25
    iget-boolean v0, p0, Lnet/veritran/component/VTListCarouselComponent;->imagesPreloaded:Z

    return v0
.end method

.method static synthetic access$002(Lnet/veritran/component/VTListCarouselComponent;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/veritran/component/VTListCarouselComponent;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lnet/veritran/component/VTListCarouselComponent;->imagesPreloaded:Z

    return p1
.end method

.method static synthetic access$200(Lnet/veritran/component/VTListCarouselComponent;)Lnet/veritran/component/view/VTListCarouselComponentView;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTListCarouselComponent;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;

    return-object v0
.end method

.method static synthetic access$300(Lnet/veritran/component/VTListCarouselComponent;)Lnet/veritran/component/view/VTPageIndicatorView;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTListCarouselComponent;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent;->pageIndicator:Lnet/veritran/component/view/VTPageIndicatorView;

    return-object v0
.end method

.method private initCarousel()V
    .locals 4

    .prologue
    .line 167
    iget-object v1, p0, Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;

    iget-object v2, p0, Lnet/veritran/component/VTListCarouselComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v3, "targetvar"

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/component/view/VTListCarouselComponentView;->setTag(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->defineTextAlign()V

    .line 173
    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->defineWidth()V

    .line 174
    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->defineHeight()V

    .line 175
    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->defineVisibility()V

    .line 176
    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->defineMargins()V

    .line 178
    sget-object v1, Lnet/veritran/component/VTListCarouselComponent;->dictAreaNameVectorCarousels:Ljava/util/HashMap;

    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->getVisualAreaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    sget-object v1, Lnet/veritran/component/VTListCarouselComponent;->dictAreaNameVectorCarousels:Ljava/util/HashMap;

    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->getVisualAreaName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_0
    sget-object v1, Lnet/veritran/component/VTListCarouselComponent;->dictAreaNameVectorCarousels:Ljava/util/HashMap;

    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->getVisualAreaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    sget-object v1, Lnet/veritran/component/VTListCarouselComponent;->dictAreaNameVectorCarousels:Ljava/util/HashMap;

    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->getVisualAreaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    iget-object v1, p0, Lnet/veritran/component/VTListCarouselComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "loadingmessage"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "progressMessage":Ljava/lang/String;
    iget-object v1, p0, Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;

    invoke-virtual {v1, v0}, Lnet/veritran/component/view/VTListCarouselComponentView;->setProgressMessage(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static stopAllCarouselTransitions()V
    .locals 5

    .prologue
    .line 38
    sget-object v2, Lnet/veritran/component/VTListCarouselComponent;->dictAreaNameVectorCarousels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v1, "vectorCarousels":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/veritran/component/VTListCarouselComponent;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "vectorCarousels":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/veritran/component/VTListCarouselComponent;>;"
    check-cast v1, Ljava/util/Vector;

    .line 39
    .restart local v1    # "vectorCarousels":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/veritran/component/VTListCarouselComponent;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTListCarouselComponent;

    .line 40
    .local v0, "carousel":Lnet/veritran/component/VTListCarouselComponent;
    invoke-virtual {v0}, Lnet/veritran/component/VTListCarouselComponent;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {v0}, Lnet/veritran/component/VTListCarouselComponent;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/veritran/component/view/VTListCarouselComponentView;

    invoke-virtual {v2}, Lnet/veritran/component/view/VTListCarouselComponentView;->stopCarouselTransitionTimer()V

    goto :goto_0

    .line 45
    .end local v0    # "carousel":Lnet/veritran/component/VTListCarouselComponent;
    :cond_2
    sget-object v2, Lnet/veritran/component/VTListCarouselComponent;->dictAreaNameVectorCarousels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 46
    return-void
.end method

.method public static stopAllCarouselTransitionsFromVisualArea(Ljava/lang/String;)V
    .locals 3
    .param p0, "area"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v1, Lnet/veritran/component/VTListCarouselComponent;->dictAreaNameVectorCarousels:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    sget-object v1, Lnet/veritran/component/VTListCarouselComponent;->dictAreaNameVectorCarousels:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTListCarouselComponent;

    .line 52
    .local v0, "carousel":Lnet/veritran/component/VTListCarouselComponent;
    invoke-virtual {v0}, Lnet/veritran/component/VTListCarouselComponent;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v0}, Lnet/veritran/component/VTListCarouselComponent;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/veritran/component/view/VTListCarouselComponentView;

    invoke-virtual {v1}, Lnet/veritran/component/view/VTListCarouselComponentView;->stopCarouselTransitionTimer()V

    goto :goto_0

    .line 56
    .end local v0    # "carousel":Lnet/veritran/component/VTListCarouselComponent;
    :cond_1
    sget-object v1, Lnet/veritran/component/VTListCarouselComponent;->dictAreaNameVectorCarousels:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_2
    return-void
.end method


# virtual methods
.method public executeEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTListCarouselComponent;->checkEventType(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->isRefreshEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-direct {p0}, Lnet/veritran/component/VTListCarouselComponent;->initCarousel()V

    .line 71
    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->refreshMeasure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 73
    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 81
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->isVisibilityEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->updateVisibility()V

    goto :goto_0

    .line 78
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;

    return-object v0
.end method

.method public init()V
    .locals 15

    .prologue
    .line 95
    invoke-super {p0}, Lnet/veritran/component/VTListComponent;->init()V

    .line 98
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "cycle"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "cycleValue":Ljava/lang/String;
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "transitiontime"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v14

    .line 104
    .local v14, "transitionTimeValue":Ljava/lang/String;
    const/4 v4, 0x0

    .line 107
    .local v4, "transitionTime":I
    :try_start_0
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 114
    :goto_0
    const/high16 v5, 0x3e800000    # 0.25f

    .line 117
    .local v5, "spacingFactor":F
    :try_start_1
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "spacingFactor"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 124
    :goto_1
    const-string v0, "YES"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TRUE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez v4, :cond_4

    :cond_0
    const/4 v3, 0x1

    .line 127
    .local v3, "cycle":Z
    :goto_2
    new-instance v0, Lnet/veritran/component/view/VTListCarouselComponentView;

    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/VTListCarouselComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v6, "style"

    invoke-virtual {v2, v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lnet/veritran/component/VTListCarouselComponent$1;

    invoke-direct {v6, p0}, Lnet/veritran/component/VTListCarouselComponent$1;-><init>(Lnet/veritran/component/VTListCarouselComponent;)V

    invoke-direct/range {v0 .. v6}, Lnet/veritran/component/view/VTListCarouselComponentView;-><init>(Lnet/veritran/VTCommonActivity;Ljava/lang/String;ZIFLjava/lang/Runnable;)V

    iput-object v0, p0, Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;

    .line 143
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "indicatorLocation"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v11

    .line 145
    .local v11, "indicatorLocation":Ljava/lang/String;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "indicatorImageOn"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v12

    .line 147
    .local v12, "pageIndicatorCurrentImg":Ljava/lang/String;
    if-eqz v12, :cond_1

    const-string v0, ""

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    :cond_1
    const-string v9, "rb_on"

    .line 152
    .local v9, "imageNameCurrentPI":Ljava/lang/String;
    :goto_3
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "indicatorImageOff"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v13

    .line 153
    .local v13, "pageIndicatorImg":Ljava/lang/String;
    if-eqz v12, :cond_2

    const-string v0, ""

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    :cond_2
    const-string v10, "rb_off"

    .line 158
    .local v10, "imageNamePI":Ljava/lang/String;
    :goto_4
    new-instance v0, Lnet/veritran/component/view/VTPageIndicatorView;

    invoke-virtual {p0}, Lnet/veritran/component/VTListCarouselComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/veritran/component/view/VTPageIndicatorView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lnet/veritran/component/VTListCarouselComponent;->pageIndicator:Lnet/veritran/component/view/VTPageIndicatorView;

    .line 159
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent;->pageIndicator:Lnet/veritran/component/view/VTPageIndicatorView;

    invoke-virtual {v0, v9, v10}, Lnet/veritran/component/view/VTPageIndicatorView;->setImages(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;

    iget-object v1, p0, Lnet/veritran/component/VTListCarouselComponent;->pageIndicator:Lnet/veritran/component/view/VTPageIndicatorView;

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTListCarouselComponentView;->setPageIndicatorView(Lnet/veritran/component/view/VTPageIndicatorView;)V

    .line 161
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;

    invoke-virtual {v0, v11}, Lnet/veritran/component/view/VTListCarouselComponentView;->setIndicatorLocation(Ljava/lang/String;)V

    .line 163
    .end local v9    # "imageNameCurrentPI":Ljava/lang/String;
    .end local v10    # "imageNamePI":Ljava/lang/String;
    .end local v12    # "pageIndicatorCurrentImg":Ljava/lang/String;
    .end local v13    # "pageIndicatorImg":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lnet/veritran/component/VTListCarouselComponent;->initCarousel()V

    .line 164
    return-void

    .line 109
    .end local v3    # "cycle":Z
    .end local v5    # "spacingFactor":F
    .end local v11    # "indicatorLocation":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 111
    .local v8, "ex":Ljava/lang/NumberFormatException;
    const-string v0, "VTListCarouselComponent"

    const-string v1, "transition Time will be 0"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    .restart local v5    # "spacingFactor":F
    :catch_1
    move-exception v8

    .line 121
    .restart local v8    # "ex":Ljava/lang/NumberFormatException;
    const-string v0, "VTListCarouselComponent"

    const-string v1, "spacing Factor will be 0.25"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 124
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 150
    .restart local v3    # "cycle":Z
    .restart local v11    # "indicatorLocation":Ljava/lang/String;
    .restart local v12    # "pageIndicatorCurrentImg":Ljava/lang/String;
    :cond_5
    move-object v9, v12

    .restart local v9    # "imageNameCurrentPI":Ljava/lang/String;
    goto :goto_3

    .line 156
    .restart local v13    # "pageIndicatorImg":Ljava/lang/String;
    :cond_6
    move-object v10, v12

    .restart local v10    # "imageNamePI":Ljava/lang/String;
    goto :goto_4
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method
