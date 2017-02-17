.class public Lnet/veritran/component/VTHTMLAreaComponent;
.super Lnet/veritran/component/VTUIComponent;
.source "VTHTMLAreaComponent.java"


# static fields
.field private static final RESOURCES_PREFIX:Ljava/lang/String; = "vtlocal://"

.field private static final TAG:Ljava/lang/String; = "VTHTMLAreaComponent"


# instance fields
.field private progress:Landroid/widget/ProgressBar;

.field private vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponent;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTHTMLAreaComponent;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 36
    new-instance v0, Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-direct {v0, p0}, Lnet/veritran/component/view/VTHTMLAreaComponentView;-><init>(Lnet/veritran/component/VTUIComponent;)V

    iput-object v0, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/component/VTHTMLAreaComponent;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTHTMLAreaComponent;

    .prologue
    .line 23
    iget-object v0, p0, Lnet/veritran/component/VTHTMLAreaComponent;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private initHTMLArea()V
    .locals 5

    .prologue
    .line 167
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->getParent()Lnet/veritran/component/VTUIComponent;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v1

    const-string v2, "verticalalign"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "valign":Ljava/lang/String;
    const-string v1, "VTHTMLAreaComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/veritran/component/VTHTMLAreaComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " valign="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lnet/veritran/component/VTHTMLAreaComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "verticalalign"

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->defineTextAlign()V

    .line 173
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->defineVerticalAlign()V

    .line 175
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 176
    const-string v1, "VTHTMLAreaComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VTHTMLArea->getArrayReaderAdapter(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->getArrayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->defineWidth()V

    .line 180
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->defineHeight()V

    .line 181
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->defineVisibility()V

    .line 182
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->defineMargins()V

    .line 183
    return-void
.end method

.method private loadUrl()V
    .locals 10

    .prologue
    .line 221
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHTMLArea;

    .line 223
    .local v1, "htmlAreaConfiguration":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHTMLArea;
    const-string v7, "VTHTMLAreaComponent"

    const-string v8, "HTML Area Bundle state null"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v7, "src"

    invoke-virtual {v1, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHTMLArea;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, "src":Ljava/lang/String;
    const-string v7, "vtlocal://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "vtlocal://"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 227
    const-string v7, "vtlocal://"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "resourceNamePath":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_0

    .line 230
    const/4 v7, 0x0

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "resourceName":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "resourcePath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v8

    invoke-virtual {v8, v3}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationResourceFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "resourceFullPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 238
    iget-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:///"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->loadUrl(Ljava/lang/String;)V

    .line 246
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "resourceFullPath":Ljava/lang/String;
    .end local v3    # "resourceName":Ljava/lang/String;
    .end local v4    # "resourceNamePath":Ljava/lang/String;
    .end local v5    # "resourcePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v7, v6}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWebViewClient()V
    .locals 3

    .prologue
    .line 187
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHTMLArea;

    .line 189
    .local v0, "htmlAreaConfiguration":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHTMLArea;
    iget-object v1, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    new-instance v2, Lnet/veritran/component/VTHTMLAreaComponent$1;

    invoke-direct {v2, p0, v0}, Lnet/veritran/component/VTHTMLAreaComponent$1;-><init>(Lnet/veritran/component/VTHTMLAreaComponent;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHTMLArea;)V

    invoke-virtual {v1, v2}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 217
    return-void
.end method


# virtual methods
.method public componentWillFinish()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->componentWillFinish()V

    .line 274
    iget-object v0, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->loadUrl(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->clearCache(Z)V

    .line 279
    :cond_0
    return-void
.end method

.method public executeEvent(Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTHTMLAreaComponent;->checkEventType(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->isRefreshEvent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 51
    iget-object v0, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->clearCache(Z)V

    .line 54
    iget-object v0, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->clearHistory()V

    .line 56
    :cond_0
    invoke-direct {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->initHTMLArea()V

    .line 57
    invoke-direct {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->setWebViewClient()V

    .line 58
    invoke-direct {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->loadUrl()V

    .line 60
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->refreshMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 62
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    move v0, v1

    .line 86
    :cond_2
    return v0

    .line 64
    :cond_3
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->isVisibilityEvent()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 65
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->updateVisibility()V

    goto :goto_0

    .line 66
    :cond_4
    const-string v2, "BACK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 67
    iget-object v2, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v2}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    iget-object v0, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->goBack()V

    goto :goto_0

    .line 73
    :cond_5
    const-string v2, "FWD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 74
    iget-object v2, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v2}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->canGoForward()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    iget-object v0, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->goForward()V

    goto :goto_0

    .line 80
    :cond_6
    const-string v2, "RELOAD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v0, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->reload()V

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    return-object v0
.end method

.method public init()V
    .locals 15

    .prologue
    const/16 v14, 0x11

    const/4 v13, -0x2

    const/4 v12, -0x1

    const/4 v11, 0x1

    .line 92
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->init()V

    .line 94
    invoke-direct {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->initHTMLArea()V

    .line 96
    new-instance v7, Landroid/widget/ProgressBar;

    iget-object v8, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v8}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const v10, 0x101007a

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->progress:Landroid/widget/ProgressBar;

    .line 98
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 101
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v4, v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 103
    iget-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->progress:Landroid/widget/ProgressBar;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 105
    iget-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v11}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 108
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v7}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 112
    .local v5, "rl":Landroid/widget/RelativeLayout;
    invoke-virtual {v5, v14}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 113
    iget-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 118
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 121
    .local v3, "layoutParams2":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v7}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 122
    .local v6, "rl2":Landroid/widget/RelativeLayout;
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 123
    invoke-virtual {v6, v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v7, v6, v3}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v7}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 128
    iget-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v7}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 130
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 132
    .local v1, "currentapiVersion":I
    const/16 v7, 0xb

    if-lt v1, v7, :cond_0

    .line 134
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/VTCommonActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 135
    iget-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v7}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 143
    :cond_0
    :goto_0
    iget-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v7}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 144
    invoke-direct {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->setWebViewClient()V

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "bundleState":Landroid/os/Bundle;
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->getComponentId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->getComponentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 150
    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v7

    invoke-virtual {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->getComponentId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/veritran/VTCommonActivity;->getBundleState(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 153
    :cond_1
    if-eqz v0, :cond_3

    .line 155
    const-string v7, "VTHTMLAreaComponent"

    const-string v8, "HTML Area Bundle state NOT NULL"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v7, v0}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 164
    :goto_1
    return-void

    .line 139
    .end local v0    # "bundleState":Landroid/os/Bundle;
    :cond_2
    iget-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v7}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    goto :goto_0

    .line 160
    .restart local v0    # "bundleState":Landroid/os/Bundle;
    :cond_3
    invoke-direct {p0}, Lnet/veritran/component/VTHTMLAreaComponent;->loadUrl()V

    .line 162
    iget-object v7, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v7}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    goto :goto_1
.end method

.method public keepStatusesToBundle()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public restoreStatusFromBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 266
    const-string v0, "VTHTMLAreaComponent"

    const-string v1, "HTML Area Component restore"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 268
    return-void
.end method

.method public saveStatusToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 260
    const-string v0, "VTHTMLAreaComponent"

    const-string v1, "HTML Area Component SaveState"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lnet/veritran/component/VTHTMLAreaComponent;->vTHTMLAreaView:Lnet/veritran/component/view/VTHTMLAreaComponentView;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTHTMLAreaComponentView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 262
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
