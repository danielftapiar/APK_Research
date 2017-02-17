.class public Lnet/veritran/component/view/VTLogicalContainerView;
.super Landroid/widget/FrameLayout;
.source "VTLogicalContainerView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentContainerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;,
        Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VTLogicalContainerView"


# instance fields
.field private backgroundView:Lnet/veritran/component/view/VTPanelView;

.field private direction:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;

.field private logicalContainerTouchListener:Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;

.field private mainView:Lnet/veritran/component/view/VTPanelView;

.field private movement1:I

.field private movement2:I

.field private movementsSet:Z

.field private pixelsHeight:I

.field private pixelsWidth:I

.field private type:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput-boolean v2, p0, Lnet/veritran/component/view/VTLogicalContainerView;->movementsSet:Z

    .line 18
    iput v2, p0, Lnet/veritran/component/view/VTLogicalContainerView;->movement1:I

    .line 19
    iput v2, p0, Lnet/veritran/component/view/VTLogicalContainerView;->movement2:I

    .line 33
    sget-object v0, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;->Horizontal:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;

    iput-object v0, p0, Lnet/veritran/component/view/VTLogicalContainerView;->direction:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;

    .line 34
    sget-object v0, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;->Undefined:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    iput-object v0, p0, Lnet/veritran/component/view/VTLogicalContainerView;->type:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    .line 36
    iput-object v1, p0, Lnet/veritran/component/view/VTLogicalContainerView;->mainView:Lnet/veritran/component/view/VTPanelView;

    .line 37
    iput-object v1, p0, Lnet/veritran/component/view/VTLogicalContainerView;->backgroundView:Lnet/veritran/component/view/VTPanelView;

    .line 38
    iput-object v1, p0, Lnet/veritran/component/view/VTLogicalContainerView;->logicalContainerTouchListener:Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;

    .line 78
    const-string v0, "VTLogicalContainerView"

    const-string v1, "VTLogicalContainerView constructor"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v2}, Lnet/veritran/component/view/VTLogicalContainerView;->setWillNotDraw(Z)V

    .line 83
    return-void
.end method

.method private getBackgroundView()Lnet/veritran/component/view/VTPanelView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lnet/veritran/component/view/VTLogicalContainerView;->backgroundView:Lnet/veritran/component/view/VTPanelView;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTLogicalContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/view/VTPanelView;

    iput-object v0, p0, Lnet/veritran/component/view/VTLogicalContainerView;->mainView:Lnet/veritran/component/view/VTPanelView;

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTLogicalContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/view/VTPanelView;

    iput-object v0, p0, Lnet/veritran/component/view/VTLogicalContainerView;->backgroundView:Lnet/veritran/component/view/VTPanelView;

    .line 73
    :cond_0
    iget-object v0, p0, Lnet/veritran/component/view/VTLogicalContainerView;->backgroundView:Lnet/veritran/component/view/VTPanelView;

    return-object v0
.end method

