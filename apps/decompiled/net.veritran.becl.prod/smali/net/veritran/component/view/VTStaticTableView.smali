.class public Lnet/veritran/component/view/VTStaticTableView;
.super Landroid/widget/TableLayout;
.source "VTStaticTableView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentContainerView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTStaticTableView"


# instance fields
.field private backgroundColor:Ljava/lang/Integer;

.field private backgroundImage:Ljava/lang/String;

.field fixedBottomMargin:F

.field private fixedHeight:I

.field fixedLeftMargin:F

.field fixedRightMargin:F

.field fixedTopMargin:F

.field private fixedWidth:I

.field private isRoot:Z

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


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 4
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    const/4 v3, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 20
    iput v2, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageWidth:F

    .line 21
    iput v2, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageHeight:F

    .line 24
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageLeftPadding:F

    .line 25
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageTopPadding:F

    .line 26
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageRightPadding:F

    .line 27
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageBottomPadding:F

    .line 29
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredTopPadding:I

    .line 30
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredRightPadding:I

    .line 31
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredLeftPadding:I

    .line 32
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredBottomPadding:I

    .line 34
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageLeftMargin:F

    .line 35
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageTopMargin:F

    .line 36
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageRightMargin:F

    .line 37
    iput v1, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageBottomMargin:F

    .line 39
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredLeftMargin:I

    .line 40
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredRightMargin:I

    .line 41
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredTopMargin:I

    .line 42
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredBottomMargin:I

    .line 44
    iput v2, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedLeftMargin:F

    .line 45
    iput v2, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedRightMargin:F

    .line 46
    iput v2, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedTopMargin:F

    .line 47
    iput v2, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedBottomMargin:F

    .line 53
    iput-boolean v0, p0, Lnet/veritran/component/view/VTStaticTableView;->isRoot:Z

    .line 55
    iput v3, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedWidth:I

    .line 57
    iput v3, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedHeight:I

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTStaticTableView;->setScrollContainer(Z)V

    .line 64
    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredBottomPadding()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredLeftPadding()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredRightPadding()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredTopMargin:I

    return v0
.end method

.method public getMeasuredTopPadding()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageWidth:F

    return v0
.end method

