.class public Lnet/veritran/component/VTImage;
.super Lnet/veritran/component/VTUIComponent;
.source "VTImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/component/VTImage$BackgroundImageTask;,
        Lnet/veritran/component/VTImage$DownloadImageTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VTImage"


# instance fields
.field private mayHoover:Z

.field private vtImageView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponent;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/component/VTImage;->mayHoover:Z

    .line 56
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTImage;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/component/VTImage;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTImage;

    .prologue
    .line 16
    iget-object v0, p0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    return-object v0
.end method

.method private initImage()V
    .locals 17

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "type"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTImage;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v12

    .line 80
    .local v12, "type":Ljava/lang/String;
    const/4 v5, 0x0

    .line 82
    .local v5, "isAnimatedImageView":Z
    if-eqz v12, :cond_0

    const-string v13, "ANIMATED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 84
    const/4 v5, 0x1

    .line 87
    :cond_0
    if-nez v5, :cond_6

    .line 89
    new-instance v13, Lnet/veritran/component/view/VTImageView;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lnet/veritran/component/view/VTImageView;-><init>(Lnet/veritran/component/VTUIComponent;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    .line 96
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "backgroundColor"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lnet/veritran/VTCommonActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 97
    .local v1, "bgcolor":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 98
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 101
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "resourceWidth"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 103
    .local v11, "resourceWidthStr":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 107
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 108
    .local v10, "resourceWidth":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    check-cast v13, Lnet/veritran/component/view/VTImageViewInterface;

    invoke-interface {v13, v10}, Lnet/veritran/component/view/VTImageViewInterface;->setResourceWidth(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v10    # "resourceWidth":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "resourceHeight"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, "resourceHeightStr":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 122
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 123
    .local v8, "resourceHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    check-cast v13, Lnet/veritran/component/view/VTImageViewInterface;

    invoke-interface {v13, v8}, Lnet/veritran/component/view/VTImageViewInterface;->setResourceHeight(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    .end local v8    # "resourceHeight":I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    check-cast v13, Lnet/veritran/component/view/VTImageViewInterface;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lnet/veritran/component/view/VTImageViewInterface;->setComponentBackgroundDrawable(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "src"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "imageName":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 134
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTImage;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v13

    invoke-static {v4, v13}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "resourceorigin"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "resOrigin":Ljava/lang/String;
    if-eqz v7, :cond_8

    const-string v13, "H"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 143
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "expires"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTImage;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "expires":Ljava/lang/String;
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0xb

    if-lt v13, v14, :cond_7

    .line 149
    new-instance v13, Lnet/veritran/component/VTImage$DownloadImageTask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lnet/veritran/component/VTImage$DownloadImageTask;-><init>(Lnet/veritran/component/VTImage;)V

    sget-object v14, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    const/16 v16, 0x1

    aput-object v3, v15, v16

    invoke-virtual {v13, v14, v15}, Lnet/veritran/component/VTImage$DownloadImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    .end local v3    # "expires":Ljava/lang/String;
    .end local v7    # "resOrigin":Ljava/lang/String;
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTImage;->defineWidth()V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTImage;->defineHeight()V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTImage;->defineVisibility()V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTImage;->defineMargins()V

    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "Onclick"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "onclick":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTImage;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v13

    invoke-static {v6, v13}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    .line 190
    if-eqz v6, :cond_b

    const-string v13, ""

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    new-instance v14, Lnet/veritran/component/VTImageOnClickListener;

    invoke-direct {v14, v6}, Lnet/veritran/component/VTImageOnClickListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    :cond_5
    :goto_4
    return-void

    .line 93
    .end local v1    # "bgcolor":Ljava/lang/Integer;
    .end local v4    # "imageName":Ljava/lang/String;
    .end local v6    # "onclick":Ljava/lang/String;
    .end local v9    # "resourceHeightStr":Ljava/lang/String;
    .end local v11    # "resourceWidthStr":Ljava/lang/String;
    :cond_6
    new-instance v13, Lnet/veritran/component/view/VTAnimatedImageView;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lnet/veritran/component/view/VTAnimatedImageView;-><init>(Lnet/veritran/component/VTUIComponent;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    goto/16 :goto_0

    .line 110
    .restart local v1    # "bgcolor":Ljava/lang/Integer;
    .restart local v11    # "resourceWidthStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 112
    .local v2, "ex":Ljava/lang/NumberFormatException;
    const-string v13, "VTImage"

    const-string v14, "Catched exception empty (fortify)"

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 125
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v9    # "resourceHeightStr":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 127
    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const-string v13, "VTImage"

    const-string v14, "Catched exception empty (fortify)"

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 151
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v3    # "expires":Ljava/lang/String;
    .restart local v4    # "imageName":Ljava/lang/String;
    .restart local v7    # "resOrigin":Ljava/lang/String;
    :cond_7
    new-instance v13, Lnet/veritran/component/VTImage$DownloadImageTask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lnet/veritran/component/VTImage$DownloadImageTask;-><init>(Lnet/veritran/component/VTImage;)V

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const/4 v15, 0x1

    aput-object v3, v14, v15

    invoke-virtual {v13, v14}, Lnet/veritran/component/VTImage$DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    .line 155
    .end local v3    # "expires":Ljava/lang/String;
    :cond_8
    if-eqz v7, :cond_a

    const-string v13, "B"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 158
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 161
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0xb

    if-lt v13, v14, :cond_9

    .line 162
    new-instance v13, Lnet/veritran/component/VTImage$BackgroundImageTask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lnet/veritran/component/VTImage$BackgroundImageTask;-><init>(Lnet/veritran/component/VTImage;)V

    sget-object v14, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-virtual {v13, v14, v15}, Lnet/veritran/component/VTImage$BackgroundImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3

    .line 164
    :cond_9
    new-instance v13, Lnet/veritran/component/VTImage$BackgroundImageTask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lnet/veritran/component/VTImage$BackgroundImageTask;-><init>(Lnet/veritran/component/VTImage;)V

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-virtual {v13, v14}, Lnet/veritran/component/VTImage$BackgroundImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3

    .line 171
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    check-cast v13, Lnet/veritran/component/view/VTImageViewInterface;

    invoke-interface {v13, v4}, Lnet/veritran/component/view/VTImageViewInterface;->setComponentBackgroundDrawable(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 195
    .end local v7    # "resOrigin":Ljava/lang/String;
    .restart local v6    # "onclick":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnet/veritran/component/VTImage;->mayHoover:Z

    if-nez v13, :cond_5

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    check-cast v13, Lnet/veritran/component/view/VTImageViewInterface;

    invoke-interface {v13}, Lnet/veritran/component/view/VTImageViewInterface;->ignoreShadow()V

    goto/16 :goto_4
.end method


# virtual methods
.method public componentWillFinish()V
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lnet/veritran/component/VTImage;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lnet/veritran/component/view/VTAnimatedImageView;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lnet/veritran/component/VTImage;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/view/VTAnimatedImageView;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTAnimatedImageView;->clear()V

    .line 272
    :cond_0
    return-void
.end method

.method public executeEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTImage;->checkEventType(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lnet/veritran/component/VTImage;->isRefreshEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-direct {p0}, Lnet/veritran/component/VTImage;->initImage()V

    .line 39
    invoke-virtual {p0}, Lnet/veritran/component/VTImage;->refreshMeasure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lnet/veritran/component/VTImage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 41
    invoke-virtual {p0}, Lnet/veritran/component/VTImage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 52
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTImage;->isVisibilityEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p0}, Lnet/veritran/component/VTImage;->updateVisibility()V

    goto :goto_0

    .line 45
    :cond_2
    const-string v0, "CLICK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {p0}, Lnet/veritran/component/VTImage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 49
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "VTImage"

    iget-object v1, p0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->init()V

    .line 73
    invoke-direct {p0}, Lnet/veritran/component/VTImage;->initImage()V

    .line 74
    return-void
.end method

.method public isMayHoover()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lnet/veritran/component/VTImage;->mayHoover:Z

    return v0
.end method

.method public setMayHoover(Z)V
    .locals 0
    .param p1, "mayHoover"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lnet/veritran/component/VTImage;->mayHoover:Z

    .line 223
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method