.method private getMainView()Lnet/veritran/component/view/VTPanelView;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lnet/veritran/component/view/VTLogicalContainerView;->mainView:Lnet/veritran/component/view/VTPanelView;

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0, v1}, Lnet/veritran/component/view/VTLogicalContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/view/VTPanelView;

    iput-object v0, p0, Lnet/veritran/component/view/VTLogicalContainerView;->mainView:Lnet/veritran/component/view/VTPanelView;

    .line 46
    iget-object v0, p0, Lnet/veritran/component/view/VTLogicalContainerView;->mainView:Lnet/veritran/component/view/VTPanelView;

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTPanelView;->setBackgroundColor(I)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTLogicalContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/view/VTPanelView;

    iput-object v0, p0, Lnet/veritran/component/view/VTLogicalContainerView;->backgroundView:Lnet/veritran/component/view/VTPanelView;

    .line 49
    iget-object v0, p0, Lnet/veritran/component/view/VTLogicalContainerView;->logicalContainerTouchListener:Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/veritran/component/view/VTLogicalContainerView;->type:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    sget-object v1, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;->TwoPanelsSwipe:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    if-ne v0, v1, :cond_0

    .line 51
    new-instance v0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;

    iget-object v1, p0, Lnet/veritran/component/view/VTLogicalContainerView;->mainView:Lnet/veritran/component/view/VTPanelView;

    invoke-direct {v0, v1}, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lnet/veritran/component/view/VTLogicalContainerView;->logicalContainerTouchListener:Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;

    .line 55
    :cond_0
    iget-object v0, p0, Lnet/veritran/component/view/VTLogicalContainerView;->mainView:Lnet/veritran/component/view/VTPanelView;

    return-object v0
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 270
    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/component/view/VTPanelView;->getFixedHeight()I

    move-result v0

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/component/view/VTPanelView;->getFixedWidth()I

    move-result v0

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 254
    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/component/view/VTPanelView;->getHeightPercentage()F

    move-result v0

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/component/view/VTPanelView;->getMeasuredBottomMargin()I

    move-result v0

    return v0
.end method

.method public getMeasuredBottomPadding()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/component/view/VTPanelView;->getMeasuredLeftMargin()I

    move-result v0

    return v0
.end method

.method public getMeasuredLeftPadding()I
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/component/view/VTPanelView;->getMeasuredRightMargin()I

    move-result v0

    return v0
.end method

.method public getMeasuredRightPadding()I
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/component/view/VTPanelView;->getMeasuredTopMargin()I

    move-result v0

    return v0
.end method

.method public getMeasuredTopPadding()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public getPixelsHeight()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lnet/veritran/component/view/VTLogicalContainerView;->pixelsHeight:I

    return v0
.end method

.method public getPixelsWidth()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lnet/veritran/component/view/VTLogicalContainerView;->pixelsWidth:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/component/view/VTPanelView;->getWidthPercentage()F

    move-result v0

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/component/view/VTPanelView;->measureAbsoluteMargins()V

    .line 209
    return-void
.end method

