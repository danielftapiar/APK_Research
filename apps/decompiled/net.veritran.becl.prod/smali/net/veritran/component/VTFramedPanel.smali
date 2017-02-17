.class public Lnet/veritran/component/VTFramedPanel;
.super Lnet/veritran/component/VTUIComponentContainer;
.source "VTFramedPanel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTFramedPanel"


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

.field private vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponentContainer;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/VTFramedPanel;->children:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTFramedPanel;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 59
    return-void
.end method

.method private initFramedPanel()V
    .locals 10

    .prologue
    const/16 v1, 0x3ea

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 166
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    iget-object v5, p0, Lnet/veritran/component/VTFramedPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "frameImage"

    invoke-virtual {v5, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTFramedPanelView;->setFrameImageName(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    iget-object v5, p0, Lnet/veritran/component/VTFramedPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "frameResourceOrigin"

    invoke-virtual {v5, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTFramedPanelView;->setFrameImageOrigin(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "frameWidth"

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "frameWidthsStr":Ljava/lang/String;
    const-string v0, ";"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, "frameWidths":[Ljava/lang/String;
    array-length v0, v6

    const/4 v5, 0x4

    if-ge v0, v5, :cond_0

    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error with the configuration attributes for FramedPanel"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    aget-object v5, v6, v9

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTFramedPanelView;->setFrameWidthLeft(F)V

    .line 180
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    const/4 v5, 0x1

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTFramedPanelView;->setFrameWidthTop(F)V

    .line 181
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    const/4 v5, 0x2

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTFramedPanelView;->setFrameWidthRight(F)V

    .line 182
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    const/4 v5, 0x3

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTFramedPanelView;->setFrameWidthBottom(F)V

    .line 184
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    iget-object v5, p0, Lnet/veritran/component/VTFramedPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "titleValue"

    invoke-virtual {v5, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTFramedPanelView;->setTitleValue(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    iget-object v5, p0, Lnet/veritran/component/VTFramedPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "titleFontSize"

    invoke-virtual {v5, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTFramedPanelView;->setTitleFontSize(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    iget-object v5, p0, Lnet/veritran/component/VTFramedPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "titleFontFamily"

    invoke-virtual {v5, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTFramedPanelView;->setTitleFontFamily(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    iget-object v5, p0, Lnet/veritran/component/VTFramedPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "titleFontColor"

    invoke-virtual {v5, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTFramedPanelView;->setTitleFontColor(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    iget-object v5, p0, Lnet/veritran/component/VTFramedPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "titleFontStyle"

    invoke-virtual {v5, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTFramedPanelView;->setTitleFontStyle(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    iget-object v5, p0, Lnet/veritran/component/VTFramedPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "titleFontWeight"

    invoke-virtual {v5, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTFramedPanelView;->setTitleFontWeight(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->defineWidth()V

    .line 193
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->defineHeight()V

    .line 195
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->defineBackgroundColor()V

    .line 196
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->defineBackgroundImage()V

    .line 197
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->defineTextAlign()V

    .line 198
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->defineVerticalAlign()V

    .line 200
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->defineMargins()V

    .line 201
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->definePaddings()V

    .line 202
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->defineVisibility()V

    .line 204
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "Onclick"

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "onClick":Ljava/lang/String;
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    invoke-virtual {v0, v4}, Lnet/veritran/component/view/VTFramedPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    invoke-virtual {v0, v9}, Lnet/veritran/component/view/VTFramedPanelView;->setClickable(Z)V

    .line 207
    if-eqz v2, :cond_1

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    invoke-static {v2, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    .line 209
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "submit"

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "formId":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 211
    invoke-static {v3, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 212
    iget-object v8, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    new-instance v0, Lnet/veritran/component/VTButtonOnClickListener;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lnet/veritran/component/view/VTFramedPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .end local v3    # "formId":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 216
    .restart local v3    # "formId":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    new-instance v5, Lnet/veritran/component/VTButtonOnClickListener;

    invoke-direct {v5, v1, v2, v4, v4}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTFramedPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addChild(Lnet/veritran/component/VTUIComponent;)V
    .locals 1
    .param p1, "child"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    .line 67
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public executeEvent(Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTFramedPanel;->checkEventType(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->isRefreshEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->refreshContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-direct {p0}, Lnet/veritran/component/VTFramedPanel;->initFramedPanel()V

    .line 38
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->refreshContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lnet/veritran/component/VTFramedPanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTUIComponent;

    .line 40
    .local v0, "component":Lnet/veritran/component/VTUIComponent;
    const-string v2, "REFRESH_WITHOUT_MEASURE"

    invoke-virtual {v0, v2}, Lnet/veritran/component/VTUIComponent;->executeEvent(Ljava/lang/String;)Z

    goto :goto_0

    .line 43
    .end local v0    # "component":Lnet/veritran/component/VTUIComponent;
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->refreshMeasure()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 45
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 53
    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    return v1

    .line 47
    :cond_3
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->isVisibilityEvent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->updateVisibility()V

    goto :goto_1

    .line 50
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getChildAt(I)Lnet/veritran/component/VTUIComponent;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTUIComponent;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    return-object v0
.end method

.method public init()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 87
    invoke-super {p0}, Lnet/veritran/component/VTUIComponentContainer;->init()V

    .line 89
    new-instance v7, Lnet/veritran/component/view/VTFramedPanelView;

    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Lnet/veritran/component/view/VTFramedPanelView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    .line 90
    iget-object v7, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    const-string v8, "vtframedpanel-vertical"

    invoke-virtual {v7, v8}, Lnet/veritran/component/view/VTFramedPanelView;->setTag(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->getParent()Lnet/veritran/component/VTUIComponent;

    move-result-object v7

    if-nez v7, :cond_0

    .line 92
    iget-object v7, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    invoke-virtual {v7, v10}, Lnet/veritran/component/view/VTFramedPanelView;->setRoot(Z)V

    .line 96
    :cond_0
    invoke-direct {p0}, Lnet/veritran/component/VTFramedPanel;->initFramedPanel()V

    .line 98
    new-instance v4, Lnet/veritran/component/view/VTPanelRowView;

    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v7

    invoke-direct {v4, v7}, Lnet/veritran/component/view/VTPanelRowView;-><init>(Landroid/content/Context;)V

    .line 99
    .local v4, "llhorizontal":Lnet/veritran/component/view/VTPanelRowView;
    const-string v7, "VTFramedPanel"

    const-string v8, "paso 1"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v3, "linearComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;>;"
    iget-object v7, p0, Lnet/veritran/component/VTFramedPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v7, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTFramedPanel;

    invoke-virtual {v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTFramedPanel;->getConfigurationVisualComponentsList()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v5

    .line 102
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_6

    .line 103
    const-string v7, "VTFramedPanel"

    const-string v8, "paso 2"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v7, p0, Lnet/veritran/component/VTFramedPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v7, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTFramedPanel;

    .line 105
    invoke-virtual {v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTFramedPanel;->getConfigurationVisualComponentsList()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v7

    invoke-virtual {v7, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v6

    .line 106
    .local v6, "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "VTLINEBREAK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 107
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v10, :cond_2

    .line 108
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v8

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    .line 109
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    .line 108
    invoke-virtual {v8, v7, v9, p0}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    move-result-object v0

    .line 111
    .local v0, "comp":Lnet/veritran/component/VTUIComponent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 112
    iget-object v7, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    invoke-virtual {v0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/veritran/component/view/VTFramedPanelView;->addView(Landroid/view/View;)V

    .line 113
    iget-object v7, p0, Lnet/veritran/component/VTFramedPanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v0    # "comp":Lnet/veritran/component/VTUIComponent;
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 102
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_2
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 117
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v8

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    .line 118
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    .line 117
    invoke-virtual {v8, v7, v9, p0}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    move-result-object v0

    .line 120
    .restart local v0    # "comp":Lnet/veritran/component/VTUIComponent;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 121
    invoke-virtual {v0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v7}, Lnet/veritran/component/view/VTPanelRowView;->addView(Landroid/view/View;)V

    .line 122
    iget-object v7, p0, Lnet/veritran/component/VTFramedPanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 125
    .end local v0    # "comp":Lnet/veritran/component/VTUIComponent;
    :cond_4
    const-string v7, "VTFramedPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "llhorizontal:childs:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lnet/veritran/component/view/VTPanelRowView;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v4}, Lnet/veritran/component/view/VTPanelRowView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 127
    iget-object v7, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    invoke-virtual {v7, v4}, Lnet/veritran/component/view/VTFramedPanelView;->addView(Landroid/view/View;)V

    .line 128
    new-instance v4, Lnet/veritran/component/view/VTPanelRowView;

    .end local v4    # "llhorizontal":Lnet/veritran/component/view/VTPanelRowView;
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v7

    invoke-direct {v4, v7}, Lnet/veritran/component/view/VTPanelRowView;-><init>(Landroid/content/Context;)V

    .restart local v4    # "llhorizontal":Lnet/veritran/component/view/VTPanelRowView;
    goto :goto_1

    .line 133
    .end local v2    # "j":I
    :cond_5
    const-string v7, "VTFramedPanel"

    const-string v8, "paso 3"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 137
    .end local v6    # "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v10, :cond_7

    .line 138
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v10, :cond_8

    .line 139
    const-string v7, "VTFramedPanel"

    const-string v8, "paso 4"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v8

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    .line 141
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    .line 140
    invoke-virtual {v8, v7, v9, p0}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    move-result-object v0

    .line 143
    .restart local v0    # "comp":Lnet/veritran/component/VTUIComponent;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 144
    iget-object v7, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    invoke-virtual {v0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/veritran/component/view/VTFramedPanelView;->addView(Landroid/view/View;)V

    .line 145
    iget-object v7, p0, Lnet/veritran/component/VTFramedPanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v0    # "comp":Lnet/veritran/component/VTUIComponent;
    :cond_7
    :goto_4
    return-void

    .line 148
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_a

    .line 149
    const-string v7, "VTFramedPanel"

    const-string v8, "paso 5"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v8

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    .line 151
    invoke-virtual {p0}, Lnet/veritran/component/VTFramedPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    .line 150
    invoke-virtual {v8, v7, v9, p0}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    move-result-object v0

    .line 153
    .restart local v0    # "comp":Lnet/veritran/component/VTUIComponent;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 154
    invoke-virtual {v0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v7}, Lnet/veritran/component/view/VTPanelRowView;->addView(Landroid/view/View;)V

    .line 155
    iget-object v7, p0, Lnet/veritran/component/VTFramedPanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 158
    .end local v0    # "comp":Lnet/veritran/component/VTUIComponent;
    :cond_a
    const-string v7, "VTFramedPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "llhorizontal::childs :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lnet/veritran/component/view/VTPanelRowView;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v7, p0, Lnet/veritran/component/VTFramedPanel;->vtFramedPanelView:Lnet/veritran/component/view/VTFramedPanelView;

    invoke-virtual {v7, v4}, Lnet/veritran/component/view/VTFramedPanelView;->addView(Landroid/view/View;)V

    goto :goto_4
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
