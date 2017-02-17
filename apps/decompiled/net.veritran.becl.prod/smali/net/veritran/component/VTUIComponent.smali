.class public abstract Lnet/veritran/component/VTUIComponent;
.super Ljava/lang/Object;
.source "VTUIComponent.java"


# static fields
.field public static final EVENT_CLICK:Ljava/lang/String; = "CLICK"

.field private static final EVENT_HIDE:Ljava/lang/String; = "HIDE"

.field private static final EVENT_REFRESH:Ljava/lang/String; = "REFRESH"

.field private static final EVENT_REFRESH_CONTAINER:Ljava/lang/String; = "REFRESH_CONTAINER"

.field private static final EVENT_REFRESH_CONTENT:Ljava/lang/String; = "REFRESH_CONTENT"

.field public static final EVENT_REFRESH_WITHOUT_MEASURE:Ljava/lang/String; = "REFRESH_WITHOUT_MEASURE"

.field private static final EVENT_SHOW:Ljava/lang/String; = "SHOW"

.field private static final EVENT_SHOW_HIDE:Ljava/lang/String; = "SHOW_HIDE"

.field public static final GROUP_ID_SEPARATOR:Ljava/lang/String; = ","

.field public static final VTUICOMPONENT_BORDER_STYLE_DASHED:I = 0x3

.field public static final VTUICOMPONENT_BORDER_STYLE_DOTTED:I = 0x2

.field public static final VTUICOMPONENT_BORDER_STYLE_NONE:I = 0x0

.field public static final VTUICOMPONENT_BORDER_STYLE_SOLID:I = 0x1


# instance fields
.field private activity:Lnet/veritran/VTCommonActivity;

.field private ara:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

.field public c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

.field private componentId:Ljava/lang/String;

.field private enable:Z

.field private groupId:Ljava/lang/String;

.field private hide:Z

