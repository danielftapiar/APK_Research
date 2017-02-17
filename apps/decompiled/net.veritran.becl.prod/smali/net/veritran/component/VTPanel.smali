.class public Lnet/veritran/component/VTPanel;
.super Lnet/veritran/component/VTUIComponentContainer;
.source "VTPanel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTPanel"


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

.field private vtPanelView:Lnet/veritran/component/view/VTPanelView;

.field private vtScroller:Lnet/veritran/component/view/VTScrollPanelWrapper;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 118
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponentContainer;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/VTPanel;->children:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTPanel;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 121
    return-void
.end method

.method private initPanel()V
    .locals 15

    .prologue
    const/16 v1, 0x3ea

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 265
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->defineWidth()V

    .line 266
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->defineHeight()V

    .line 268
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->defineBackgroundColor()V

    .line 269
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->defineBackgroundImage()V

    .line 270
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->defineTextAlign()V

    .line 271
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->defineVerticalAlign()V

    .line 273
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->defineVisibility()V

    .line 274
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->defineMargins()V

    .line 275
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->definePaddings()V

    .line 277
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "Onclick"

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "onClick":Ljava/lang/String;
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, v4}, Lnet/veritran/component/view/VTPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, v13}, Lnet/veritran/component/view/VTPanelView;->setClickable(Z)V

    .line 280
    if-eqz v2, :cond_0

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-static {v2, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    .line 282
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "submit"

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "formId":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 284
    invoke-static {v3, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 285
    iget-object v14, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    new-instance v0, Lnet/veritran/component/VTButtonOnClickListener;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Lnet/veritran/component/view/VTPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    .end local v3    # "formId":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "backgroundAspectKeep"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, "backgroundAspectKeep":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    invoke-static {v6, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 296
    if-eqz v6, :cond_1

    const-string v0, "yes"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, v12}, Lnet/veritran/component/view/VTPanelView;->setBackgroundAspectKeep(Z)V

    .line 298
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "backgroundHorizontalAlign"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 299
    .local v7, "backgroundHorizontalAlign":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    invoke-static {v7, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    .line 300
    const-string v0, "left"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTPanelView;->setBackgroundHorizontalAlign(Ljava/lang/String;)V

    .line 307
    :goto_1
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "backgroundVerticalAlign"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, "backgroundVerticalAlign":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    invoke-static {v8, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 309
    const-string v0, "top"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 310
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    const-string v1, "T"

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTPanelView;->setBackgroundVerticalAlign(Ljava/lang/String;)V

    .line 318
    .end local v7    # "backgroundHorizontalAlign":Ljava/lang/String;
    .end local v8    # "backgroundVerticalAlign":Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "borderColor"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 319
    .local v9, "borderColor":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    invoke-static {v9, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v9

    .line 321
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    invoke-static {v9}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 325
    .local v10, "borderColorResolved":Ljava/lang/Integer;
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "borderStyle"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 326
    .local v11, "borderStyle":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    invoke-static {v11, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v11

    .line 328
    if-eqz v11, :cond_8

    const-string v0, "rounded"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 329
    .local v12, "rounded":Z
    :goto_3
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, v10, v12}, Lnet/veritran/component/view/VTPanelView;->setBorderColor(Ljava/lang/Integer;Z)V

    .line 332
    .end local v10    # "borderColorResolved":Ljava/lang/Integer;
    .end local v11    # "borderStyle":Ljava/lang/String;
    .end local v12    # "rounded":Z
    :cond_2
    return-void

    .line 289
    .end local v6    # "backgroundAspectKeep":Ljava/lang/String;
    .end local v9    # "borderColor":Ljava/lang/String;
    .restart local v3    # "formId":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    new-instance v5, Lnet/veritran/component/VTButtonOnClickListener;

    invoke-direct {v5, v1, v2, v4, v4}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 302
    .end local v3    # "formId":Ljava/lang/String;
    .restart local v6    # "backgroundAspectKeep":Ljava/lang/String;
    .restart local v7    # "backgroundHorizontalAlign":Ljava/lang/String;
    :cond_4
    const-string v0, "right"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 303
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    const-string v1, "R"

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTPanelView;->setBackgroundHorizontalAlign(Ljava/lang/String;)V

    goto :goto_1

    .line 305
    :cond_5
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    const-string v1, "C"

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTPanelView;->setBackgroundHorizontalAlign(Ljava/lang/String;)V

    goto :goto_1

    .line 311
    .restart local v8    # "backgroundVerticalAlign":Ljava/lang/String;
    :cond_6
    const-string v0, "bottom"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 312
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    const-string v1, "B"

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTPanelView;->setBackgroundVerticalAlign(Ljava/lang/String;)V

    goto :goto_2

    .line 314
    :cond_7
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTPanelView;->setBackgroundVerticalAlign(Ljava/lang/String;)V

    goto :goto_2

    .end local v7    # "backgroundHorizontalAlign":Ljava/lang/String;
    .end local v8    # "backgroundVerticalAlign":Ljava/lang/String;
    .restart local v9    # "borderColor":Ljava/lang/String;
    .restart local v10    # "borderColorResolved":Ljava/lang/Integer;
    .restart local v11    # "borderStyle":Ljava/lang/String;
    :cond_8
    move v12, v13

    .line 328
    goto :goto_3
.end method


# virtual methods
.method public addChild(Lnet/veritran/component/VTUIComponent;)V
    .locals 1
    .param p1, "child"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    .line 129
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public drawToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "backgroundColor"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 49
    iget-object v8, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v8}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    .line 50
    invoke-virtual {v9}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 49
    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 52
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    .local v2, "canvas":Landroid/graphics/Canvas;
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    invoke-static {p1, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {p1}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 60
    .local v4, "iBackgroundColor":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 62
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 66
    .end local v4    # "iBackgroundColor":Ljava/lang/Integer;
    :cond_0
    iget-object v8, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "BackgroundColor"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "sBackgroundColor":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    invoke-static {v5, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-static {v5}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 69
    .restart local v4    # "iBackgroundColor":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    .line 70
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 73
    :cond_1
    iget-object v8, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "backgroundimage"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "sBackgroundImage":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    invoke-static {v6, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 76
    if-eqz v6, :cond_2

    .line 77
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v8

    invoke-virtual {v8}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v8

    iget-object v9, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v9}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v10}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v11

    invoke-virtual {v8, v6, v9, v10, v11}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;IILnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, "backgroundBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 81
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v12, v12, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 82
    .local v7, "src":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    iget-object v8, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v8}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v9}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v9

    invoke-direct {v3, v12, v12, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 84
    .local v3, "dst":Landroid/graphics/Rect;
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v7, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 88
    .end local v0    # "backgroundBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "dst":Landroid/graphics/Rect;
    .end local v7    # "src":Landroid/graphics/Rect;
    :cond_2
    iget-object v8, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v8, v2}, Lnet/veritran/component/view/VTPanelView;->draw(Landroid/graphics/Canvas;)V

    .line 89
    return-object v1
.end method

.method public executeEvent(Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTPanel;->checkEventType(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->isRefreshEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->refreshContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-direct {p0}, Lnet/veritran/component/VTPanel;->initPanel()V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->refreshContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lnet/veritran/component/VTPanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTUIComponent;

    .line 102
    .local v0, "component":Lnet/veritran/component/VTUIComponent;
    const-string v2, "REFRESH_WITHOUT_MEASURE"

    invoke-virtual {v0, v2}, Lnet/veritran/component/VTUIComponent;->executeEvent(Ljava/lang/String;)Z

    goto :goto_0

    .line 105
    .end local v0    # "component":Lnet/veritran/component/VTUIComponent;
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->refreshMeasure()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 107
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 115
    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    return v1

    .line 109
    :cond_3
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->isVisibilityEvent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->updateVisibility()V

    goto :goto_1

    .line 112
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getChildAt(I)Lnet/veritran/component/VTUIComponent;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTUIComponent;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtScroller:Lnet/veritran/component/view/VTScrollPanelWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtScroller:Lnet/veritran/component/view/VTScrollPanelWrapper;

    .line 145
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    goto :goto_0
.end method

.method public init()V
    .locals 15

    .prologue
    .line 150
    invoke-super {p0}, Lnet/veritran/component/VTUIComponentContainer;->init()V

    .line 152
    new-instance v12, Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v13

    invoke-direct {v12, v13}, Lnet/veritran/component/view/VTPanelView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    .line 153
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    const-string v13, "vtpanel-vertical"

    invoke-virtual {v12, v13}, Lnet/veritran/component/view/VTPanelView;->setTag(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getParent()Lnet/veritran/component/VTUIComponent;

    move-result-object v12

    if-nez v12, :cond_0

    .line 155
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lnet/veritran/component/view/VTPanelView;->setRoot(Z)V

    .line 157
    :cond_0
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v13, "scroll"

    invoke-virtual {v12, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 158
    .local v9, "scrollable":Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v12, "yes"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 159
    new-instance v12, Lnet/veritran/component/view/VTScrollPanelWrapper;

    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v13

    invoke-direct {v12, v13}, Lnet/veritran/component/view/VTScrollPanelWrapper;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lnet/veritran/component/VTPanel;->vtScroller:Lnet/veritran/component/view/VTScrollPanelWrapper;

    .line 160
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->vtScroller:Lnet/veritran/component/view/VTScrollPanelWrapper;

    iget-object v13, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v12, v13}, Lnet/veritran/component/view/VTScrollPanelWrapper;->setPanelView(Lnet/veritran/component/view/VTUIComponentContainerView;)V

    .line 163
    :cond_1
    invoke-direct {p0}, Lnet/veritran/component/VTPanel;->initPanel()V

    .line 165
    new-instance v7, Lnet/veritran/component/view/VTPanelRowView;

    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v12

    invoke-direct {v7, v12}, Lnet/veritran/component/view/VTPanelRowView;-><init>(Landroid/content/Context;)V

    .line 166
    .local v7, "llhorizontal":Lnet/veritran/component/view/VTPanelRowView;
    const-string v12, "vtpanelrow-horizontal"

    invoke-virtual {v7, v12}, Lnet/veritran/component/view/VTPanelRowView;->setTag(Ljava/lang/Object;)V

    .line 167
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v12}, Lnet/veritran/component/view/VTPanelView;->getComponentVerticalAlignement()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lnet/veritran/component/view/VTPanelRowView;->setComponentVerticalAlignment(Ljava/lang/String;)V

    .line 168
    const-string v12, "VTPanel"

    const-string v13, "paso 1"

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v6, "linearComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;>;"
    const/4 v4, 0x0

    .line 172
    .local v4, "isCellPanel":Z
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v13, "_iscell"

    invoke-virtual {v12, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v13, "_iscell"

    invoke-virtual {v12, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "true"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 173
    const/4 v4, 0x1

    .line 176
    :cond_2
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v12, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;

    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->getConfigurationVisualComponentsList()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v12

    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v10

    .line 177
    .local v10, "size":I
    new-instance v8, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-direct {v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;-><init>()V

    .line 179
    .local v8, "newList":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v10, :cond_4

    .line 180
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v12, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;

    .line 181
    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->getConfigurationVisualComponentsList()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v12

    invoke-virtual {v12, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v11

    .line 182
    .local v11, "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "VTSLIDEPANEL"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 183
    invoke-virtual {v8, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 179
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v13, v14}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    goto :goto_1

    .line 189
    .end local v11    # "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_4
    invoke-virtual {v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v10

    .line 190
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v10, :cond_c

    .line 191
    const-string v12, "VTPanel"

    const-string v13, "paso 2"

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v8, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v11

    .line 193
    .restart local v11    # "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "VTLINEBREAK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 194
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 195
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v13

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    .line 196
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v14

    .line 195
    invoke-virtual {v13, v12, v14, p0}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    move-result-object v2

    .line 197
    .local v2, "comp":Lnet/veritran/component/VTUIComponent;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 198
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Lnet/veritran/component/view/VTPanelView;->addView(Landroid/view/View;)V

    .line 199
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v2    # "comp":Lnet/veritran/component/VTUIComponent;
    :cond_5
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 224
    :goto_4
    if-eqz v4, :cond_b

    .line 225
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v1

    .line 226
    .local v1, "cAttList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_6
    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 227
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    .local v0, "cAtt":Ljava/lang/String;
    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_6

    .line 229
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    invoke-virtual {v12, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->putInheritedAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v12, "VTPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "inherited att: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", value=["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lnet/veritran/component/VTPanel;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 202
    .end local v0    # "cAtt":Ljava/lang/String;
    .end local v1    # "cAttList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_7
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_9

    .line 203
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v13

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    .line 204
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v14

    .line 203
    invoke-virtual {v13, v12, v14, p0}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    move-result-object v2

    .line 206
    .restart local v2    # "comp":Lnet/veritran/component/VTUIComponent;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 207
    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v7, v12}, Lnet/veritran/component/view/VTPanelRowView;->addView(Landroid/view/View;)V

    .line 208
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 211
    .end local v2    # "comp":Lnet/veritran/component/VTUIComponent;
    :cond_9
    const-string v12, "VTPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "llhorizontal:childs:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lnet/veritran/component/view/VTPanelRowView;->getChildCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v7}, Lnet/veritran/component/view/VTPanelRowView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_5

    .line 213
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v12, v7}, Lnet/veritran/component/view/VTPanelView;->addView(Landroid/view/View;)V

    .line 214
    new-instance v7, Lnet/veritran/component/view/VTPanelRowView;

    .end local v7    # "llhorizontal":Lnet/veritran/component/view/VTPanelRowView;
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v12

    invoke-direct {v7, v12}, Lnet/veritran/component/view/VTPanelRowView;-><init>(Landroid/content/Context;)V

    .line 215
    .restart local v7    # "llhorizontal":Lnet/veritran/component/view/VTPanelRowView;
    const-string v12, "vtpanelrow-horizontal"

    invoke-virtual {v7, v12}, Lnet/veritran/component/view/VTPanelRowView;->setTag(Ljava/lang/Object;)V

    .line 216
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v12}, Lnet/veritran/component/view/VTPanelView;->getComponentVerticalAlignement()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lnet/veritran/component/view/VTPanelRowView;->setComponentVerticalAlignment(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 221
    .end local v5    # "j":I
    :cond_a
    const-string v12, "VTPanel"

    const-string v13, "paso 3"

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 190
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 236
    .end local v11    # "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-lt v12, v13, :cond_d

    .line 237
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    .line 238
    const-string v12, "VTPanel"

    const-string v13, "paso 4"

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v13

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    .line 240
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v14

    .line 239
    invoke-virtual {v13, v12, v14, p0}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    move-result-object v2

    .line 242
    .restart local v2    # "comp":Lnet/veritran/component/VTUIComponent;
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 243
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Lnet/veritran/component/view/VTPanelView;->addView(Landroid/view/View;)V

    .line 244
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v2    # "comp":Lnet/veritran/component/VTUIComponent;
    :cond_d
    :goto_7
    return-void

    .line 247
    :cond_e
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_10

    .line 248
    const-string v12, "VTPanel"

    const-string v13, "paso 5"

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v13

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    .line 250
    invoke-virtual {p0}, Lnet/veritran/component/VTPanel;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v14

    .line 249
    invoke-virtual {v13, v12, v14, p0}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    move-result-object v2

    .line 252
    .restart local v2    # "comp":Lnet/veritran/component/VTUIComponent;
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_f

    .line 253
    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v7, v12}, Lnet/veritran/component/view/VTPanelRowView;->addView(Landroid/view/View;)V

    .line 254
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->children:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 257
    .end local v2    # "comp":Lnet/veritran/component/VTUIComponent;
    :cond_10
    const-string v12, "VTPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "llhorizontal::childs :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lnet/veritran/component/view/VTPanelRowView;->getChildCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v12, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v12, v7}, Lnet/veritran/component/view/VTPanelView;->addView(Landroid/view/View;)V

    goto :goto_7
.end method

.method public setBorderBottomColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 379
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTPanelView;->setBorderBottomColor(Ljava/lang/Integer;)V

    .line 380
    return-void
.end method

.method public setBorderBottomSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTPanelView;->setBorderBottomSize(I)V

    .line 348
    return-void
.end method

.method public setBorderBottomStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTPanelView;->setBorderBottomStyle(I)V

    .line 364
    return-void
.end method

.method public setBorderLeftColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 367
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTPanelView;->setBorderLeftColor(Ljava/lang/Integer;)V

    .line 368
    return-void
.end method

.method public setBorderLeftSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTPanelView;->setBorderLeftSize(I)V

    .line 336
    return-void
.end method

.method public setBorderLeftStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTPanelView;->setBorderLeftStyle(I)V

    .line 352
    return-void
.end method

.method public setBorderRightColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 375
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTPanelView;->setBorderRightColor(Ljava/lang/Integer;)V

    .line 376
    return-void
.end method

.method public setBorderRightSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTPanelView;->setBorderRightSize(I)V

    .line 344
    return-void
.end method

.method public setBorderRightStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTPanelView;->setBorderRightStyle(I)V

    .line 360
    return-void
.end method

.method public setBorderTopColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 371
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTPanelView;->setBorderTopColor(Ljava/lang/Integer;)V

    .line 372
    return-void
.end method

.method public setBorderTopSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTPanelView;->setBorderTopSize(I)V

    .line 340
    return-void
.end method

.method public setBorderTopStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lnet/veritran/component/VTPanel;->vtPanelView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTPanelView;->setBorderTopStyle(I)V

    .line 356
    return-void
.end method

.method public supportDrawingToBitmap()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method