.method public isRoot()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lnet/veritran/component/view/VTStaticTableView;->isRoot:Z

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 156
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageLeftMargin:F

    .line 157
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredLeftMargin:I

    .line 158
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageRightMargin:F

    .line 159
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredRightMargin:I

    .line 160
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageTopMargin:F

    .line 161
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredTopMargin:I

    .line 162
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageBottomMargin:F

    .line 163
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredBottomMargin:I

    .line 164
    return-void

    .line 157
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 159
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 161
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 163
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method public measureAbsolutePaddings()V
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageLeftPadding:F

    .line 169
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredLeftPadding:I

    .line 170
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageRightPadding:F

    .line 171
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredRightPadding:I

    .line 172
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageTopPadding:F

    .line 173
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredTopPadding:I

    .line 174
    iget v0, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageBottomPadding:F

    .line 175
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTStaticTableView;->measuredBottomPadding:I

    .line 176
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 383
    const-string v12, "VTStaticTableView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " onLayout -> left:+"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";top:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";right:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";bottom:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v12, "VTStaticTableView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " onLayout -> getLeft():+"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Lnet/veritran/component/view/VTStaticTableView;->getLeft()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";getTop():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Lnet/veritran/component/view/VTStaticTableView;->getTop()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";getWidth():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Lnet/veritran/component/view/VTStaticTableView;->getWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";getHeight():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Lnet/veritran/component/view/VTStaticTableView;->getHeight()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lnet/veritran/component/view/VTStaticTableView;->getChildCount()I

    move-result v1

    .line 386
    .local v1, "childCount":I
    const/4 v10, 0x0

    .line 388
    .local v10, "xChildrenStart":I
    const/4 v11, 0x0

    .line 392
    .local v11, "yChildrenStart":I
    move v6, v10

    .line 393
    .local v6, "nleft":I
    move v8, v11

    .line 396
    .local v8, "ntop":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 397
    invoke-virtual {p0, v4}, Lnet/veritran/component/view/VTStaticTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lnet/veritran/component/view/VTUIComponentView;

    .local v9, "v":Lnet/veritran/component/view/VTUIComponentView;
    move-object v12, v9

    .line 398
    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .local v3, "childWidth":I
    move-object v12, v9

    .line 399
    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 401
    .local v2, "childHeight":I
    invoke-interface {v9}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredLeftMargin()I

    move-result v12

    add-int/lit8 v6, v12, 0x0

    .line 402
    const-string v12, "VTStaticTableView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " laying["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] nleft w/child margin:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-interface {v9}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v12

    add-int/2addr v8, v12

    .line 405
    const-string v12, "VTStaticTableView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " laying["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] ntop w/child margin:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    add-int v7, v6, v3

    .line 408
    .local v7, "nright":I
    const-string v12, "VTStaticTableView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " laying["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] nright:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-interface {v9}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredRightMargin()I

    move-result v12

    add-int/2addr v7, v12

    .line 410
    const-string v12, "VTStaticTableView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " laying["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] nright 2:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    add-int v5, v8, v2

    .line 413
    .local v5, "nbottom":I
    const-string v12, "VTStaticTableView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " laying["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] nbottom:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-interface {v9}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v12

    add-int/2addr v5, v12

    .line 415
    const-string v12, "VTStaticTableView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " laying["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] nbottom 2:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v9

    .line 430
    check-cast v12, Landroid/view/View;

    invoke-virtual {v12, v6, v8, v7, v5}, Landroid/view/View;->layout(IIII)V

    .line 431
    const-string v13, "VTStaticTableView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " laying["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "] ("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v12, v9

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ") left:+"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ";top:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ";right:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ";bottom:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    move v6, v10

    .line 433
    invoke-interface {v9}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v12

    add-int v8, v5, v12

    .line 396
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 435
    .end local v2    # "childHeight":I
    .end local v3    # "childWidth":I
    .end local v5    # "nbottom":I
    .end local v7    # "nright":I
    .end local v9    # "v":Lnet/veritran/component/view/VTUIComponentView;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 30
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 212
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 213
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Landroid/widget/TableLayout;->setMeasuredDimension(II)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const-string v25, "VTStaticTableView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "] -> widthMeasureSpec: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";heightMeasureSpec:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/view/VTStaticTableView;->isRoot:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    const-string v25, "VTStaticTableView"

    const-string v26, "IS ROOT"

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_2
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTStaticTableView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 222
    .local v20, "mw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 223
    .local v17, "mh":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    .line 224
    .local v22, "sw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 225
    .local v21, "sh":I
    invoke-static/range {v20 .. v20}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v19

    .line 226
    .local v19, "modeWidth":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v18

    .line 227
    .local v18, "modeHeight":Ljava/lang/String;
    const-string v25, "VTStaticTableView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure -> width("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "):"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";height("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "):"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->fixedHeight:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    .line 229
    const/high16 v17, 0x40000000    # 2.0f

    .line 230
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->fixedHeight:I

    move/from16 v21, v0

    .line 237
    :cond_3
    if-nez v17, :cond_4

    if-nez v21, :cond_4

    .line 238
    const/high16 v17, -0x80000000

    .line 239
    const v21, 0xffffff

    .line 240
    const-string v25, "VTStaticTableView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure REDEF! -> width("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "):"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";height("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "):"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_4
    const-string v25, "VTStaticTableView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure -> percentageLeftMargin:+"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->percentageLeftMargin:F

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";percentageTopMargin:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->percentageTopMargin:F

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";percentageRightMargin:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->percentageRightMargin:F

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";percentageBottomMargin:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->percentageBottomMargin:F

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->measureAbsoluteMargins()V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->measureAbsolutePaddings()V

    .line 248
    const-string v25, "VTStaticTableView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure -> measuredLeftMargin:+"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->measuredLeftMargin:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";measuredTopMargin:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->measuredTopMargin:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";percentageRightMargin:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->percentageRightMargin:F

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";percentageBottomMargin:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->percentageBottomMargin:F

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    move/from16 v6, v22

    .line 252
    .local v6, "availableWidthForComponent":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->percentageWidth:F

    move/from16 v25, v0

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_5

    .line 253
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/view/VTStaticTableView;->isRoot:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 254
    int-to-float v0, v6

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->percentageWidth:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    const/high16 v26, 0x42c80000    # 100.0f

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v6, v0

    .line 257
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->measuredLeftMargin:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->measuredRightMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v6, v6, v25

    .line 259
    move/from16 v5, v21

    .line 260
    .local v5, "availableHeightForComponent":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->percentageHeight:F

    move/from16 v25, v0

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_6

    .line 261
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/view/VTStaticTableView;->isRoot:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    .line 262
    int-to-float v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->percentageHeight:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    const/high16 v26, 0x42c80000    # 100.0f

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v5, v0

    .line 265
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->measuredTopMargin:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->measuredBottomMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v5, v5, v25

    .line 267
    move v14, v6

    .line 269
    .local v14, "initialAvailableWidthForChildren":I
    move v13, v5

    .line 272
    .local v13, "initialAvailableHeightForChildren":I
    move v4, v13

    .line 273
    .local v4, "actualAvailableHeightForChildren":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getChildCount()I

    move-result v8

    .line 274
    .local v8, "childCount":I
    const-string v25, "VTStaticTableView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure children="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v25, "VTStaticTableView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure [availableWidthForComponent:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",availableHeightForComponent:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v25, "VTStaticTableView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure [initialAvailableWidthForChildren:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",initialAvailableHeightForChildren:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v8, :cond_9

    .line 280
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lnet/veritran/component/view/VTStaticTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lnet/veritran/component/view/VTUIComponentView;

    .line 283
    .local v23, "view":Lnet/veritran/component/view/VTUIComponentView;
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getHeightPercentage()F

    move-result v25

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_8

    .line 284
    const-string v26, "VTStaticTableView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " Measuring "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v25, v23

    check-cast v25, Landroid/view/View;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " with fixed percentage ("

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getHeightPercentage()F

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, ")"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    int-to-float v0, v13

    move/from16 v25, v0

    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getHeightPercentage()F

    move-result v26

    mul-float v25, v25, v26

    const/high16 v26, 0x42c80000    # 100.0f

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v11, v0

    .line 286
    .local v11, "h":I
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v25

    sub-int v11, v11, v25

    .line 287
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v25

    sub-int v11, v11, v25

    .line 288
    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v0, v25

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 289
    .local v15, "measurecSpecHeight":I
    move/from16 v24, v14

    .line 290
    .local v24, "w":I
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v25

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_7

    .line 291
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v26

    mul-float v25, v25, v26

    const/high16 v26, 0x42c80000    # 100.0f

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v24, v0

    .line 293
    :cond_7
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredLeftMargin()I

    move-result v25

    sub-int v24, v24, v25

    .line 294
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredRightMargin()I

    move-result v25

    sub-int v24, v24, v25

    .line 295
    const/high16 v25, -0x80000000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 296
    .local v16, "measurecSpecWidth":I
    const-string v26, "VTStaticTableView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " Measuring "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v25, v23

    check-cast v25, Landroid/view/View;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " with w="

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, ",h="

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, v23

    .line 297
    check-cast v25, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v15}, Lnet/veritran/component/view/VTStaticTableView;->measureChild(Landroid/view/View;II)V

    .line 298
    const-string v26, "VTStaticTableView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v25, v23

    check-cast v25, Landroid/view/View;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " measuredWidth:"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v25, v23

    check-cast v25, Landroid/view/View;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, ";measuredHeight:"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    check-cast v23, Landroid/view/View;

    .line 299
    .end local v23    # "view":Lnet/veritran/component/view/VTUIComponentView;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 298
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sub-int/2addr v4, v11

    .line 279
    .end local v11    # "h":I
    .end local v15    # "measurecSpecHeight":I
    .end local v16    # "measurecSpecWidth":I
    .end local v24    # "w":I
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 311
    :cond_9
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v8, :cond_c

    .line 312
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lnet/veritran/component/view/VTStaticTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lnet/veritran/component/view/VTUIComponentView;

    .line 315
    .restart local v23    # "view":Lnet/veritran/component/view/VTUIComponentView;
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getHeightPercentage()F

    move-result v25

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v25, v25, v26

    if-nez v25, :cond_b

    .line 316
    const-string v26, "VTStaticTableView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " Measuring "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v25, v23

    check-cast v25, Landroid/view/View;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " without fixed percentage ("

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getHeightPercentage()F

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, ")"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    move v11, v4

    .line 318
    .restart local v11    # "h":I
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v25

    sub-int v11, v11, v25

    .line 319
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v25

    sub-int v11, v11, v25

    .line 320
    const/high16 v25, -0x80000000

    move/from16 v0, v25

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 321
    .restart local v15    # "measurecSpecHeight":I
    move/from16 v24, v14

    .line 322
    .restart local v24    # "w":I
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v25

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_a

    .line 323
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v26

    mul-float v25, v25, v26

    const/high16 v26, 0x42c80000    # 100.0f

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 325
    :cond_a
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredLeftMargin()I

    move-result v25

    sub-int v24, v24, v25

    .line 326
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredRightMargin()I

    move-result v25

    sub-int v24, v24, v25

    .line 327
    const-string v26, "VTStaticTableView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " Measuring "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v25, v23

    check-cast v25, Landroid/view/View;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " with w="

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, ",h="

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/high16 v25, -0x80000000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .restart local v16    # "measurecSpecWidth":I
    move-object/from16 v25, v23

    .line 329
    check-cast v25, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v15}, Lnet/veritran/component/view/VTStaticTableView;->measureChild(Landroid/view/View;II)V

    .line 330
    const-string v26, "VTStaticTableView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v25, v23

    check-cast v25, Landroid/view/View;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " measuredWidth:"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v25, v23

    check-cast v25, Landroid/view/View;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, ";measuredHeight:"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v25, v23

    check-cast v25, Landroid/view/View;

    .line 331
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 330
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    check-cast v23, Landroid/view/View;

    .end local v23    # "view":Lnet/veritran/component/view/VTUIComponentView;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    sub-int v4, v4, v25

    .line 311
    .end local v11    # "h":I
    .end local v15    # "measurecSpecHeight":I
    .end local v16    # "measurecSpecWidth":I
    .end local v24    # "w":I
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 342
    :cond_c
    const-string v25, "VTStaticTableView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure -> width("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "):"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";height("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "):"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v25, "VTStaticTableView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure -> percWidth:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->percentageWidth:F

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";percHeight:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->percentageHeight:F

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTStaticTableView;->percentageHeight:F

    move/from16 v25, v0

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_e

    .line 347
    move v10, v6

    .line 348
    .local v10, "finalWidth":I
    move v9, v5

    .line 353
    .local v9, "finalHeight":I
    :goto_3
    const-string v25, "VTStaticTableView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure -> finalWidth:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";finalHeight:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Lnet/veritran/component/view/VTStaticTableView;->setMeasuredDimension(II)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableView;->backgroundColor:Ljava/lang/Integer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableView;->backgroundColor:Ljava/lang/Integer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTStaticTableView;->setBackgroundColor(I)V

    .line 358
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableView;->backgroundImage:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableView;->backgroundImage:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 359
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTStaticTableView;->backgroundImage:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v10, v9}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 360
    .local v7, "b":Landroid/graphics/Bitmap;
    new-instance v25, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTStaticTableView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTStaticTableView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 350
    .end local v7    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "finalHeight":I
    .end local v10    # "finalWidth":I
    :cond_e
    move v10, v6

    .line 351
    .restart local v10    # "finalWidth":I
    sub-int v9, v5, v4

    .restart local v9    # "finalHeight":I
    goto/16 :goto_3
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 180
    iput-object p1, p0, Lnet/veritran/component/view/VTStaticTableView;->backgroundColor:Ljava/lang/Integer;

    .line 181
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 468
    iput-object p1, p0, Lnet/veritran/component/view/VTStaticTableView;->backgroundImage:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 186
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 193
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 463
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedHeight:I

    .line 464
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 68
    const-string v0, "VTStaticTableView"

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

    .line 69
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedLeftMargin:F

    .line 70
    iput p2, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedTopMargin:F

    .line 71
    iput p3, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedRightMargin:F

    .line 72
    iput p4, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedBottomMargin:F

    .line 73
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 449
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableView;->fixedWidth:I

    .line 450
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 97
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageHeight:F

    .line 98
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 101
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageLeftMargin:F

    .line 102
    iput p2, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageTopMargin:F

    .line 103
    iput p3, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageRightMargin:F

    .line 104
    iput p4, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageBottomMargin:F

    .line 105
    return-void
.end method

.method public setPercentagePaddings(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 108
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageLeftPadding:F

    .line 109
    iput p2, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageTopPadding:F

    .line 110
    iput p3, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageRightPadding:F

    .line 111
    iput p4, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageBottomPadding:F

    .line 112
    return-void
.end method

.method public setRoot(Z)V
    .locals 0
    .param p1, "isRoot"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lnet/veritran/component/view/VTStaticTableView;->isRoot:Z

    .line 208
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 77
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

    invoke-super {p0, v0}, Landroid/widget/TableLayout;->setTag(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 92
    iput p1, p0, Lnet/veritran/component/view/VTStaticTableView;->percentageWidth:F

    .line 93
    return-void
.end method