.field private final inheritedAttributes:[Ljava/lang/String;

.field private parentView:Lnet/veritran/component/VTUIComponent;

.field private refreshContainer:Z

.field private refreshContent:Z

.field private refreshMeasure:Z

.field private show:Z

.field private show_hide:Z

.field private visible:Z

.field private visualAreaName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "color"

    aput-object v1, v0, v3

    const-string v1, "font-size"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "font-family"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "font-style"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "font-weight"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "text-decoration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text-align"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "vertical-align"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnet/veritran/component/VTUIComponent;->inheritedAttributes:[Ljava/lang/String;

    .line 112
    iput-boolean v3, p0, Lnet/veritran/component/VTUIComponent;->refreshContent:Z

    .line 113
    iput-boolean v3, p0, Lnet/veritran/component/VTUIComponent;->refreshContainer:Z

    .line 114
    iput-boolean v4, p0, Lnet/veritran/component/VTUIComponent;->refreshMeasure:Z

    .line 115
    iput-boolean v3, p0, Lnet/veritran/component/VTUIComponent;->show:Z

    .line 116
    iput-boolean v3, p0, Lnet/veritran/component/VTUIComponent;->hide:Z

    .line 117
    iput-boolean v3, p0, Lnet/veritran/component/VTUIComponent;->show_hide:Z

    .line 200
    iput-boolean v4, p0, Lnet/veritran/component/VTUIComponent;->visible:Z

    .line 241
    iput-boolean v4, p0, Lnet/veritran/component/VTUIComponent;->enable:Z

    return-void
.end method

.method private defineHeightPercentage(Ljava/lang/String;)V
    .locals 3
    .param p1, "heightAttributeParsed"    # Ljava/lang/String;

    .prologue
    .line 444
    if-eqz p1, :cond_0

    .line 445
    const-string v1, "%"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jnumbers/NumberUtils;->parseFloat(Ljava/lang/CharSequence;)F

    move-result v0

    .line 447
    .local v0, "percHeight":F
    const/4 v1, 0x1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/veritran/component/view/VTUIComponentView;

    invoke-interface {v1, v0}, Lnet/veritran/component/view/VTUIComponentView;->setHeightPercentage(F)V

    .line 451
    .end local v0    # "percHeight":F
    :cond_0
    return-void
.end method

.method private defineWidthPercentage(Ljava/lang/String;)V
    .locals 3
    .param p1, "widthAttributeParsed"    # Ljava/lang/String;

    .prologue
    .line 421
    if-eqz p1, :cond_0

    .line 422
    const-string v1, "%"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jnumbers/NumberUtils;->parseFloat(Ljava/lang/CharSequence;)F

    move-result v0

    .line 424
    .local v0, "percWidth":F
    const/4 v1, 0x1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/veritran/component/view/VTUIComponentView;

    invoke-interface {v1, v0}, Lnet/veritran/component/view/VTUIComponentView;->setWidthPercentage(F)V

    .line 428
    .end local v0    # "percWidth":F
    :cond_0
    return-void
.end method

.method private setEnable(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lnet/veritran/component/VTUIComponent;->enable:Z

    .line 245
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lnet/veritran/component/VTUIComponent;->enable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 249
    :cond_0
    iget-boolean v0, p0, Lnet/veritran/component/VTUIComponent;->enable:Z

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->enable()V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->disable()V

    goto :goto_0
.end method

.method private setVisible(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lnet/veritran/component/VTUIComponent;->visible:Z

    .line 203
    iget-boolean v0, p0, Lnet/veritran/component/VTUIComponent;->visible:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->show()V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->hide()V

    goto :goto_0
.end method


# virtual methods
.method public calculatePercentage(Ljava/lang/String;)Ljava/lang/Float;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 506
    if-eqz p1, :cond_0

    .line 507
    const-string v1, "%"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jnumbers/NumberUtils;->parseFloat(Ljava/lang/CharSequence;)F

    move-result v0

    .line 509
    .local v0, "percHeight":F
    const/4 v1, 0x1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 510
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 514
    .end local v0    # "percHeight":F
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkEventType(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 132
    const-string v0, "REFRESH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iput-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->refreshContent:Z

    .line 134
    iput-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->refreshContainer:Z

    .line 135
    iput-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->refreshMeasure:Z

    .line 154
    :goto_0
    const-string v0, "SHOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    iput-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->show:Z

    .line 156
    iput-boolean v1, p0, Lnet/veritran/component/VTUIComponent;->hide:Z

    .line 157
    iput-boolean v1, p0, Lnet/veritran/component/VTUIComponent;->show_hide:Z

    .line 172
    :goto_1
    return-void

    .line 136
    :cond_0
    const-string v0, "REFRESH_CONTENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iput-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->refreshContent:Z

    .line 138
    iput-boolean v1, p0, Lnet/veritran/component/VTUIComponent;->refreshContainer:Z

    .line 139
    iput-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->refreshMeasure:Z

    goto :goto_0

    .line 140
    :cond_1
    const-string v0, "REFRESH_CONTAINER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iput-boolean v1, p0, Lnet/veritran/component/VTUIComponent;->refreshContent:Z

    .line 142
    iput-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->refreshContainer:Z

    .line 143
    iput-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->refreshMeasure:Z

    goto :goto_0

    .line 144
    :cond_2
    const-string v0, "REFRESH_WITHOUT_MEASURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    iput-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->refreshContent:Z

    .line 146
    iput-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->refreshContainer:Z

    .line 147
    iput-boolean v1, p0, Lnet/veritran/component/VTUIComponent;->refreshMeasure:Z

    goto :goto_0

    .line 149
    :cond_3
    iput-boolean v1, p0, Lnet/veritran/component/VTUIComponent;->refreshContent:Z

    .line 150
    iput-boolean v1, p0, Lnet/veritran/component/VTUIComponent;->refreshContainer:Z

    .line 151
    iput-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->refreshMeasure:Z

    goto :goto_0

    .line 158
    :cond_4
    const-string v0, "HIDE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    iput-boolean v1, p0, Lnet/veritran/component/VTUIComponent;->show:Z

    .line 160
    iput-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->hide:Z

    .line 161
    iput-boolean v1, p0, Lnet/veritran/component/VTUIComponent;->show_hide:Z

    goto :goto_1

    .line 162
    :cond_5
    const-string v0, "SHOW_HIDE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    iput-boolean v1, p0, Lnet/veritran/component/VTUIComponent;->show:Z

    .line 164
    iput-boolean v1, p0, Lnet/veritran/component/VTUIComponent;->hide:Z

    .line 165
    iput-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->show_hide:Z

    goto :goto_1

    .line 167
    :cond_6
    iput-boolean v1, p0, Lnet/veritran/component/VTUIComponent;->show:Z

    .line 168
    iput-boolean v1, p0, Lnet/veritran/component/VTUIComponent;->hide:Z

    .line 169
    iput-boolean v1, p0, Lnet/veritran/component/VTUIComponent;->show_hide:Z

    goto :goto_1
.end method

.method public componentWillFinish()V
    .locals 0

    .prologue
    .line 632
    return-void
.end method

.method public defineBackgroundColor()V
    .locals 4

    .prologue
    .line 375
    iget-object v2, p0, Lnet/veritran/component/VTUIComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v3, "BackgroundColor"

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "sBackgroundColor":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-static {v1}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 378
    .local v0, "iBackgroundColor":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/veritran/component/view/VTUIComponentView;

    invoke-interface {v2, v0}, Lnet/veritran/component/view/VTUIComponentView;->setComponentBackgroundColor(Ljava/lang/Integer;)V

    .line 381
    :cond_0
    return-void
.end method

.method public defineBackgroundImage()V
    .locals 3

    .prologue
    .line 384
    iget-object v1, p0, Lnet/veritran/component/VTUIComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "backgroundimage"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "sBackgroundImage":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/veritran/component/view/VTUIComponentView;

    invoke-interface {v1, v0}, Lnet/veritran/component/view/VTUIComponentView;->setComponentBackgroundDrawable(Ljava/lang/String;)V

    .line 391
    :cond_0
    return-void
.end method

.method protected defineEnability()V
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Lnet/veritran/component/VTUIComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "enabled"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "eval":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    iget-object v1, p0, Lnet/veritran/component/VTUIComponent;->ara:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    invoke-static {v0}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lnet/veritran/component/VTUIComponent;->setEnable(Z)V

    .line 264
    :cond_0
    return-void
.end method

.method public defineHeight()V
    .locals 7

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    .line 470
    iget-object v3, p0, Lnet/veritran/component/VTUIComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v4, "height"

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/veritran/component/VTUIComponent;->ara:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v3, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "heightAttributeParsed":Ljava/lang/String;
    invoke-direct {p0, v1}, Lnet/veritran/component/VTUIComponent;->defineHeightPercentage(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/veritran/component/view/VTUIComponentView;

    invoke-interface {v3}, Lnet/veritran/component/view/VTUIComponentView;->getHeightPercentage()F

    move-result v0

    .line 475
    .local v0, "definedHeight":F
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "definedHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lnet/veritran/VTCommonActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v2

    .line 477
    .local v2, "pixelHeight":F
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pixelHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    cmpl-float v3, v0, v6

    if-nez v3, :cond_0

    cmpl-float v3, v2, v6

    if-eqz v3, :cond_0

    .line 479
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/veritran/component/view/VTUIComponentView;

    float-to-int v4, v2

    invoke-interface {v3, v4}, Lnet/veritran/component/view/VTUIComponentView;->setFixedHeight(I)V

    .line 481
    :cond_0
    return-void
.end method

.method public defineMargins()V
    .locals 14

    .prologue
    .line 518
    const/4 v9, 0x0

    .line 519
    .local v9, "percentageLeftMargin":F
    const/4 v10, 0x0

    .line 520
    .local v10, "percentageRightMargin":F
    const/4 v11, 0x0

    .line 521
    .local v11, "percentageTopMargin":F
    const/4 v8, 0x0

    .line 523
    .local v8, "percentageBottomMargin":F
    const/high16 v5, -0x40800000    # -1.0f

    .line 524
    .local v5, "fixedLeftMargin":F
    const/high16 v6, -0x40800000    # -1.0f

    .line 525
    .local v6, "fixedRightMargin":F
    const/high16 v7, -0x40800000    # -1.0f

    .line 526
    .local v7, "fixedTopMargin":F
    const/high16 v4, -0x40800000    # -1.0f

    .line 555
    .local v4, "fixedBottomMargin":F
    iget-object v12, p0, Lnet/veritran/component/VTUIComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v13, "left"

    invoke-virtual {v12, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "attLeft":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 558
    const-string v12, "%"

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/jnumbers/NumberUtils;->parseFloat(Ljava/lang/CharSequence;)F

    move-result v9

    .line 560
    const/4 v12, 0x1

    cmpl-float v12, v9, v12

    if-nez v12, :cond_0

    .line 561
    const/4 v9, 0x0

    .line 563
    iget-object v12, p0, Lnet/veritran/component/VTUIComponent;->activity:Lnet/veritran/VTCommonActivity;

    const/4 v13, 0x1

    invoke-virtual {v12, v1, v13}, Lnet/veritran/VTCommonActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v5

    .line 565
    const/4 v12, 0x1

    cmpl-float v12, v5, v12

    if-nez v12, :cond_0

    .line 566
    const/high16 v5, -0x40800000    # -1.0f

    .line 571
    :cond_0
    iget-object v12, p0, Lnet/veritran/component/VTUIComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v13, "right"

    invoke-virtual {v12, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "attRight":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 574
    const-string v12, "%"

    const-string v13, ""

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/jnumbers/NumberUtils;->parseFloat(Ljava/lang/CharSequence;)F

    move-result v10

    .line 576
    const/4 v12, 0x1

    cmpl-float v12, v10, v12

    if-nez v12, :cond_1

    .line 577
    const/4 v10, 0x0

    .line 579
    iget-object v12, p0, Lnet/veritran/component/VTUIComponent;->activity:Lnet/veritran/VTCommonActivity;

    const/4 v13, 0x1

    invoke-virtual {v12, v2, v13}, Lnet/veritran/VTCommonActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v6

    .line 581
    const/4 v12, 0x1

    cmpl-float v12, v6, v12

    if-nez v12, :cond_1

    .line 582
    const/high16 v6, -0x40800000    # -1.0f

    .line 587
    :cond_1
    iget-object v12, p0, Lnet/veritran/component/VTUIComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v13, "top"

    invoke-virtual {v12, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, "attTop":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 590
    const-string v12, "%"

    const-string v13, ""

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/jnumbers/NumberUtils;->parseFloat(Ljava/lang/CharSequence;)F

    move-result v11

    .line 592
    const/4 v12, 0x1

    cmpl-float v12, v11, v12

    if-nez v12, :cond_2

    .line 593
    const/4 v11, 0x0

    .line 595
    iget-object v12, p0, Lnet/veritran/component/VTUIComponent;->activity:Lnet/veritran/VTCommonActivity;

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Lnet/veritran/VTCommonActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v7

    .line 597
    const/4 v12, 0x1

    cmpl-float v12, v7, v12

    if-nez v12, :cond_2

    .line 598
    const/high16 v7, -0x40800000    # -1.0f

    .line 603
    :cond_2
    iget-object v12, p0, Lnet/veritran/component/VTUIComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v13, "bottom"

    invoke-virtual {v12, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "attBottom":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 606
    const-string v12, "%"

    const-string v13, ""

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/jnumbers/NumberUtils;->parseFloat(Ljava/lang/CharSequence;)F

    move-result v8

    .line 608
    const/4 v12, 0x1

    cmpl-float v12, v8, v12

    if-nez v12, :cond_3

    .line 609
    const/4 v8, 0x0

    .line 611
    iget-object v12, p0, Lnet/veritran/component/VTUIComponent;->activity:Lnet/veritran/VTCommonActivity;

    const/4 v13, 0x0

    invoke-virtual {v12, v0, v13}, Lnet/veritran/VTCommonActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v4

    .line 613
    const/4 v12, 0x1

    cmpl-float v12, v4, v12

    if-nez v12, :cond_3

    .line 614
    const/high16 v4, -0x40800000    # -1.0f

    .line 619
    :cond_3
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v12

    check-cast v12, Lnet/veritran/component/view/VTUIComponentView;

    invoke-interface {v12, v9, v11, v10, v8}, Lnet/veritran/component/view/VTUIComponentView;->setPercentageMargins(FFFF)V

    .line 624
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v12

    check-cast v12, Lnet/veritran/component/view/VTUIComponentView;

    invoke-interface {v12, v5, v7, v6, v4}, Lnet/veritran/component/view/VTUIComponentView;->setFixedMargins(FFFF)V

    .line 628
    return-void
.end method

.method public defineTextAlign()V
    .locals 3

    .prologue
    .line 394
    iget-object v1, p0, Lnet/veritran/component/VTUIComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "textalign"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "sTextAlign":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/veritran/component/view/VTUIComponentView;

    invoke-interface {v1, v0}, Lnet/veritran/component/view/VTUIComponentView;->setComponentInnerAlignment(Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public defineVerticalAlign()V
    .locals 3

    .prologue
    .line 403
    iget-object v1, p0, Lnet/veritran/component/VTUIComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "verticalalign"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "sVerticalAlign":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/veritran/component/view/VTUIComponentView;

    invoke-interface {v1, v0}, Lnet/veritran/component/view/VTUIComponentView;->setComponentVerticalAlignment(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method protected defineVisibility()V
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lnet/veritran/component/VTUIComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "visible"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "eval":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lnet/veritran/component/VTUIComponent;->ara:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-static {v0}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lnet/veritran/component/VTUIComponent;->setVisible(Z)V

    .line 228
    :cond_0
    return-void
.end method

.method public defineWidth()V
    .locals 7

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    .line 455
    iget-object v3, p0, Lnet/veritran/component/VTUIComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v4, "width"

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/veritran/component/VTUIComponent;->ara:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v3, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "widthAttributeParsed":Ljava/lang/String;
    invoke-direct {p0, v2}, Lnet/veritran/component/VTUIComponent;->defineWidthPercentage(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/veritran/component/view/VTUIComponentView;

    invoke-interface {v3}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v0

    .line 460
    .local v0, "definedWidth":F
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "definedWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lnet/veritran/VTCommonActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v1

    .line 462
    .local v1, "pixelWidth":F
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pixelWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    cmpl-float v3, v0, v6

    if-nez v3, :cond_0

    cmpl-float v3, v1, v6

    if-eqz v3, :cond_0

    .line 464
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/veritran/component/view/VTUIComponentView;

    float-to-int v4, v1

    invoke-interface {v3, v4}, Lnet/veritran/component/view/VTUIComponentView;->setFixedWidth(I)V

    .line 466
    :cond_0
    return-void
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 238
    :cond_0
    return-void
.end method

.method public drawToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "backgroundColor"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 233
    :cond_0
    return-void
.end method

.method public executeEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getActivity()Lnet/veritran/VTCommonActivity;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lnet/veritran/component/VTUIComponent;->activity:Lnet/veritran/VTCommonActivity;

    return-object v0
.end method

.method public getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lnet/veritran/component/VTUIComponent;->ara:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    return-object v0
.end method

.method public getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lnet/veritran/component/VTUIComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    return-object v0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lnet/veritran/component/VTUIComponent;->componentId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lnet/veritran/component/VTUIComponent;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lnet/veritran/component/VTUIComponent;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lnet/veritran/component/VTUIComponent;->parentView:Lnet/veritran/component/VTUIComponent;

    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public getVisualAreaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lnet/veritran/component/VTUIComponent;->visualAreaName:Ljava/lang/String;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lnet/veritran/component/VTUIComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "componentid"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/veritran/component/VTUIComponent;->setComponentId(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lnet/veritran/component/VTUIComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "groupid"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/veritran/component/VTUIComponent;->setGroupId(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->supportEvents()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->keepStatusesToBundle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->supportDrawingToBitmap()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->sessionComponents:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_1
    return-void
.end method

.method public isRefreshEvent()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lnet/veritran/component/VTUIComponent;->refreshContent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/veritran/component/VTUIComponent;->refreshContainer:Z

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    const/4 v0, 0x1

    .line 178
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibilityEvent()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lnet/veritran/component/VTUIComponent;->show:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/veritran/component/VTUIComponent;->hide:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/veritran/component/VTUIComponent;->show_hide:Z

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepStatusesToBundle()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public refreshContainer()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lnet/veritran/component/VTUIComponent;->refreshContainer:Z

    return v0
.end method

.method public refreshContent()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lnet/veritran/component/VTUIComponent;->refreshContent:Z

    return v0
.end method

.method public refreshMeasure()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lnet/veritran/component/VTUIComponent;->refreshMeasure:Z

    return v0
.end method

.method public restoreStatusFromBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 89
    return-void
.end method

.method public saveStatusToBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 85
    return-void
.end method

.method public setActivity(Lnet/veritran/VTCommonActivity;)V
    .locals 0
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 363
    iput-object p1, p0, Lnet/veritran/component/VTUIComponent;->activity:Lnet/veritran/VTCommonActivity;

    .line 364
    return-void
.end method

.method public setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V
    .locals 0
    .param p1, "ara"    # Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    .prologue
    .line 351
    iput-object p1, p0, Lnet/veritran/component/VTUIComponent;->ara:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    .line 352
    return-void
.end method

.method public setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V
    .locals 0
    .param p1, "component"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    .prologue
    .line 371
    iput-object p1, p0, Lnet/veritran/component/VTUIComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    .line 372
    return-void
.end method

.method public setComponentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "componentId"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lnet/veritran/component/VTUIComponent;->componentId:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 308
    iput-object p1, p0, Lnet/veritran/component/VTUIComponent;->groupId:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setParent(Lnet/veritran/component/VTUIComponent;)V
    .locals 11
    .param p1, "parent"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    .line 317
    iput-object p1, p0, Lnet/veritran/component/VTUIComponent;->parentView:Lnet/veritran/component/VTUIComponent;

    .line 318
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 319
    const-string v4, "VTUIComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NO COMPONENT! FOR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    if-nez p1, :cond_2

    .line 323
    const-string v4, "VTUIComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NO PARENT FOR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v4

    if-nez v4, :cond_3

    .line 327
    const-string v4, "VTUIComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NO PARENT COMPONENT! FOR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_3
    iget-object v5, p0, Lnet/veritran/component/VTUIComponent;->inheritedAttributes:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    .line 331
    .local v0, "att":Ljava/lang/String;
    const-string v7, "VTUIComponent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "att ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v7

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "currValue":Ljava/lang/String;
    const-string v7, "VTUIComponent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "curremt att ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "](value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    if-nez v1, :cond_4

    .line 335
    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v7

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "parentValue":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 337
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v7

    invoke-virtual {v7, v0, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v7, "VTUIComponent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inherited parent\'s att ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "](value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") was added to component "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v9

    const-string v10, "tag"

    invoke-virtual {v9, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .end local v3    # "parentValue":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 340
    .restart local v3    # "parentValue":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v7

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getInheritedAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "inheritedAttValue":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 342
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v7

    invoke-virtual {v7, v0, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v7, "VTUIComponent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inherited att ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "](value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") was added to component "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v9

    const-string v10, "tag"

    invoke-virtual {v9, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setVisualAreaName(Ljava/lang/String;)V
    .locals 0
    .param p1, "vaName"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lnet/veritran/component/VTUIComponent;->visualAreaName:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :cond_0
    return-void
.end method

.method public supportDrawingToBitmap()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->supportEvents()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->keepStatusesToBundle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->supportDrawingToBitmap()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->sessionComponents:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lnet/veritran/component/VTUIComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1
    return-void
.end method

.method public updateVisibility()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    iget-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->show:Z

    if-eqz v2, :cond_1

    .line 192
    invoke-direct {p0, v0}, Lnet/veritran/component/VTUIComponent;->setVisible(Z)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->hide:Z

    if-eqz v2, :cond_2

    .line 194
    invoke-direct {p0, v1}, Lnet/veritran/component/VTUIComponent;->setVisible(Z)V

    goto :goto_0

    .line 195
    :cond_2
    iget-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->show_hide:Z

    if-eqz v2, :cond_0

    .line 196
    iget-boolean v2, p0, Lnet/veritran/component/VTUIComponent;->visible:Z

    if-nez v2, :cond_3

    :goto_1
    invoke-direct {p0, v0}, Lnet/veritran/component/VTUIComponent;->setVisible(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
