.class public Lnet/veritran/component/VTPopupComponent;
.super Lnet/veritran/component/VTUIComponent;
.source "VTPopupComponent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTPopupComponent"


# instance fields
.field private darkBackground:Z

.field popup:Lnet/veritran/component/VTPopup;

.field private popupPanel:Lnet/veritran/component/VTUIComponent;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/veritran/component/VTPopupComponent;-><init>(Lnet/veritran/VTCommonActivity;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lnet/veritran/VTCommonActivity;Z)V
    .locals 2
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;
    .param p2, "darkBackground"    # Z

    .prologue
    .line 68
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponent;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/component/VTPopupComponent;->darkBackground:Z

    .line 69
    const-string v0, "VTPopupComponent"

    const-string v1, "VTPopupComponent constructor"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput-boolean p2, p0, Lnet/veritran/component/VTPopupComponent;->darkBackground:Z

    .line 71
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTPopupComponent;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 74
    return-void
.end method

.method private initSize()V
    .locals 8

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    .line 127
    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->getWidthPercentage()I

    move-result v4

    int-to-float v2, v4

    .line 128
    .local v2, "w":F
    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v7

    float-to-int v3, v4

    .line 129
    .local v3, "wpx":I
    const-string v4, "VTPopupComponent"

    const-string v5, "popup"

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v4, "VTPopupComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHeightPercentage():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->getHeightPercentage()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->getHeightPercentage()I

    move-result v4

    int-to-float v0, v4

    .line 133
    .local v0, "h":F
    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v0, v4

    if-nez v4, :cond_1

    .line 134
    const/4 v1, -0x2

    .line 138
    .local v1, "hpx":I
    :goto_0
    iget-object v4, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    if-eqz v4, :cond_0

    .line 139
    iget-object v4, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    invoke-virtual {v4}, Lnet/veritran/component/VTPopup;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/view/Window;->setLayout(II)V

    .line 141
    :cond_0
    return-void

    .line 136
    .end local v1    # "hpx":I
    :cond_1
    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    div-float/2addr v4, v7

    float-to-int v1, v4

    .restart local v1    # "hpx":I
    goto :goto_0
.end method


# virtual methods
.method public executeEvent(Ljava/lang/String;)Z
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTPopupComponent;->checkEventType(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->isRefreshEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->refreshContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0}, Lnet/veritran/component/VTPopupComponent;->initSize()V

    .line 35
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->refreshContent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/component/VTPopupComponent;->popupPanel:Lnet/veritran/component/VTUIComponent;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lnet/veritran/component/VTPopupComponent;->popupPanel:Lnet/veritran/component/VTUIComponent;

    const-string v1, "REFRESH_WITHOUT_MEASURE"

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTUIComponent;->executeEvent(Ljava/lang/String;)Z

    .line 61
    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 42
    :cond_3
    const-string v1, "OPEN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    iget-object v1, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    invoke-virtual {v1}, Lnet/veritran/component/VTPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 46
    :cond_4
    iget-object v0, p0, Lnet/veritran/component/VTPopupComponent;->popupPanel:Lnet/veritran/component/VTUIComponent;

    if-nez v0, :cond_5

    .line 47
    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->init()V

    .line 49
    :cond_5
    iget-object v0, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    invoke-virtual {v0}, Lnet/veritran/component/VTPopup;->show()V

    goto :goto_0

    .line 50
    :cond_6
    const-string v1, "CLOSE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    iget-object v1, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    invoke-virtual {v1}, Lnet/veritran/component/VTPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    :cond_7
    iget-object v0, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    invoke-virtual {v0}, Lnet/veritran/component/VTPopup;->cancel()V

    goto :goto_0
.end method