.method public measureAbsolutePaddings()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 98
    const-string v0, "VTLogicalContainerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onLayout -> left:+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";bottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getBackgroundView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v0

    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getBackgroundView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/component/view/VTPanelView;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getBackgroundView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/component/view/VTPanelView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lnet/veritran/component/view/VTPanelView;->layout(IIII)V

    .line 101
    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v0

    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/component/view/VTPanelView;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/component/view/VTPanelView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lnet/veritran/component/view/VTPanelView;->layout(IIII)V

    .line 102
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 106
    const-string v13, "VTLogicalContainerView"

    const-string v14, "....................................."

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v13, "VTLogicalContainerView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getTag()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " onMeasure ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lnet/veritran/component/view/VTLogicalContainerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 111
    .local v9, "mw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 112
    .local v6, "mh":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 113
    .local v11, "sw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 114
    .local v10, "sh":I
    invoke-static {v9}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "modeWidth":Ljava/lang/String;
    invoke-static {v6}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "modeHeight":Ljava/lang/String;
    const-string v13, "VTLogicalContainerView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getTag()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " onMeasure -> width("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "):"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";height("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "):"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v13, v1, v2}, Lnet/veritran/component/view/VTLogicalContainerView;->measureChild(Landroid/view/View;II)V

    .line 121
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v13

    invoke-virtual {v13}, Lnet/veritran/component/view/VTPanelView;->getMeasuredHeight()I

    move-result v3

    .line 122
    .local v3, "childrenHeight":I
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v13

    invoke-virtual {v13}, Lnet/veritran/component/view/VTPanelView;->getMeasuredWidth()I

    move-result v4

    .line 124
    .local v4, "childrenWidth":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnet/veritran/component/view/VTLogicalContainerView;->movementsSet:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/view/VTLogicalContainerView;->logicalContainerTouchListener:Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;

    if-eqz v13, :cond_0

    .line 126
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/view/VTLogicalContainerView;->direction:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;

    sget-object v14, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;->Horizontal:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;

    if-ne v13, v14, :cond_1

    .line 128
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/view/VTLogicalContainerView;->logicalContainerTouchListener:Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;

    neg-int v14, v4

    move-object/from16 v0, p0

    iget v15, v0, Lnet/veritran/component/view/VTLogicalContainerView;->movement1:I

    mul-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x64

    move-object/from16 v0, p0

    iget v15, v0, Lnet/veritran/component/view/VTLogicalContainerView;->movement2:I

    mul-int/2addr v15, v4

    div-int/lit8 v15, v15, 0x64

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->setMovements(IIII)V

    .line 135
    :goto_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lnet/veritran/component/view/VTLogicalContainerView;->movementsSet:Z

    .line 138
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lnet/veritran/component/view/VTLogicalContainerView;->setMeasuredDimension(II)V

    .line 140
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 141
    .local v12, "wm":I
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 143
    .local v5, "hm":I
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getBackgroundView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12, v5}, Lnet/veritran/component/view/VTLogicalContainerView;->measureChild(Landroid/view/View;II)V

    .line 145
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lnet/veritran/component/view/VTLogicalContainerView;->bringChildToFront(Landroid/view/View;)V

    .line 147
    const-string v13, "VTLogicalContainerView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getTag()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " onMeasure, measured as "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void

    .line 132
    .end local v5    # "hm":I
    .end local v12    # "wm":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/view/VTLogicalContainerView;->logicalContainerTouchListener:Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;

    const/4 v14, 0x0

    const/4 v15, 0x0

    neg-int v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTLogicalContainerView;->movement1:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    div-int/lit8 v16, v16, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTLogicalContainerView;->movement2:I

    move/from16 v17, v0

    mul-int v17, v17, v3

    div-int/lit8 v17, v17, 0x64

    invoke-virtual/range {v13 .. v17}, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->setMovements(IIII)V

    goto/16 :goto_0
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 221
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 215
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 227
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 233
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 277
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 60
    const-string v0, "VTLogicalContainerView"

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

    .line 61
    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/veritran/component/view/VTPanelView;->setFixedMargins(FFFF)V

    .line 63
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 266
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 245
    return-void
.end method

.method public setMovements(IILnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;)V
    .locals 0
    .param p1, "movement1"    # I
    .param p2, "movement2"    # I
    .param p3, "type"    # Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;
    .param p4, "direction"    # Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;

    .prologue
    .line 87
    iput p1, p0, Lnet/veritran/component/view/VTLogicalContainerView;->movement1:I

    .line 88
    iput p2, p0, Lnet/veritran/component/view/VTLogicalContainerView;->movement2:I

    .line 89
    iput-object p3, p0, Lnet/veritran/component/view/VTLogicalContainerView;->type:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    .line 90
    iput-object p4, p0, Lnet/veritran/component/view/VTLogicalContainerView;->direction:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerDirection;

    .line 91
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 203
    invoke-direct {p0}, Lnet/veritran/component/view/VTLogicalContainerView;->getMainView()Lnet/veritran/component/view/VTPanelView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/veritran/component/view/VTPanelView;->setPercentageMargins(FFFF)V

    .line 204
    return-void
.end method

.method public setPercentagePaddings(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 308
    return-void
.end method

.method public setPixelsHeight(I)V
    .locals 0
    .param p1, "pixelsHeight"    # I

    .prologue
    .line 177
    iput p1, p0, Lnet/veritran/component/view/VTLogicalContainerView;->pixelsHeight:I

    .line 178
    return-void
.end method

.method public setPixelsWidth(I)V
    .locals 0
    .param p1, "pixelsWidth"    # I

    .prologue
    .line 162
    iput p1, p0, Lnet/veritran/component/view/VTLogicalContainerView;->pixelsWidth:I

    .line 163
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 94
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

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 239
    return-void
.end method
