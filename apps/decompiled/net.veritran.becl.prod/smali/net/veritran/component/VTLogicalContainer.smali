.class public Lnet/veritran/component/VTLogicalContainer;
.super Lnet/veritran/component/VTUIComponentContainer;
.source "VTLogicalContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTLogicalContainer"


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

.field private direction:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;

.field private movement1:I

.field private movement2:I

.field private type:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

.field private vtLogicalContainerView:Lnet/veritran/component/view/VTLogicalContainerView;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponentContainer;-><init>()V

    .line 20
    iput v0, p0, Lnet/veritran/component/VTLogicalContainer;->movement1:I

    .line 21
    iput v0, p0, Lnet/veritran/component/VTLogicalContainer;->movement2:I

    .line 22
    sget-object v0, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;->Horizontal:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;

    iput-object v0, p0, Lnet/veritran/component/VTLogicalContainer;->direction:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;

    .line 23
    sget-object v0, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;->Undefined:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    iput-object v0, p0, Lnet/veritran/component/VTLogicalContainer;->type:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/VTLogicalContainer;->children:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTLogicalContainer;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 64
    return-void
.end method

.method private initLogicalContainer()V
    .locals 7

    .prologue
    .line 89
    iget-object v5, p0, Lnet/veritran/component/VTLogicalContainer;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v6, "movement1"

    invoke-virtual {v5, v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lnet/veritran/component/VTLogicalContainer;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "movement1Str":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lnet/veritran/component/VTLogicalContainer;->movement1:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    iget-object v5, p0, Lnet/veritran/component/VTLogicalContainer;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v6, "movement2"

    invoke-virtual {v5, v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lnet/veritran/component/VTLogicalContainer;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "movement2Str":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lnet/veritran/component/VTLogicalContainer;->movement2:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :goto_1
    iget-object v5, p0, Lnet/veritran/component/VTLogicalContainer;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lnet/veritran/component/VTLogicalContainer;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "typeStr":Ljava/lang/String;
    const-string v5, "TwoPanelsSwipe"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    sget-object v5, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;->TwoPanelsSwipe:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    iput-object v5, p0, Lnet/veritran/component/VTLogicalContainer;->type:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    .line 120
    :cond_0
    iget-object v5, p0, Lnet/veritran/component/VTLogicalContainer;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v6, "direction"

    invoke-virtual {v5, v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lnet/veritran/component/VTLogicalContainer;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "directionStr":Ljava/lang/String;
    const-string v5, "V"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    sget-object v5, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;->Vertical:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;

    iput-object v5, p0, Lnet/veritran/component/VTLogicalContainer;->direction:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;

    .line 126
    :cond_1
    return-void

    .line 95
    .end local v0    # "directionStr":Ljava/lang/String;
    .end local v3    # "movement2Str":Ljava/lang/String;
    .end local v4    # "typeStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const-string v5, "VTLogicalContainer"

    const-string v6, "Number format exception, movement1 not set"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .restart local v3    # "movement2Str":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 109
    .restart local v1    # "ex":Ljava/lang/NumberFormatException;
    const-string v5, "VTLogicalContainer"

    const-string v6, "Number format exception, movement2  not set"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public addChild(Lnet/veritran/component/VTUIComponent;)V
    .locals 1
    .param p1, "child"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    .line 68
    iget-object v0, p0, Lnet/veritran/component/VTLogicalContainer;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public executeEvent(Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTLogicalContainer;->checkEventType(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lnet/veritran/component/VTLogicalContainer;->isRefreshEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    invoke-virtual {p0}, Lnet/veritran/component/VTLogicalContainer;->refreshContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-direct {p0}, Lnet/veritran/component/VTLogicalContainer;->initLogicalContainer()V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/VTLogicalContainer;->refreshContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lnet/veritran/component/VTLogicalContainer;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTUIComponent;

    .line 45
    .local v0, "component":Lnet/veritran/component/VTUIComponent;
    const-string v2, "REFRESH_WITHOUT_MEASURE"

    invoke-virtual {v0, v2}, Lnet/veritran/component/VTUIComponent;->executeEvent(Ljava/lang/String;)Z

    goto :goto_0

    .line 48
    .end local v0    # "component":Lnet/veritran/component/VTUIComponent;
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTLogicalContainer;->refreshMeasure()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {p0}, Lnet/veritran/component/VTLogicalContainer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 50
    invoke-virtual {p0}, Lnet/veritran/component/VTLogicalContainer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 58
    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    return v1

    .line 52
    :cond_3
    invoke-virtual {p0}, Lnet/veritran/component/VTLogicalContainer;->isVisibilityEvent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    invoke-virtual {p0}, Lnet/veritran/component/VTLogicalContainer;->updateVisibility()V

    goto :goto_1

    .line 55
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getChildAt(I)Lnet/veritran/component/VTUIComponent;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lnet/veritran/component/VTLogicalContainer;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTUIComponent;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lnet/veritran/component/VTLogicalContainer;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lnet/veritran/component/VTLogicalContainer;->vtLogicalContainerView:Lnet/veritran/component/view/VTLogicalContainerView;

    return-object v0
.end method

.method public init()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 130
    invoke-super {p0}, Lnet/veritran/component/VTUIComponentContainer;->init()V

    .line 132
    invoke-direct {p0}, Lnet/veritran/component/VTLogicalContainer;->initLogicalContainer()V

    .line 134
    new-instance v6, Lnet/veritran/component/view/VTLogicalContainerView;

    invoke-virtual {p0}, Lnet/veritran/component/VTLogicalContainer;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Lnet/veritran/component/view/VTLogicalContainerView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lnet/veritran/component/VTLogicalContainer;->vtLogicalContainerView:Lnet/veritran/component/view/VTLogicalContainerView;

    .line 136
    iget-object v6, p0, Lnet/veritran/component/VTLogicalContainer;->vtLogicalContainerView:Lnet/veritran/component/view/VTLogicalContainerView;

    iget v7, p0, Lnet/veritran/component/VTLogicalContainer;->movement1:I

    iget v8, p0, Lnet/veritran/component/VTLogicalContainer;->movement2:I

    iget-object v9, p0, Lnet/veritran/component/VTLogicalContainer;->type:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    iget-object v10, p0, Lnet/veritran/component/VTLogicalContainer;->direction:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;

    invoke-virtual {v6, v7, v8, v9, v10}, Lnet/veritran/component/view/VTLogicalContainerView;->setMovements(IILnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;)V

    .line 138
    iget-object v6, p0, Lnet/veritran/component/VTLogicalContainer;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v6, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTLogicalContainer;

    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTLogicalContainer;->getConfigurationVisualComponentsList()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v4

    .line 139
    .local v4, "size":I
    new-instance v3, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-direct {v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;-><init>()V

    .line 140
    .local v3, "newList":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 141
    iget-object v6, p0, Lnet/veritran/component/VTLogicalContainer;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v6, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTLogicalContainer;

    .line 142
    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTLogicalContainer;->getConfigurationVisualComponentsList()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v5

    .line 143
    .local v5, "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VTSLIDEPANEL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 144
    invoke-virtual {v3, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 140
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/VTLogicalContainer;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v6

    invoke-virtual {v6, v5, v11, v11}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    goto :goto_1

    .line 150
    .end local v5    # "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_1
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v4

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v2, "linearComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;>;"
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_2

    .line 155
    const-string v6, "VTLogicalContainer"

    const-string v7, "paso 2"

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v3, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v5

    .line 158
    .restart local v5    # "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    const-string v6, "VTLogicalContainer"

    const-string v7, "paso 3"

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 163
    .end local v5    # "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_4

    .line 164
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 166
    const-string v6, "VTLogicalContainer"

    const-string v7, "paso 4"

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lnet/veritran/component/VTLogicalContainer;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v7

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    .line 168
    invoke-virtual {p0}, Lnet/veritran/component/VTLogicalContainer;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    .line 167
    invoke-virtual {v7, v6, v8, p0}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    move-result-object v0

    .line 171
    .local v0, "comp":Lnet/veritran/component/VTUIComponent;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 173
    iget-object v6, p0, Lnet/veritran/component/VTLogicalContainer;->vtLogicalContainerView:Lnet/veritran/component/view/VTLogicalContainerView;

    invoke-virtual {v0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/veritran/component/view/VTLogicalContainerView;->addView(Landroid/view/View;)V

    .line 174
    iget-object v6, p0, Lnet/veritran/component/VTLogicalContainer;->children:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 178
    .end local v0    # "comp":Lnet/veritran/component/VTUIComponent;
    :cond_4
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