.method public getHeightPercentage()I
    .locals 5

    .prologue
    .line 167
    const/16 v1, 0x64

    .line 169
    .local v1, "percHeight":I
    :try_start_0
    iget-object v2, p0, Lnet/veritran/component/VTPopupComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v3, "height"

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 173
    :goto_0
    return v2

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getVTPopup()Lnet/veritran/component/VTPopup;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidthPercentage()I
    .locals 5

    .prologue
    .line 156
    const/16 v1, 0x64

    .line 158
    .local v1, "percWidth":I
    :try_start_0
    iget-object v2, p0, Lnet/veritran/component/VTPopupComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v3, "width"

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 163
    :goto_0
    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VTPopupComponent"

    const-string v3, "Catched exception empty (fortify)"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 78
    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->unregister()V

    .line 79
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->init()V

    .line 80
    const-string v5, "VTPopupComponent"

    const-string v6, "VTPopupComponent init()"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v3, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;

    invoke-direct {v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;-><init>()V

    .line 83
    .local v3, "panel":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;
    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v5

    check-cast v5, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPopup;

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPopup;->getConfigurationVisualComponentsList()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v5

    .line 82
    invoke-virtual {v3, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->setConfigurationVisualComponentsList(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;)V

    .line 85
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "width"

    aput-object v6, v0, v5

    const-string v5, "height"

    aput-object v5, v0, v8

    const/4 v5, 0x2

    const-string v6, "backgroundColor"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    const-string v6, "textAlign"

    aput-object v6, v0, v5

    .line 88
    .local v0, "fields":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 89
    aget-object v2, v0, v1

    .line 90
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lnet/veritran/component/VTPopupComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    invoke-virtual {v5, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "val":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 92
    invoke-virtual {v3, v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->printAtts()V

    .line 97
    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v5

    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v6

    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->getParent()Lnet/veritran/component/VTUIComponent;

    move-result-object v7

    invoke-virtual {v5, v3, v6, v7}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    move-result-object v5

    iput-object v5, p0, Lnet/veritran/component/VTPopupComponent;->popupPanel:Lnet/veritran/component/VTUIComponent;

    .line 99
    new-instance v5, Lnet/veritran/component/VTPopup;

    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v6

    iget-boolean v7, p0, Lnet/veritran/component/VTPopupComponent;->darkBackground:Z

    invoke-direct {v5, v6, v7}, Lnet/veritran/component/VTPopup;-><init>(Landroid/content/Context;Z)V

    iput-object v5, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    .line 100
    iget-object v5, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    invoke-virtual {v5, v8}, Lnet/veritran/component/VTPopup;->requestWindowFeature(I)Z

    .line 101
    iget-object v5, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    iget-object v6, p0, Lnet/veritran/component/VTPopupComponent;->popupPanel:Lnet/veritran/component/VTUIComponent;

    invoke-virtual {v6}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/veritran/component/VTPopup;->setContentView(Landroid/view/View;)V

    .line 123
    invoke-direct {p0}, Lnet/veritran/component/VTPopupComponent;->initSize()V

    .line 124
    return-void
.end method

.method public setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPopup;)V
    .locals 7
    .param p1, "component"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPopup;

    .prologue
    .line 177
    invoke-super {p0, p1}, Lnet/veritran/component/VTUIComponent;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 178
    const-string v3, "VTPopupComponent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "popipId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/veritran/component/VTPopupComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v6, "componentId"

    invoke-virtual {v5, v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v3, p0, Lnet/veritran/component/VTPopupComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v4, "componentId"

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "popupId":Ljava/lang/String;
    const-string v3, "VTPopupComponent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "popupId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v3

    iget-object v3, v3, Lnet/veritran/VTCommonActivity;->sessionDialogs:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/veritran/component/VTPopupComponent;

    .line 183
    .local v2, "pppc":Lnet/veritran/component/VTPopupComponent;
    const-string v3, "VTPopupComponent"

    const-string v4, "VTPopupComponent init() pppc?"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    if-eqz v2, :cond_0

    .line 185
    const-string v3, "VTPopupComponent"

    const-string v4, "VTPopupComponent init() pppc not null!"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2}, Lnet/veritran/component/VTPopupComponent;->getVTPopup()Lnet/veritran/component/VTPopup;

    move-result-object v1

    .line 187
    .local v1, "ppp":Lnet/veritran/component/VTPopup;
    if-eqz v1, :cond_0

    .line 188
    const-string v3, "VTPopupComponent"

    const-string v4, "VTPopupComponent init() ppp not null!"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iput-object v1, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    .line 192
    .end local v1    # "ppp":Lnet/veritran/component/VTPopup;
    :cond_0
    iget-object v3, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    if-nez v3, :cond_1

    .line 193
    const-string v3, "VTPopupComponent"

    const-string v4, "VTPopupComponent init() new Popup"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v3, Lnet/veritran/component/VTPopup;

    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v4

    iget-boolean v5, p0, Lnet/veritran/component/VTPopupComponent;->darkBackground:Z

    invoke-direct {v3, v4, v5}, Lnet/veritran/component/VTPopup;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lnet/veritran/component/VTPopupComponent;->popup:Lnet/veritran/component/VTPopup;

    .line 197
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTPopupComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v3

    iget-object v3, v3, Lnet/veritran/VTCommonActivity;->sessionDialogs:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method
