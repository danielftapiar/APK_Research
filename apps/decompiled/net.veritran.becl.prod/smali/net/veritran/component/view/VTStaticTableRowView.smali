.class public Lnet/veritran/component/view/VTStaticTableRowView;
.super Landroid/widget/TableRow;
.source "VTStaticTableRowView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentContainerView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTStaticTableRowView"


# instance fields
.field private backgroundColor:Ljava/lang/Integer;

.field private backgroundImage:Ljava/lang/String;

.field private borderBottomColor:Ljava/lang/Integer;

.field private borderBottomSize:I

.field private borderBottomStyle:I

.field private borderLeftColor:Ljava/lang/Integer;

.field private borderLeftSize:I

.field private borderLeftStyle:I

.field private borderRightColor:Ljava/lang/Integer;

.field private borderRightSize:I

.field private borderRightStyle:I

.field private borderTopColor:Ljava/lang/Integer;

.field private borderTopSize:I

.field private borderTopStyle:I

.field private childrenHeight:[I

.field fixedBottomMargin:F

.field private fixedHeight:I

.field fixedLeftMargin:F

.field fixedRightMargin:F

.field fixedTopMargin:F

.field private fixedWidth:I

.field private maxRowHeight:I

.field private measuredBottomMargin:I

.field private measuredBottomPadding:I

.field private measuredLeftMargin:I

.field private measuredLeftPadding:I

.field private measuredRightMargin:I

.field private measuredRightPadding:I

.field private measuredTopMargin:I

.field private measuredTopPadding:I

.field private percentageBottomMargin:F

.field private percentageBottomPadding:F

.field private percentageHeight:F

.field private percentageLeftMargin:F

.field private percentageLeftPadding:F

.field private percentageRightMargin:F

.field private percentageRightPadding:F

.field private percentageTopMargin:F

.field private percentageTopPadding:F

.field private percentageWidth:F

.field private percentagesCellsWidth:[I


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 5
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 24
    iput v2, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageWidth:F

    .line 25
    iput v2, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageHeight:F

    .line 27
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageLeftPadding:F

    .line 28
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageTopPadding:F

    .line 29
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageRightPadding:F

    .line 30
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageBottomPadding:F

    .line 32
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredTopPadding:I

    .line 33
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredRightPadding:I

    .line 34
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredLeftPadding:I

    .line 35
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredBottomPadding:I

    .line 37
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageLeftMargin:F

    .line 38
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageTopMargin:F

    .line 39
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageRightMargin:F

    .line 40
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageBottomMargin:F

    .line 42
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredLeftMargin:I

    .line 43
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredRightMargin:I

    .line 44
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredTopMargin:I

    .line 45
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredBottomMargin:I

    .line 47
    iput v2, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedLeftMargin:F

    .line 48
    iput v2, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedRightMargin:F

    .line 49
    iput v2, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedTopMargin:F

    .line 50
    iput v2, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedBottomMargin:F

    .line 52
    iput v3, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftSize:I

    .line 53
    iput v3, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopSize:I

    .line 54
    iput v3, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightSize:I

    .line 55
    iput v3, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomSize:I

    .line 57
    const v0, -0xff0001

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftColor:Ljava/lang/Integer;

    .line 58
    const v0, -0xffff01

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopColor:Ljava/lang/Integer;

    .line 59
    const v0, -0xff0100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightColor:Ljava/lang/Integer;

    .line 60
    const/high16 v0, -0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomColor:Ljava/lang/Integer;

    .line 62
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftStyle:I

    .line 63
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopStyle:I

    .line 64
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightStyle:I

    .line 65
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomStyle:I

    .line 71
    iput v4, p0, Lnet/veritran/component/view/VTStaticTableRowView;->maxRowHeight:I

    .line 79
    iput v4, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedWidth:I

    .line 81
    iput v4, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedHeight:I

    .line 87
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 444
    invoke-super/range {p0 .. p1}, Landroid/widget/TableRow;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 445
    const-string v1, "VTStaticTableRowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dispatchDraw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getChildCount()I

    move-result v7

    .line 447
    .local v7, "childCount":I
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 448
    .local v6, "paint":Landroid/graphics/Paint;
    const/16 v16, 0x0

    .line 449
    .local v16, "xStart":I
    const/16 v18, 0x0

    .line 450
    .local v18, "yStart":I
    const/4 v15, 0x0

    .line 451
    .local v15, "xEnd":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getHeight()I

    move-result v17

    .line 452
    .local v17, "yEnd":I
    const/4 v13, 0x0

    .local v13, "tt":I
    :goto_0
    if-ge v13, v7, :cond_1c

    .line 453
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lnet/veritran/component/view/VTStaticTableRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lnet/veritran/component/view/VTUIComponentView;

    .line 454
    .local v14, "v":Lnet/veritran/component/view/VTUIComponentView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->percentagesCellsWidth:[I

    aget v1, v1, v13

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v8, v1, 0x64

    .line 457
    .local v8, "childWidth":I
    add-int v15, v16, v8

    .line 459
    const-string v1, "VTStaticTableRowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " xStart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";xEnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v1, "VTStaticTableRowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " borderLeftColor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v1, "VTStaticTableRowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " borderTopColor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v1, "VTStaticTableRowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " borderRightColor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v1, "VTStaticTableRowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " borderBottomColor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftStyle:I

    if-eqz v1, :cond_6

    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 466
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 467
    const/4 v9, 0x0

    .local v9, "divSize":I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftSize:I

    if-ge v9, v1, :cond_6

    .line 468
    add-int v10, v18, v9

    .local v10, "i":I
    :goto_2
    add-int/lit8 v1, v17, -0x1

    sub-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x2

    if-ge v10, v1, :cond_0

    .line 469
    add-int v1, v16, v9

    int-to-float v1, v1

    mul-int/lit8 v2, v10, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 468
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 467
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 472
    .end local v9    # "divSize":I
    .end local v10    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftStyle:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 473
    const/4 v12, 0x0

    .line 474
    .local v12, "step":I
    const/16 v11, 0x8

    .line 475
    .local v11, "maxStep":I
    const/4 v9, 0x0

    .restart local v9    # "divSize":I
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftSize:I

    if-ge v9, v1, :cond_6

    .line 476
    add-int v10, v18, v9

    .restart local v10    # "i":I
    :goto_4
    add-int/lit8 v1, v17, -0x1

    sub-int/2addr v1, v9

    if-ge v10, v1, :cond_4

    .line 477
    const/4 v1, 0x6

    if-ge v12, v1, :cond_2

    .line 478
    add-int v1, v16, v9

    int-to-float v1, v1

    int-to-float v2, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 480
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 481
    if-lt v12, v11, :cond_3

    const/4 v12, 0x0

    .line 476
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 475
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 485
    .end local v9    # "divSize":I
    .end local v10    # "i":I
    .end local v11    # "maxStep":I
    .end local v12    # "step":I
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "divSize":I
    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftSize:I

    if-ge v9, v1, :cond_6

    .line 486
    const-string v1, "VTStaticTableRowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " draw line L("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, v16, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, v16, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    add-int v1, v16, v9

    int-to-float v2, v1

    move/from16 v0, v18

    int-to-float v3, v0

    add-int v1, v16, v9

    int-to-float v4, v1

    move/from16 v0, v17

    int-to-float v5, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 485
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 491
    .end local v9    # "divSize":I
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopStyle:I

    if-eqz v1, :cond_d

    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 494
    const-string v1, "VTStaticTableRowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " drawing dots"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const/4 v9, 0x0

    .restart local v9    # "divSize":I
    :goto_6
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopSize:I

    if-ge v9, v1, :cond_d

    .line 496
    add-int v10, v16, v9

    .restart local v10    # "i":I
    :goto_7
    add-int/lit8 v1, v15, -0x1

    sub-int/2addr v1, v9

    if-ge v10, v1, :cond_8

    .line 497
    rem-int/lit8 v1, v10, 0x2

    if-nez v1, :cond_7

    .line 498
    const-string v1, "VTStaticTableRowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " draw point T("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, v18, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    int-to-float v1, v10

    add-int v2, v18, v9

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 496
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 495
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 503
    .end local v9    # "divSize":I
    .end local v10    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopStyle:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 504
    const-string v1, "VTStaticTableRowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " drawing dots"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/4 v9, 0x0

    .restart local v9    # "divSize":I
    :goto_8
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopSize:I

    if-ge v9, v1, :cond_d

    .line 506
    add-int v10, v16, v9

    .restart local v10    # "i":I
    :goto_9
    add-int/lit8 v1, v15, -0x1

    sub-int/2addr v1, v9

    if-ge v10, v1, :cond_b

    .line 507
    rem-int/lit8 v1, v10, 0x8

    const/4 v2, 0x1

    if-le v1, v2, :cond_a

    .line 508
    const-string v1, "VTStaticTableRowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " draw point T("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, v18, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    int-to-float v1, v10

    add-int v2, v18, v9

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 506
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 505
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 514
    .end local v9    # "divSize":I
    .end local v10    # "i":I
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "divSize":I
    :goto_a
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopSize:I

    if-ge v9, v1, :cond_d

    .line 515
    const-string v1, "VTStaticTableRowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " draw line T("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, v18, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, v18, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    move/from16 v0, v16

    int-to-float v2, v0

    add-int v1, v18, v9

    int-to-float v3, v1

    int-to-float v4, v15

    add-int v1, v18, v9

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 514
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 520
    .end local v9    # "divSize":I
    :cond_d
    add-int/lit8 v1, v7, -0x1

    if-ne v13, v1, :cond_14

    .line 521
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightStyle:I

    if-eqz v1, :cond_14

    .line 522
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 523
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    .line 524
    const/4 v9, 0x0

    .restart local v9    # "divSize":I
    :goto_b
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightSize:I

    if-ge v9, v1, :cond_14

    .line 525
    add-int v10, v18, v9

    .restart local v10    # "i":I
    :goto_c
    add-int/lit8 v1, v17, -0x1

    sub-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x2

    if-ge v10, v1, :cond_e

    .line 526
    add-int/lit8 v1, v15, -0x1

    sub-int/2addr v1, v9

    int-to-float v1, v1

    mul-int/lit8 v2, v10, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 525
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 524
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 529
    .end local v9    # "divSize":I
    .end local v10    # "i":I
    :cond_f
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightStyle:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    .line 530
    const/4 v12, 0x0

    .line 531
    .restart local v12    # "step":I
    const/16 v11, 0x8

    .line 532
    .restart local v11    # "maxStep":I
    const/4 v9, 0x0

    .restart local v9    # "divSize":I
    :goto_d
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightSize:I

    if-ge v9, v1, :cond_14

    .line 533
    add-int v10, v18, v9

    .restart local v10    # "i":I
    :goto_e
    add-int/lit8 v1, v17, -0x1

    sub-int/2addr v1, v9

    if-ge v10, v1, :cond_12

    .line 534
    const/4 v1, 0x6

    if-ge v12, v1, :cond_10

    .line 535
    add-int/lit8 v1, v15, -0x1

    sub-int/2addr v1, v9

    int-to-float v1, v1

    int-to-float v2, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 537
    :cond_10
    add-int/lit8 v12, v12, 0x1

    .line 538
    if-lt v12, v11, :cond_11

    const/4 v12, 0x0

    .line 533
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 532
    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 542
    .end local v9    # "divSize":I
    .end local v10    # "i":I
    .end local v11    # "maxStep":I
    .end local v12    # "step":I
    :cond_13
    const/4 v9, 0x0

    .restart local v9    # "divSize":I
    :goto_f
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightSize:I

    if-ge v9, v1, :cond_14

    .line 543
    const-string v1, "VTStaticTableRowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " draw line R("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v3, v15, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v3, v15, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    sub-int v1, v15, v9

    int-to-float v2, v1

    move/from16 v0, v18

    int-to-float v3, v0

    sub-int v1, v15, v9

    int-to-float v4, v1

    move/from16 v0, v17

    int-to-float v5, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 542
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 549
    .end local v9    # "divSize":I
    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomStyle:I

    if-eqz v1, :cond_1b

    .line 550
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 551
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    .line 552
    const/4 v9, 0x0

    .restart local v9    # "divSize":I
    :goto_10
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomSize:I

    if-ge v9, v1, :cond_1b

    .line 553
    add-int v10, v16, v9

    .restart local v10    # "i":I
    :goto_11
    add-int/lit8 v1, v15, -0x1

    sub-int/2addr v1, v9

    if-ge v10, v1, :cond_16

    .line 554
    rem-int/lit8 v1, v10, 0x2

    if-nez v1, :cond_15

    .line 555
    int-to-float v1, v10

    add-int/lit8 v2, v17, -0x1

    sub-int/2addr v2, v9

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 553
    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 552
    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 559
    .end local v9    # "divSize":I
    .end local v10    # "i":I
    :cond_17
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomStyle:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1a

    .line 560
    const/4 v9, 0x0

    .restart local v9    # "divSize":I
    :goto_12
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomSize:I

    if-ge v9, v1, :cond_1b

    .line 561
    add-int v10, v16, v9

    .restart local v10    # "i":I
    :goto_13
    add-int/lit8 v1, v15, -0x1

    sub-int/2addr v1, v9

    if-ge v10, v1, :cond_19

    .line 562
    rem-int/lit8 v1, v10, 0x8

    const/4 v2, 0x1

    if-le v1, v2, :cond_18

    .line 563
    int-to-float v1, v10

    add-int/lit8 v2, v17, -0x1

    sub-int/2addr v2, v9

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 561
    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 560
    :cond_19
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 568
    .end local v9    # "divSize":I
    .end local v10    # "i":I
    :cond_1a
    const/4 v9, 0x0

    .restart local v9    # "divSize":I
    :goto_14
    move-object/from16 v0, p0

    iget v1, v0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomSize:I

    if-ge v9, v1, :cond_1b

    .line 569
    const-string v1, "VTStaticTableRowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " draw line B("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v17, -0x1

    sub-int/2addr v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v17, -0x1

    sub-int/2addr v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    move/from16 v0, v16

    int-to-float v2, v0

    add-int/lit8 v1, v17, -0x1

    sub-int/2addr v1, v9

    int-to-float v3, v1

    int-to-float v4, v15

    add-int/lit8 v1, v17, -0x1

    sub-int/2addr v1, v9

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 568
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 574
    .end local v9    # "divSize":I
    :cond_1b
    move/from16 v16, v15

    .line 452
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 577
    .end local v8    # "childWidth":I
    .end local v14    # "v":Lnet/veritran/component/view/VTUIComponentView;
    :cond_1c
    return-void
.end method

.method public getBorderBottomColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBorderBottomSize()I
    .locals 1

    .prologue
    .line 737
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomSize:I

    return v0
.end method

.method public getBorderBottomStyle()I
    .locals 1

    .prologue
    .line 793
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomStyle:I

    return v0
.end method

.method public getBorderLeftColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBorderLeftSize()I
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftSize:I

    return v0
.end method

.method public getBorderLeftStyle()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftStyle:I

    return v0
.end method

.method public getBorderRightColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBorderRightSize()I
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightSize:I

    return v0
.end method

.method public getBorderRightStyle()I
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightStyle:I

    return v0
.end method

.method public getBorderTopColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBorderTopSize()I
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopSize:I

    return v0
.end method

.method public getBorderTopStyle()I
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopStyle:I

    return v0
.end method

.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredBottomPadding()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredBottomPadding:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredLeftPadding()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredLeftPadding:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredRightPadding()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredRightPadding:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredTopPadding()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredTopPadding:I

    return v0
.end method

.method public getPercentagesCellsWidth()[I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentagesCellsWidth:[I

    return-object v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageWidth:F

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 141
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageLeftMargin:F

    .line 142
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredLeftMargin:I

    .line 143
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageRightMargin:F

    .line 144
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredRightMargin:I

    .line 145
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageTopMargin:F

    .line 146
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredTopMargin:I

    .line 147
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageBottomMargin:F

    .line 148
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredBottomMargin:I

    .line 149
    return-void

    .line 142
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 144
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 146
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 148
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method public measureAbsolutePaddings()V
    .locals 3

    .prologue
    .line 153
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageLeftPadding:F

    .line 154
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredLeftPadding:I

    .line 155
    const-string v0, "VTStaticTableRowView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "measuredLeftPadding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredLeftPadding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageRightPadding:F

    .line 157
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredRightPadding:I

    .line 158
    const-string v0, "VTStaticTableRowView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "measuredRightPadding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredRightPadding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageTopPadding:F

    .line 160
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredTopPadding:I

    .line 161
    const-string v0, "VTStaticTableRowView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "measuredTopPadding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredTopPadding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageBottomPadding:F

    .line 163
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredBottomPadding:I

    .line 164
    const-string v0, "VTStaticTableRowView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "measuredBottomPadding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredBottomPadding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 371
    const-string v18, "VTStaticTableRowView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " onLayout -> left:+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";top:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";right:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";bottom:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v18, "VTStaticTableRowView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " onLayout -> getLeft():+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getLeft()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";getTop():"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTop()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";getWidth():"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getWidth()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";getHeight():"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getHeight()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getChildCount()I

    move-result v6

    .line 374
    .local v6, "childCount":I
    const/16 v16, 0x0

    .line 375
    .local v16, "xChildrenStart":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getWidth()I

    move-result v18

    add-int v18, v18, v16

    add-int/lit8 v15, v18, 0x0

    .line 376
    .local v15, "xChildrenEnd":I
    const/16 v17, 0x0

    .line 378
    .local v17, "yChildrenStart":I
    sub-int v3, v15, v16

    .line 380
    .local v3, "availableSpaceForChild":I
    move/from16 v11, v16

    .line 381
    .local v11, "nleft":I
    move/from16 v13, v17

    .line 382
    .local v13, "ntop":I
    const/4 v12, 0x0

    .line 384
    .local v12, "nright":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_0

    .line 385
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lnet/veritran/component/view/VTStaticTableRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lnet/veritran/component/view/VTUIComponentView;

    .local v14, "v":Lnet/veritran/component/view/VTUIComponentView;
    move-object/from16 v18, v14

    .line 386
    check-cast v18, Landroid/view/View;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .local v8, "childWidth":I
    move-object/from16 v18, v14

    .line 387
    check-cast v18, Landroid/view/View;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 389
    .local v7, "childHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredLeftPadding:I

    move/from16 v18, v0

    add-int v11, v11, v18

    .line 390
    const-string v18, "VTStaticTableRowView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] nleft w/padding:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v18, "VTStaticTableRowView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] nleft w/child margin:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->percentagesCellsWidth:[I

    move-object/from16 v18, v0

    aget v18, v18, v9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v5, v18, v19

    .line 395
    .local v5, "cellWidthPerc":F
    int-to-float v0, v3

    move/from16 v18, v0

    mul-float v18, v18, v5

    move/from16 v0, v18

    float-to-int v4, v0

    .line 396
    .local v4, "cellWidth":I
    const-string v18, "VTStaticTableRowView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] cellWidth:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%)"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    add-int/2addr v12, v4

    .line 399
    const-string v18, "VTStaticTableRowView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] nright:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredTopPadding:I

    move/from16 v18, v0

    add-int/lit8 v13, v18, 0x0

    .line 405
    const-string v18, "VTStaticTableRowView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] ntop w/padding:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v18, "VTStaticTableRowView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] ntop w/child margin:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    add-int v10, v13, v7

    .line 410
    .local v10, "nbottom":I
    const-string v18, "VTStaticTableRowView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] nbottom:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v18, "VTStaticTableRowView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] nbottom 2:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v14

    .line 430
    check-cast v18, Landroid/view/View;

    add-int v19, v11, v8

    add-int v20, v13, v7

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v11, v13, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 431
    const-string v18, "VTStaticTableRowView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    check-cast v14, Landroid/view/View;

    .end local v14    # "v":Lnet/veritran/component/view/VTUIComponentView;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") left:+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";top:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";right:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int v20, v11, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";bottom:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int v20, v13, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    move/from16 v13, v17

    .line 433
    move v11, v12

    .line 434
    const-string v18, "VTStaticTableRowView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] nleft for next:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 440
    .end local v4    # "cellWidth":I
    .end local v5    # "cellWidthPerc":F
    .end local v7    # "childHeight":I
    .end local v8    # "childWidth":I
    .end local v10    # "nbottom":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 34
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 178
    const-string v29, "VTStaticTableRowView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "onMeasure [] -> widthMeasureSpec: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";heightMeasureSpec:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTStaticTableRowView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->percentagesCellsWidth:[I

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/view/VTStaticTableRowView;->childrenHeight:[I

    .line 182
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .line 183
    .local v24, "mw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    .line 184
    .local v21, "mh":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    .line 185
    .local v26, "sw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .line 186
    .local v25, "sh":I
    invoke-static/range {v24 .. v24}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v23

    .line 187
    .local v23, "modeWidth":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v22

    .line 188
    .local v22, "modeHeight":Ljava/lang/String;
    const-string v29, "VTStaticTableRowView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "onMeasure -> width("

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "):"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";height("

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "):"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v29, "VTStaticTableRowView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " onMeasure -> percentageLeftMargin:+"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageLeftMargin:F

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";percentageTopMargin:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageTopMargin:F

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";percentageRightMargin:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageRightMargin:F

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";percentageBottomMargin:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageBottomMargin:F

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->measureAbsoluteMargins()V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->measureAbsolutePaddings()V

    .line 193
    const-string v29, "VTStaticTableRowView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " onMeasure -> measuredLeftMargin:+"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredLeftMargin:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";measuredTopMargin:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredTopMargin:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";percentageRightMargin:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageRightMargin:F

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";percentageBottomMargin:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageBottomMargin:F

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v29, "VTStaticTableRowView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " onMeasure -> paddingLeft:+"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredLeftPadding:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";paddingTop:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredTopPadding:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";paddingRight:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredRightPadding:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";paddingBottom:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredBottomPadding:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    move/from16 v7, v26

    .line 197
    .local v7, "availableWidthForComponent":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredLeftMargin:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredRightMargin:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    sub-int v7, v7, v29

    .line 199
    move/from16 v6, v25

    .line 200
    .local v6, "availableHeightForComponent":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredTopMargin:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredBottomMargin:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    sub-int v6, v6, v29

    .line 202
    move v15, v7

    .line 204
    .local v15, "initialAvailableWidthForChildren":I
    move v14, v6

    .line 207
    .local v14, "initialAvailableHeightForChildren":I
    move v4, v14

    .line 208
    .local v4, "actualAvailableHeightForChildren":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getChildCount()I

    move-result v10

    .line 209
    .local v10, "childCount":I
    const-string v29, "VTStaticTableRowView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " onMeasure children="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v29, "VTStaticTableRowView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " onMeasure [availableWidthForComponent:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ",availableHeightForComponent:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v29, "VTStaticTableRowView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " onMeasure [initialAvailableWidthForChildren:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ",initialAvailableHeightForChildren:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/16 v16, 0x0

    .line 216
    .local v16, "maxChildHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageHeight:F

    move/from16 v29, v0

    const/high16 v30, -0x40800000    # -1.0f

    cmpl-float v29, v29, v30

    if-nez v29, :cond_4

    .line 217
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/view/VTStaticTableRowView;->maxRowHeight:I

    .line 221
    :goto_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v10, :cond_9

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->percentagesCellsWidth:[I

    move-object/from16 v29, v0

    aget v29, v29, v13

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x42c80000    # 100.0f

    div-float v9, v29, v30

    .line 223
    .local v9, "cellWidthPerc":F
    const-string v29, "VTStaticTableRowView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " percentagesCellsWidth["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "] "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->percentagesCellsWidth:[I

    move-object/from16 v31, v0

    aget v31, v31, v13

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    int-to-float v0, v7

    move/from16 v29, v0

    mul-float v29, v29, v9

    move/from16 v0, v29

    float-to-int v5, v0

    .line 225
    .local v5, "actualAvailableWidthForChildren":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lnet/veritran/component/view/VTStaticTableRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lnet/veritran/component/view/VTUIComponentView;

    .line 228
    .local v27, "view":Lnet/veritran/component/view/VTUIComponentView;
    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getHeightPercentage()F

    move-result v29

    const/high16 v30, -0x40800000    # -1.0f

    cmpl-float v29, v29, v30

    if-eqz v29, :cond_6

    .line 229
    const-string v30, "VTStaticTableRowView"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " Measuring "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v29, v27

    check-cast v29, Landroid/view/View;

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " with fixed percentage ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getHeightPercentage()F

    move-result v31

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, ")"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    int-to-float v0, v4

    move/from16 v29, v0

    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getHeightPercentage()F

    move-result v30

    mul-float v29, v29, v30

    const/high16 v30, 0x42c80000    # 100.0f

    div-float v29, v29, v30

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v12, v0

    .line 231
    .local v12, "h":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredTopPadding:I

    move/from16 v29, v0

    sub-int v12, v12, v29

    .line 232
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredBottomPadding:I

    move/from16 v29, v0

    sub-int v12, v12, v29

    .line 233
    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v29

    sub-int v12, v12, v29

    .line 234
    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v29

    sub-int v12, v12, v29

    .line 235
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageHeight:F

    move/from16 v29, v0

    const/high16 v30, -0x40800000    # -1.0f

    cmpl-float v29, v29, v30

    if-eqz v29, :cond_5

    .line 236
    const-string v29, "VTStaticTableRowView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ...and the row has fixed height percentage too"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v29

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 252
    .local v17, "measurecSpecHeight":I
    :goto_2
    move/from16 v28, v5

    .line 253
    .local v28, "w":I
    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v29

    const/high16 v30, -0x40800000    # -1.0f

    cmpl-float v29, v29, v30

    if-eqz v29, :cond_0

    .line 254
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v30

    mul-float v29, v29, v30

    const/high16 v30, 0x42c80000    # 100.0f

    div-float v29, v29, v30

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v28, v0

    .line 256
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredLeftPadding:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredRightPadding:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    .line 258
    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredLeftMargin()I

    move-result v29

    sub-int v28, v28, v29

    .line 259
    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredRightMargin()I

    move-result v29

    sub-int v28, v28, v29

    .line 260
    if-gez v28, :cond_1

    const/16 v28, 0x0

    .line 262
    :cond_1
    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v29

    const/high16 v30, -0x40800000    # -1.0f

    cmpl-float v29, v29, v30

    if-eqz v29, :cond_8

    .line 263
    const/high16 v29, 0x40000000    # 2.0f

    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 267
    .local v18, "measurecSpecWidth":I
    :goto_3
    const-string v30, "VTStaticTableRowView"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " Measuring "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v29, v27

    check-cast v29, Landroid/view/View;

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " with w="

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, ",h="

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v29, v27

    .line 268
    check-cast v29, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lnet/veritran/component/view/VTStaticTableRowView;->measureChild(Landroid/view/View;II)V

    move-object/from16 v29, v27

    .line 269
    check-cast v29, Landroid/view/View;

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .local v20, "measuredChildWidth":I
    move-object/from16 v29, v27

    .line 270
    check-cast v29, Landroid/view/View;

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    .line 271
    .local v19, "measuredChildHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->childrenHeight:[I

    move-object/from16 v29, v0

    aput v19, v29, v13

    .line 272
    const-string v30, "VTStaticTableRowView"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v29, v27

    check-cast v29, Landroid/view/View;

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " measuredChildWidth:"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, ";measuredChildHeight:"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move/from16 v0, v19

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    .line 276
    move/from16 v16, v19

    .line 277
    const-string v30, "VTStaticTableRowView"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v29, v27

    check-cast v29, Landroid/view/View;

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " and new max height for the rows:"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredTopPadding:I

    move/from16 v29, v0

    add-int v29, v29, v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredBottomPadding:I

    move/from16 v30, v0

    add-int v29, v29, v30

    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v30

    add-int v29, v29, v30

    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v30

    add-int v11, v29, v30

    .line 280
    .local v11, "currentCellHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->maxRowHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-le v11, v0, :cond_3

    .line 281
    move-object/from16 v0, p0

    iput v11, v0, Lnet/veritran/component/view/VTStaticTableRowView;->maxRowHeight:I

    .line 221
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 219
    .end local v5    # "actualAvailableWidthForChildren":I
    .end local v9    # "cellWidthPerc":F
    .end local v11    # "currentCellHeight":I
    .end local v12    # "h":I
    .end local v13    # "i":I
    .end local v17    # "measurecSpecHeight":I
    .end local v18    # "measurecSpecWidth":I
    .end local v19    # "measuredChildHeight":I
    .end local v20    # "measuredChildWidth":I
    .end local v27    # "view":Lnet/veritran/component/view/VTUIComponentView;
    .end local v28    # "w":I
    :cond_4
    move-object/from16 v0, p0

    iput v6, v0, Lnet/veritran/component/view/VTStaticTableRowView;->maxRowHeight:I

    goto/16 :goto_0

    .line 239
    .restart local v5    # "actualAvailableWidthForChildren":I
    .restart local v9    # "cellWidthPerc":F
    .restart local v12    # "h":I
    .restart local v13    # "i":I
    .restart local v27    # "view":Lnet/veritran/component/view/VTUIComponentView;
    :cond_5
    const-string v29, "VTStaticTableRowView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ...but the row hasn\'t fixed height percentage"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/high16 v29, -0x80000000

    move/from16 v0, v29

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .restart local v17    # "measurecSpecHeight":I
    goto/16 :goto_2

    .line 243
    .end local v12    # "h":I
    .end local v17    # "measurecSpecHeight":I
    :cond_6
    const-string v30, "VTStaticTableRowView"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " Measuring "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v29, v27

    check-cast v29, Landroid/view/View;

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " without fixed percentage"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    move v12, v4

    .line 245
    .restart local v12    # "h":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredTopPadding:I

    move/from16 v29, v0

    sub-int v12, v12, v29

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredBottomPadding:I

    move/from16 v29, v0

    sub-int v12, v12, v29

    .line 247
    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v29

    sub-int v12, v12, v29

    .line 248
    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v29

    sub-int v12, v12, v29

    .line 249
    if-gez v12, :cond_7

    const/4 v12, 0x0

    .line 250
    :cond_7
    const/high16 v29, -0x80000000

    move/from16 v0, v29

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .restart local v17    # "measurecSpecHeight":I
    goto/16 :goto_2

    .line 265
    .restart local v28    # "w":I
    :cond_8
    const/high16 v29, -0x80000000

    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .restart local v18    # "measurecSpecWidth":I
    goto/16 :goto_3

    .line 295
    .end local v5    # "actualAvailableWidthForChildren":I
    .end local v9    # "cellWidthPerc":F
    .end local v12    # "h":I
    .end local v17    # "measurecSpecHeight":I
    .end local v18    # "measurecSpecWidth":I
    .end local v27    # "view":Lnet/veritran/component/view/VTUIComponentView;
    .end local v28    # "w":I
    :cond_9
    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->childrenHeight:[I

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v13, v0, :cond_e

    .line 296
    const-string v29, "VTStaticTableRowView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " Second pass for col "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ("

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->childrenHeight:[I

    move-object/from16 v31, v0

    aget v31, v31, v13

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ":"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ")"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->childrenHeight:[I

    move-object/from16 v29, v0

    aget v29, v29, v13

    move/from16 v0, v29

    move/from16 v1, v16

    if-ge v0, v1, :cond_c

    .line 298
    const-string v29, "VTStaticTableRowView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " needed"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->percentagesCellsWidth:[I

    move-object/from16 v29, v0

    aget v29, v29, v13

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x42c80000    # 100.0f

    div-float v9, v29, v30

    .line 300
    .restart local v9    # "cellWidthPerc":F
    const-string v29, "VTStaticTableRowView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " percentagesCellsWidth["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "] "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->percentagesCellsWidth:[I

    move-object/from16 v31, v0

    aget v31, v31, v13

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    int-to-float v0, v7

    move/from16 v29, v0

    mul-float v29, v29, v9

    move/from16 v0, v29

    float-to-int v5, v0

    .line 302
    .restart local v5    # "actualAvailableWidthForChildren":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lnet/veritran/component/view/VTStaticTableRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lnet/veritran/component/view/VTUIComponentView;

    .line 303
    .restart local v27    # "view":Lnet/veritran/component/view/VTUIComponentView;
    move/from16 v28, v5

    .line 304
    .restart local v28    # "w":I
    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v29

    const/high16 v30, -0x40800000    # -1.0f

    cmpl-float v29, v29, v30

    if-eqz v29, :cond_a

    .line 305
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v30

    mul-float v29, v29, v30

    const/high16 v30, 0x42c80000    # 100.0f

    div-float v29, v29, v30

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v28, v0

    .line 307
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredLeftPadding:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->measuredRightPadding:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    .line 309
    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredLeftMargin()I

    move-result v29

    sub-int v28, v28, v29

    .line 310
    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredRightMargin()I

    move-result v29

    sub-int v28, v28, v29

    .line 311
    if-gez v28, :cond_b

    const/16 v28, 0x0

    .line 313
    :cond_b
    invoke-interface/range {v27 .. v27}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v29

    const/high16 v30, -0x40800000    # -1.0f

    cmpl-float v29, v29, v30

    if-eqz v29, :cond_d

    .line 314
    const/high16 v29, 0x40000000    # 2.0f

    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 318
    .restart local v18    # "measurecSpecWidth":I
    :goto_5
    const-string v30, "VTStaticTableRowView"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " Measuring "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v29, v27

    check-cast v29, Landroid/view/View;

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " with w="

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, ",maxChildHeight="

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v16

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .restart local v17    # "measurecSpecHeight":I
    move-object/from16 v29, v27

    .line 320
    check-cast v29, Lnet/veritran/component/view/VTPanelView;

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTPanelView;->setFixedWidth(I)V

    move-object/from16 v29, v27

    .line 321
    check-cast v29, Lnet/veritran/component/view/VTPanelView;

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTPanelView;->setFixedHeight(I)V

    move-object/from16 v29, v27

    .line 322
    check-cast v29, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lnet/veritran/component/view/VTStaticTableRowView;->measureChild(Landroid/view/View;II)V

    move-object/from16 v29, v27

    .line 323
    check-cast v29, Landroid/view/View;

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .restart local v20    # "measuredChildWidth":I
    move-object/from16 v29, v27

    .line 324
    check-cast v29, Landroid/view/View;

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    .line 325
    .restart local v19    # "measuredChildHeight":I
    const-string v29, "VTStaticTableRowView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    check-cast v27, Landroid/view/View;

    .end local v27    # "view":Lnet/veritran/component/view/VTUIComponentView;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " measuredChildWidth:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";measuredChildHeight:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .end local v5    # "actualAvailableWidthForChildren":I
    .end local v9    # "cellWidthPerc":F
    .end local v17    # "measurecSpecHeight":I
    .end local v18    # "measurecSpecWidth":I
    .end local v19    # "measuredChildHeight":I
    .end local v20    # "measuredChildWidth":I
    .end local v28    # "w":I
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 316
    .restart local v5    # "actualAvailableWidthForChildren":I
    .restart local v9    # "cellWidthPerc":F
    .restart local v27    # "view":Lnet/veritran/component/view/VTUIComponentView;
    .restart local v28    # "w":I
    :cond_d
    const/high16 v29, -0x80000000

    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .restart local v18    # "measurecSpecWidth":I
    goto/16 :goto_5

    .line 329
    .end local v5    # "actualAvailableWidthForChildren":I
    .end local v9    # "cellWidthPerc":F
    .end local v18    # "measurecSpecWidth":I
    .end local v27    # "view":Lnet/veritran/component/view/VTUIComponentView;
    .end local v28    # "w":I
    :cond_e
    const-string v29, "VTStaticTableRowView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " Measuring row with ["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ","

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->maxRowHeight:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->maxRowHeight:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v7, v1}, Lnet/veritran/component/view/VTStaticTableRowView;->setMeasuredDimension(II)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->backgroundColor:Ljava/lang/Integer;

    move-object/from16 v29, v0

    if-eqz v29, :cond_f

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->backgroundColor:Ljava/lang/Integer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTStaticTableRowView;->setBackgroundColor(I)V

    .line 334
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->backgroundImage:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->backgroundImage:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_10

    .line 335
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->backgroundImage:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableRowView;->maxRowHeight:I

    move/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v7, v2}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 336
    .local v8, "b":Landroid/graphics/Bitmap;
    new-instance v29, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTStaticTableRowView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    .end local v8    # "b":Landroid/graphics/Bitmap;
    :cond_10
    return-void
.end method

.method public setBorderBottomColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "borderBottomColor"    # Ljava/lang/Integer;

    .prologue
    .line 859
    iput-object p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomColor:Ljava/lang/Integer;

    .line 860
    iget-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomColor:Ljava/lang/Integer;

    .line 861
    :cond_0
    return-void
.end method

.method public setBorderBottomSize(I)V
    .locals 0
    .param p1, "borderBottomSize"    # I

    .prologue
    .line 744
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomSize:I

    .line 745
    return-void
.end method

.method public setBorderBottomStyle(I)V
    .locals 0
    .param p1, "borderBottomStyle"    # I

    .prologue
    .line 800
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderBottomStyle:I

    .line 801
    return-void
.end method

.method public setBorderLeftColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "borderLeftColor"    # Ljava/lang/Integer;

    .prologue
    .line 814
    iput-object p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftColor:Ljava/lang/Integer;

    .line 815
    iget-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftColor:Ljava/lang/Integer;

    .line 816
    :cond_0
    return-void
.end method

.method public setBorderLeftSize(I)V
    .locals 0
    .param p1, "borderLeftSize"    # I

    .prologue
    .line 702
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftSize:I

    .line 703
    return-void
.end method

.method public setBorderLeftStyle(I)V
    .locals 0
    .param p1, "borderLeftStyle"    # I

    .prologue
    .line 758
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderLeftStyle:I

    .line 759
    return-void
.end method

.method public setBorderRightColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "borderRightColor"    # Ljava/lang/Integer;

    .prologue
    .line 844
    iput-object p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightColor:Ljava/lang/Integer;

    .line 845
    iget-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightColor:Ljava/lang/Integer;

    .line 846
    :cond_0
    return-void
.end method

.method public setBorderRightSize(I)V
    .locals 0
    .param p1, "borderRightSize"    # I

    .prologue
    .line 730
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightSize:I

    .line 731
    return-void
.end method

.method public setBorderRightStyle(I)V
    .locals 0
    .param p1, "borderRightStyle"    # I

    .prologue
    .line 786
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderRightStyle:I

    .line 787
    return-void
.end method

.method public setBorderTopColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "borderTopColor"    # Ljava/lang/Integer;

    .prologue
    .line 829
    iput-object p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopColor:Ljava/lang/Integer;

    .line 830
    iget-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopColor:Ljava/lang/Integer;

    .line 831
    :cond_0
    return-void
.end method

.method public setBorderTopSize(I)V
    .locals 0
    .param p1, "borderTopSize"    # I

    .prologue
    .line 716
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopSize:I

    .line 717
    return-void
.end method

.method public setBorderTopStyle(I)V
    .locals 0
    .param p1, "borderTopStyle"    # I

    .prologue
    .line 772
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->borderTopStyle:I

    .line 773
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 616
    iput-object p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->backgroundColor:Ljava/lang/Integer;

    .line 617
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 688
    iput-object p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->backgroundImage:Ljava/lang/String;

    .line 689
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 1
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 621
    if-nez p1, :cond_0

    const-string p1, "left"

    .line 622
    :cond_0
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTStaticTableRowView;->setGravity(I)V

    .line 630
    :goto_0
    return-void

    .line 624
    :cond_1
    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 625
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTStaticTableRowView;->setGravity(I)V

    goto :goto_0

    .line 627
    :cond_2
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTStaticTableRowView;->setGravity(I)V

    goto :goto_0
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 636
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 3
    .param p1, "h"    # I

    .prologue
    .line 682
    const-string v0, "VTStaticTableRowView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTStaticTableRowView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setFixedHeight("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedHeight:I

    .line 684
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 91
    const-string v0, "VTStaticTableRowView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFixedMargins("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedLeftMargin:F

    .line 93
    iput p2, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedTopMargin:F

    .line 94
    iput p3, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedRightMargin:F

    .line 95
    iput p4, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedBottomMargin:F

    .line 96
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 668
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->fixedWidth:I

    .line 669
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 645
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageHeight:F

    .line 646
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 601
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageLeftMargin:F

    .line 602
    iput p2, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageTopMargin:F

    .line 603
    iput p3, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageRightMargin:F

    .line 604
    iput p4, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageBottomMargin:F

    .line 605
    return-void
.end method

.method public setPercentagePaddings(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 608
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageLeftPadding:F

    .line 609
    iput p2, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageTopPadding:F

    .line 610
    iput p3, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageRightPadding:F

    .line 611
    iput p4, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageBottomPadding:F

    .line 612
    return-void
.end method

.method public setPercentagesCellsWidth([I)V
    .locals 0
    .param p1, "percentagesCellsWidth"    # [I

    .prologue
    .line 173
    iput-object p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentagesCellsWidth:[I

    .line 174
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/VTRandom;->getInstance()Lnet/veritran/vtuserapplication/utils/VTRandom;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/utils/VTRandom;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TableRow;->setTag(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 640
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableRowView;->percentageWidth:F

    .line 641
    return-void
.end method
