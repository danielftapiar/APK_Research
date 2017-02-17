.class public Lnet/veritran/component/view/VTPanelView;
.super Landroid/widget/LinearLayout;
.source "VTPanelView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentContainerView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTPanelView"


# instance fields
.field private backgroundAspectKeep:Z

.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private backgroundBitmapRect:Landroid/graphics/Rect;

.field private backgroundColor:Ljava/lang/Integer;

.field private backgroundHorizontalAlign:Ljava/lang/String;

.field private backgroundVerticalAlign:Ljava/lang/String;

.field private borderBottomColor:Ljava/lang/Integer;

.field private borderBottomSize:I

.field private borderBottomStyle:I

.field private borderColor:Ljava/lang/Integer;

.field private borderLeftColor:Ljava/lang/Integer;

.field private borderLeftSize:I

.field private borderLeftStyle:I

.field private borderRightColor:Ljava/lang/Integer;

.field private borderRightSize:I

.field private borderRightStyle:I

.field private borderRounded:Z

.field private borderTopColor:Ljava/lang/Integer;

.field private borderTopSize:I

.field private borderTopStyle:I

.field public drawable:Ljava/lang/String;

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

.field paintOnDraw:Landroid/graphics/Paint;

.field private percHeight:F

.field private percWidth:F

.field private percentageBottomMargin:F

.field private percentageBottomPadding:F

.field private percentageLeftMargin:F

.field private percentageLeftPadding:F

.field private percentageRightMargin:F

.field private percentageRightPadding:F

.field private percentageTopMargin:F

.field private percentageTopPadding:F

.field public textAlign:Ljava/lang/String;

.field public verticalAlign:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput v2, p0, Lnet/veritran/component/view/VTPanelView;->percWidth:F

    .line 23
    iput v2, p0, Lnet/veritran/component/view/VTPanelView;->percHeight:F

    .line 25
    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->percentageLeftPadding:F

    .line 26
    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->percentageTopPadding:F

    .line 27
    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->percentageRightPadding:F

    .line 28
    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->percentageBottomPadding:F

    .line 30
    iput v1, p0, Lnet/veritran/component/view/VTPanelView;->measuredTopPadding:I

    .line 31
    iput v1, p0, Lnet/veritran/component/view/VTPanelView;->measuredRightPadding:I

    .line 32
    iput v1, p0, Lnet/veritran/component/view/VTPanelView;->measuredLeftPadding:I

    .line 33
    iput v1, p0, Lnet/veritran/component/view/VTPanelView;->measuredBottomPadding:I

    .line 35
    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->percentageLeftMargin:F

    .line 36
    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->percentageTopMargin:F

    .line 37
    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->percentageRightMargin:F

    .line 38
    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->percentageBottomMargin:F

    .line 40
    iput v2, p0, Lnet/veritran/component/view/VTPanelView;->fixedLeftMargin:F

    .line 41
    iput v2, p0, Lnet/veritran/component/view/VTPanelView;->fixedRightMargin:F

    .line 42
    iput v2, p0, Lnet/veritran/component/view/VTPanelView;->fixedTopMargin:F

    .line 43
    iput v2, p0, Lnet/veritran/component/view/VTPanelView;->fixedBottomMargin:F

    .line 45
    iput v1, p0, Lnet/veritran/component/view/VTPanelView;->measuredLeftMargin:I

    .line 46
    iput v1, p0, Lnet/veritran/component/view/VTPanelView;->measuredRightMargin:I

    .line 47
    iput v1, p0, Lnet/veritran/component/view/VTPanelView;->measuredTopMargin:I

    .line 48
    iput v1, p0, Lnet/veritran/component/view/VTPanelView;->measuredBottomMargin:I

    .line 50
    iput v1, p0, Lnet/veritran/component/view/VTPanelView;->borderLeftSize:I

    .line 51
    iput v1, p0, Lnet/veritran/component/view/VTPanelView;->borderTopSize:I

    .line 52
    iput v1, p0, Lnet/veritran/component/view/VTPanelView;->borderRightSize:I

    .line 53
    iput v1, p0, Lnet/veritran/component/view/VTPanelView;->borderBottomSize:I

    .line 55
    const/16 v0, -0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderLeftColor:Ljava/lang/Integer;

    .line 56
    const v0, -0xffff01

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderTopColor:Ljava/lang/Integer;

    .line 57
    const v0, -0xff0100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderRightColor:Ljava/lang/Integer;

    .line 58
    const/high16 v0, -0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderBottomColor:Ljava/lang/Integer;

    .line 60
    iput v1, p0, Lnet/veritran/component/view/VTPanelView;->borderLeftStyle:I

    .line 61
    iput v1, p0, Lnet/veritran/component/view/VTPanelView;->borderTopStyle:I

    .line 62
    iput v1, p0, Lnet/veritran/component/view/VTPanelView;->borderRightStyle:I

    .line 63
    iput v1, p0, Lnet/veritran/component/view/VTPanelView;->borderBottomStyle:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderColor:Ljava/lang/Integer;

    .line 66
    iput-boolean v1, p0, Lnet/veritran/component/view/VTPanelView;->borderRounded:Z

    .line 69
    iput v3, p0, Lnet/veritran/component/view/VTPanelView;->fixedWidth:I

    .line 70
    iput v3, p0, Lnet/veritran/component/view/VTPanelView;->fixedHeight:I

    .line 85
    iput-boolean v1, p0, Lnet/veritran/component/view/VTPanelView;->backgroundAspectKeep:Z

    .line 87
    const-string v0, "C"

    iput-object v0, p0, Lnet/veritran/component/view/VTPanelView;->backgroundHorizontalAlign:Ljava/lang/String;

    .line 89
    const-string v0, "M"

    iput-object v0, p0, Lnet/veritran/component/view/VTPanelView;->backgroundVerticalAlign:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lnet/veritran/component/view/VTPanelView;->isRoot:Z

    .line 860
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTPanelView;->paintOnDraw:Landroid/graphics/Paint;

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTPanelView;->setOrientation(I)V

    .line 98
    invoke-virtual {p0, v1}, Lnet/veritran/component/view/VTPanelView;->setWillNotDraw(Z)V

    .line 101
    return-void
.end method


# virtual methods
.method public getBorderBottomColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderBottomColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBorderBottomSize()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->borderBottomSize:I

    return v0
.end method

.method public getBorderBottomStyle()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->borderBottomStyle:I

    return v0
.end method

.method public getBorderLeftColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderLeftColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBorderLeftSize()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->borderLeftSize:I

    return v0
.end method

.method public getBorderLeftStyle()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->borderLeftStyle:I

    return v0
.end method

.method public getBorderRightColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderRightColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBorderRightSize()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->borderRightSize:I

    return v0
.end method

.method public getBorderRightStyle()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->borderRightStyle:I

    return v0
.end method

.method public getBorderTopColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderTopColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBorderTopSize()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->borderTopSize:I

    return v0
.end method

.method public getBorderTopStyle()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->borderTopStyle:I

    return v0
.end method

.method public getComponentVerticalAlignement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lnet/veritran/component/view/VTPanelView;->verticalAlign:Ljava/lang/String;

    return-object v0
.end method

.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->percHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredBottomPadding()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredBottomPadding:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredLeftPadding()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredLeftPadding:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredRightPadding()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredRightPadding:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredTopMargin:I

    return v0
.end method

.method public getMeasuredTopPadding()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredTopPadding:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->percWidth:F

    return v0
.end method

.method public isRoot()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lnet/veritran/component/view/VTPanelView;->isRoot:Z

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 197
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->percentageLeftMargin:F

    .line 198
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredLeftMargin:I

    .line 199
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->percentageRightMargin:F

    .line 200
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredRightMargin:I

    .line 201
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->percentageTopMargin:F

    .line 202
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredTopMargin:I

    .line 203
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->percentageBottomMargin:F

    .line 204
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredBottomMargin:I

    .line 205
    return-void

    .line 198
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 200
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 202
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 204
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method public measureAbsolutePaddings()V
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->percentageLeftPadding:F

    .line 210
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredLeftPadding:I

    .line 211
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->borderLeftSize:I

    if-lez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredLeftPadding:I

    iget v1, p0, Lnet/veritran/component/view/VTPanelView;->borderLeftSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredLeftPadding:I

    .line 212
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->percentageRightPadding:F

    .line 213
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredRightPadding:I

    .line 214
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->borderRightSize:I

    if-lez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredRightPadding:I

    iget v1, p0, Lnet/veritran/component/view/VTPanelView;->borderRightSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredRightPadding:I

    .line 215
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->percentageTopPadding:F

    .line 216
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredTopPadding:I

    .line 217
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->borderTopSize:I

    if-lez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredTopPadding:I

    iget v1, p0, Lnet/veritran/component/view/VTPanelView;->borderTopSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredTopPadding:I

    .line 218
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->percentageBottomPadding:F

    .line 219
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredBottomPadding:I

    .line 220
    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->borderBottomSize:I

    if-lez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredBottomPadding:I

    iget v1, p0, Lnet/veritran/component/view/VTPanelView;->borderBottomSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/veritran/component/view/VTPanelView;->measuredBottomPadding:I

    .line 221
    :cond_3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 863
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 864
    const-string v2, "VTPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ondraw"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPanelView;->borderColor:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 869
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/veritran/utils/VTDisplayHelper;->getDefaultBorderStrokeWidth(Landroid/content/Context;)F

    move-result v8

    .line 871
    .local v8, "borderSize":F
    const/4 v7, 0x0

    .line 873
    .local v7, "borderRadius":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/veritran/component/view/VTPanelView;->borderRounded:Z

    if-eqz v2, :cond_0

    .line 874
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/veritran/utils/VTDisplayHelper;->getDefaultRoundedBorderRadius(Landroid/content/Context;)F

    move-result v7

    .line 877
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTPanelView;->borderColor:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/veritran/component/view/VTPanelView;->backgroundColor:Ljava/lang/Integer;

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lnet/veritran/utils/VTDisplayHelper;->drawBorderAndBackground(Landroid/graphics/Canvas;IILjava/lang/Integer;Ljava/lang/Integer;FF)V

    .line 883
    .end local v7    # "borderRadius":F
    .end local v8    # "borderSize":F
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPanelView;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPanelView;->backgroundBitmapRect:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    .line 885
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/veritran/component/view/VTPanelView;->backgroundAspectKeep:Z

    if-eqz v2, :cond_b

    .line 886
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTPanelView;->drawable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/veritran/utils/ImageHandler;->getBitmapSize(Ljava/lang/String;)[I

    move-result-object v25

    .line 887
    .local v25, "sizeBitmap":[I
    const/4 v2, 0x0

    aget v20, v25, v2

    .line 888
    .local v20, "imageWidth":I
    const/4 v2, 0x1

    aget v18, v25, v2

    .line 890
    .local v18, "imageHeight":I
    if-eqz v18, :cond_5

    .line 891
    move/from16 v0, v20

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    div-float v19, v2, v3

    .line 896
    .local v19, "imageScale":F
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v24

    .line 897
    .local v24, "pixelsWidth":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v23

    .line 898
    .local v23, "pixelsHeight":I
    const/16 v21, 0x0

    .line 899
    .local v21, "originX":I
    const/16 v22, 0x0

    .line 900
    .local v22, "originY":I
    const-string v2, "VTPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pixelsWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";pixelsHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v15, v2, v3

    .line 902
    .local v15, "areaScale":F
    cmpl-float v2, v15, v19

    if-lez v2, :cond_6

    .line 903
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v19

    float-to-int v0, v2

    move/from16 v24, v0

    .line 907
    :goto_2
    const-string v2, "VTPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageScale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";areaScale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string v2, "VTPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backgroundHorizontalAlign="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/view/VTPanelView;->backgroundHorizontalAlign:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";backgroundVerticalAlign="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/view/VTPanelView;->backgroundVerticalAlign:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPanelView;->backgroundHorizontalAlign:Ljava/lang/String;

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 910
    const/16 v21, 0x0

    .line 916
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPanelView;->backgroundVerticalAlign:Ljava/lang/String;

    const-string v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 917
    const/16 v22, 0x0

    .line 923
    :goto_4
    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v21, v24

    add-int v4, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/veritran/component/view/VTPanelView;->backgroundBitmapRect:Landroid/graphics/Rect;

    .line 928
    .end local v15    # "areaScale":F
    .end local v18    # "imageHeight":I
    .end local v19    # "imageScale":F
    .end local v20    # "imageWidth":I
    .end local v21    # "originX":I
    .end local v22    # "originY":I
    .end local v23    # "pixelsHeight":I
    .end local v24    # "pixelsWidth":I
    .end local v25    # "sizeBitmap":[I
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPanelView;->backgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/view/VTPanelView;->backgroundBitmapRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTPanelView;->paintOnDraw:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 930
    :cond_3
    const-string v2, "VTPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " borderLeftColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/view/VTPanelView;->borderLeftColor:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v2, "VTPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " borderTopColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/view/VTPanelView;->borderTopColor:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v2, "VTPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " borderRightColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/view/VTPanelView;->borderRightColor:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v2, "VTPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " borderBottomColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/view/VTPanelView;->borderBottomColor:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPanelView;->borderLeftStyle:I

    if-eqz v2, :cond_e

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPanelView;->paintOnDraw:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTPanelView;->borderLeftColor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 936
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPanelView;->borderLeftStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    .line 937
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v17

    if-ge v0, v2, :cond_e

    .line 938
    const/16 v16, 0x0

    .local v16, "divSize":I
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPanelView;->borderLeftSize:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_c

    .line 939
    const/high16 v2, 0x3f000000    # 0.5f

    move/from16 v0, v16

    int-to-float v3, v0

    add-float/2addr v2, v3

    move/from16 v0, v17

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/view/VTPanelView;->paintOnDraw:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 938
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 879
    .end local v16    # "divSize":I
    .end local v17    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPanelView;->backgroundColor:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPanelView;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_0

    .line 894
    .restart local v18    # "imageHeight":I
    .restart local v20    # "imageWidth":I
    .restart local v25    # "sizeBitmap":[I
    :cond_5
    const/16 v19, 0x0

    .restart local v19    # "imageScale":F
    goto/16 :goto_1

    .line 905
    .restart local v15    # "areaScale":F
    .restart local v21    # "originX":I
    .restart local v22    # "originY":I
    .restart local v23    # "pixelsHeight":I
    .restart local v24    # "pixelsWidth":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v19

    float-to-int v0, v2

    move/from16 v23, v0

    goto/16 :goto_2

    .line 911
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPanelView;->backgroundHorizontalAlign:Ljava/lang/String;

    const-string v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 912
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v2

    sub-int v21, v2, v24

    goto/16 :goto_3

    .line 914
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v2

    sub-int v2, v2, v24

    div-int/lit8 v21, v2, 0x2

    goto/16 :goto_3

    .line 918
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPanelView;->backgroundVerticalAlign:Ljava/lang/String;

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 919
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v2

    sub-int v22, v2, v23

    goto/16 :goto_4

    .line 921
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v2

    sub-int v2, v2, v23

    div-int/lit8 v22, v2, 0x2

    goto/16 :goto_4

    .line 925
    .end local v15    # "areaScale":F
    .end local v18    # "imageHeight":I
    .end local v19    # "imageScale":F
    .end local v20    # "imageWidth":I
    .end local v21    # "originX":I
    .end local v22    # "originY":I
    .end local v23    # "pixelsHeight":I
    .end local v24    # "pixelsWidth":I
    .end local v25    # "sizeBitmap":[I
    :cond_b
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/veritran/component/view/VTPanelView;->backgroundBitmapRect:Landroid/graphics/Rect;

    goto/16 :goto_5

    .line 937
    .restart local v16    # "divSize":I
    .restart local v17    # "i":I
    :cond_c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_6

    .line 943
    .end local v16    # "divSize":I
    .end local v17    # "i":I
    :cond_d
    const/16 v16, 0x0

    .restart local v16    # "divSize":I
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPanelView;->borderLeftSize:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_e

    .line 944
    const/high16 v2, 0x3f000000    # 0.5f

    move/from16 v0, v16

    int-to-float v3, v0

    add-float v10, v2, v3

    const/4 v11, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    move/from16 v0, v16

    int-to-float v3, v0

    add-float v12, v2, v3

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v2

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTPanelView;->paintOnDraw:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 943
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 948
    .end local v16    # "divSize":I
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPanelView;->borderTopStyle:I

    if-eqz v2, :cond_11

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPanelView;->paintOnDraw:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTPanelView;->borderTopColor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 950
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPanelView;->borderTopStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    .line 951
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v17

    if-ge v0, v2, :cond_11

    .line 952
    const/16 v16, 0x0

    .restart local v16    # "divSize":I
    :goto_a
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPanelView;->borderTopSize:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_f

    .line 953
    move/from16 v0, v17

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    move/from16 v0, v16

    int-to-float v4, v0

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/view/VTPanelView;->paintOnDraw:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 952
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 951
    :cond_f
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 957
    .end local v16    # "divSize":I
    .end local v17    # "i":I
    :cond_10
    const/16 v16, 0x0

    .restart local v16    # "divSize":I
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPanelView;->borderTopSize:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_11

    .line 958
    const/4 v10, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    move/from16 v0, v16

    int-to-float v3, v0

    add-float v11, v2, v3

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v2

    int-to-float v12, v2

    const/high16 v2, 0x3f000000    # 0.5f

    move/from16 v0, v16

    int-to-float v3, v0

    add-float v13, v2, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTPanelView;->paintOnDraw:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 957
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 962
    .end local v16    # "divSize":I
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPanelView;->borderRightStyle:I

    if-eqz v2, :cond_14

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPanelView;->paintOnDraw:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTPanelView;->borderRightColor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 964
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPanelView;->borderRightStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_13

    .line 965
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v17

    if-ge v0, v2, :cond_14

    .line 966
    const/16 v16, 0x0

    .restart local v16    # "divSize":I
    :goto_d
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPanelView;->borderRightSize:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_12

    .line 967
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v2, v2, v16

    int-to-float v2, v2

    mul-int/lit8 v3, v17, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/view/VTPanelView;->paintOnDraw:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 966
    add-int/lit8 v16, v16, 0x1

    goto :goto_d

    .line 965
    :cond_12
    add-int/lit8 v17, v17, 0x1

    goto :goto_c

    .line 971
    .end local v16    # "divSize":I
    .end local v17    # "i":I
    :cond_13
    const/16 v16, 0x0

    .restart local v16    # "divSize":I
    :goto_e
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPanelView;->borderRightSize:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_14

    .line 972
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v2, v2, v16

    int-to-float v10, v2

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v2, v2, v16

    int-to-float v12, v2

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v2

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTPanelView;->paintOnDraw:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 971
    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    .line 976
    .end local v16    # "divSize":I
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPanelView;->borderBottomStyle:I

    if-eqz v2, :cond_17

    .line 977
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPanelView;->paintOnDraw:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTPanelView;->borderBottomColor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 978
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPanelView;->borderBottomStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    .line 979
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v17

    if-ge v0, v2, :cond_17

    .line 980
    const/16 v16, 0x0

    .restart local v16    # "divSize":I
    :goto_10
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPanelView;->borderBottomSize:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_15

    .line 981
    mul-int/lit8 v2, v17, 0x2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int v3, v3, v16

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/view/VTPanelView;->paintOnDraw:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 980
    add-int/lit8 v16, v16, 0x1

    goto :goto_10

    .line 979
    :cond_15
    add-int/lit8 v17, v17, 0x1

    goto :goto_f

    .line 985
    .end local v16    # "divSize":I
    .end local v17    # "i":I
    :cond_16
    const/16 v16, 0x0

    .restart local v16    # "divSize":I
    :goto_11
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPanelView;->borderBottomSize:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_17

    .line 986
    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v2, v2, v16

    int-to-float v11, v2

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v2

    int-to-float v12, v2

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v2, v2, v16

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTPanelView;->paintOnDraw:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 985
    add-int/lit8 v16, v16, 0x1

    goto :goto_11

    .line 990
    .end local v16    # "divSize":I
    :cond_17
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 709
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 854
    :cond_0
    return-void

    .line 712
    :cond_1
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " onLayout -> left:+"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";top:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";right:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";bottom:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " onLayout -> getLeft():+"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getLeft()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";getTop():"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTop()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";getWidth():"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";getHeight():"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getChildCount()I

    move-result v2

    .line 738
    .local v2, "childCount":I
    const/16 v16, 0x0

    .line 739
    .local v16, "xChildrenStart":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v19

    add-int v19, v19, v16

    add-int/lit8 v15, v19, 0x0

    .line 740
    .local v15, "xChildrenEnd":I
    const/16 v18, 0x0

    .line 741
    .local v18, "yChildrenStart":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v19

    add-int v19, v19, v18

    add-int/lit8 v17, v19, 0x0

    .line 744
    .local v17, "yChildrenEnd":I
    move/from16 v10, v16

    .line 745
    .local v10, "nleft":I
    move/from16 v11, v18

    .line 746
    .local v11, "ntop":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredTopPadding:I

    move/from16 v19, v0

    add-int/lit8 v11, v19, 0x0

    .line 750
    const/4 v5, 0x0

    .line 751
    .local v5, "childrenHeight":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_4

    .line 752
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lnet/veritran/component/view/VTPanelView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lnet/veritran/component/view/VTUIComponentView;

    .local v13, "v":Lnet/veritran/component/view/VTUIComponentView;
    move-object/from16 v19, v13

    .line 753
    check-cast v19, Landroid/view/View;

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/4 v8, 0x1

    .line 754
    .local v8, "isHidden":Z
    :goto_1
    if-eqz v8, :cond_3

    .line 751
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 753
    .end local v8    # "isHidden":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .restart local v8    # "isHidden":Z
    :cond_3
    move-object/from16 v19, v13

    .line 757
    check-cast v19, Landroid/view/View;

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 758
    .local v3, "childHeight":I
    invoke-interface {v13}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v19

    add-int v5, v5, v19

    .line 759
    invoke-interface {v13}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v19

    add-int v5, v5, v19

    .line 760
    add-int/2addr v5, v3

    goto :goto_2

    .line 762
    .end local v3    # "childHeight":I
    .end local v8    # "isHidden":Z
    .end local v13    # "v":Lnet/veritran/component/view/VTUIComponentView;
    :cond_4
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " childrenHeight :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTPanelView;->verticalAlign:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "middle"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 764
    sub-int v19, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredTopPadding:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredBottomPadding:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 765
    .local v6, "hh":I
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Aligning middle: hh :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    sub-int v19, v6, v5

    div-int/lit8 v12, v19, 0x2

    .line 767
    .local v12, "spacer":I
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Aligning middle: spacer :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    add-int/2addr v11, v12

    .line 778
    .end local v6    # "hh":I
    .end local v12    # "spacer":I
    :goto_3
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v2, :cond_0

    .line 779
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " laying["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lnet/veritran/component/view/VTPanelView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lnet/veritran/component/view/VTUIComponentView;

    .restart local v13    # "v":Lnet/veritran/component/view/VTUIComponentView;
    move-object/from16 v19, v13

    .line 781
    check-cast v19, Landroid/view/View;

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const/4 v8, 0x1

    .line 782
    .restart local v8    # "isHidden":Z
    :goto_5
    if-eqz v8, :cond_8

    .line 778
    .end local v13    # "v":Lnet/veritran/component/view/VTUIComponentView;
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 769
    .end local v8    # "isHidden":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTPanelView;->verticalAlign:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "bottom"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 770
    sub-int v19, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredTopPadding:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredBottomPadding:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 771
    .restart local v6    # "hh":I
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Aligning bottom: hh :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    sub-int v12, v6, v5

    .line 773
    .restart local v12    # "spacer":I
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Aligning bottom: spacer :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    add-int/2addr v11, v12

    .line 775
    goto/16 :goto_3

    .line 776
    .end local v6    # "hh":I
    .end local v12    # "spacer":I
    :cond_6
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Aligning top"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 781
    .restart local v13    # "v":Lnet/veritran/component/view/VTUIComponentView;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_5

    .restart local v8    # "isHidden":Z
    :cond_8
    move-object/from16 v19, v13

    .line 786
    check-cast v19, Landroid/view/View;

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .local v4, "childWidth":I
    move-object/from16 v19, v13

    .line 787
    check-cast v19, Landroid/view/View;

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 790
    .restart local v3    # "childHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredLeftPadding:I

    move/from16 v19, v0

    add-int/lit8 v10, v19, 0x0

    .line 791
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " laying["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] nleft w/padding:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-interface {v13}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredLeftMargin()I

    move-result v19

    add-int v10, v10, v19

    .line 793
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " laying["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] nleft w/child margin:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " laying["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] ntop w/padding:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-interface {v13}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v19

    add-int v11, v11, v19

    .line 801
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " laying["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] ntop w/child margin:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    add-int v9, v11, v3

    .line 804
    .local v9, "nbottom":I
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " laying["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] nbottom:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    invoke-interface {v13}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v19

    add-int v9, v9, v19

    .line 806
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " laying["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] nbottom 2:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTPanelView;->textAlign:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "center"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 822
    sub-int v19, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredLeftPadding:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredRightPadding:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-interface {v13}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredLeftMargin()I

    move-result v20

    sub-int v19, v19, v20

    invoke-interface {v13}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredRightMargin()I

    move-result v20

    sub-int v14, v19, v20

    .line 823
    .local v14, "ww":I
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Aligning center: ww :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    sub-int v19, v14, v4

    div-int/lit8 v12, v19, 0x2

    .line 825
    .restart local v12    # "spacer":I
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Aligning center: spacer :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    add-int/2addr v10, v12

    .line 843
    .end local v12    # "spacer":I
    .end local v14    # "ww":I
    :cond_9
    :goto_7
    instance-of v0, v13, Lnet/veritran/component/view/VTInputTextView;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    add-int/lit8 v11, v11, 0x2

    .line 844
    :cond_a
    check-cast v13, Landroid/view/View;

    .end local v13    # "v":Lnet/veritran/component/view/VTUIComponentView;
    add-int v19, v10, v4

    add-int v20, v11, v3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v10, v11, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 845
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " laying["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] -> left:+"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";top:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";right:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int v21, v10, v4

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";bottom:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int v21, v11, v3

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    move/from16 v10, v16

    .line 847
    move v11, v9

    .line 849
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " laying["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] ntop:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 827
    .restart local v13    # "v":Lnet/veritran/component/view/VTUIComponentView;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTPanelView;->textAlign:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "right"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 828
    sub-int v19, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredLeftPadding:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredRightPadding:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-interface {v13}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredLeftMargin()I

    move-result v20

    sub-int v19, v19, v20

    invoke-interface {v13}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredRightMargin()I

    move-result v20

    sub-int v14, v19, v20

    .line 829
    .restart local v14    # "ww":I
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Aligning right: ww :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    sub-int v12, v14, v4

    .line 831
    .restart local v12    # "spacer":I
    const-string v19, "VTPanelView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Aligning right: spacer :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    add-int/2addr v10, v12

    goto/16 :goto_7
.end method

.method protected onMeasure(II)V
    .locals 30
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 479
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 480
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    const-string v25, "VTPanelView"

    const-string v26, "....................................."

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/view/VTPanelView;->isRoot:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    const-string v25, "VTPanelView"

    const-string v26, "IS ROOT"

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_2
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTPanelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 489
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 490
    .local v19, "mw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 491
    .local v16, "mh":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    .line 492
    .local v22, "sw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 493
    .local v21, "sh":I
    invoke-static/range {v19 .. v19}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v18

    .line 494
    .local v18, "modeWidth":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v17

    .line 495
    .local v17, "modeHeight":Ljava/lang/String;
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure -> width("

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

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";height("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

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

    .line 496
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->fixedWidth:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    .line 497
    const/high16 v19, 0x40000000    # 2.0f

    .line 498
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->fixedWidth:I

    move/from16 v22, v0

    .line 500
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->fixedHeight:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    .line 501
    const/high16 v16, 0x40000000    # 2.0f

    .line 502
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->fixedHeight:I

    move/from16 v21, v0

    .line 504
    :cond_4
    const/16 v20, 0x0

    .line 505
    .local v20, "scrollable":Z
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Lnet/veritran/component/view/VTScrollPanelWrapper;

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 506
    const/16 v20, 0x1

    .line 509
    :cond_5
    if-nez v16, :cond_6

    if-nez v21, :cond_6

    .line 510
    const/high16 v16, -0x80000000

    .line 511
    const v21, 0xffffff

    .line 512
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure REDEF! -> width("

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

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";height("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

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

    .line 516
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->measureAbsoluteMargins()V

    .line 517
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->measureAbsolutePaddings()V

    .line 518
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure -> measuredLeftMargin:+"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredLeftMargin:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";measuredTopMargin:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredTopMargin:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";measuredRightMargin:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredRightMargin:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";measuredBottomMargin:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredBottomMargin:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    move/from16 v5, v22

    .line 522
    .local v5, "availableWidthForComponent":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->percWidth:F

    move/from16 v25, v0

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_7

    .line 523
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/view/VTPanelView;->isRoot:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    .line 524
    int-to-float v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->percWidth:F

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

    .line 528
    :cond_7
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " pre:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredLeftMargin:I

    move/from16 v25, v0

    sub-int v5, v5, v25

    .line 530
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " post left:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredRightMargin:I

    move/from16 v25, v0

    sub-int v5, v5, v25

    .line 532
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " post right:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    move/from16 v4, v21

    .line 538
    .local v4, "availableHeightForComponent":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->percHeight:F

    move/from16 v25, v0

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_8

    .line 539
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/view/VTPanelView;->isRoot:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 540
    int-to-float v0, v4

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->percHeight:F

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

    double-to-int v4, v0

    .line 544
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredTopMargin:I

    move/from16 v25, v0

    sub-int v4, v4, v25

    .line 545
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredBottomMargin:I

    move/from16 v25, v0

    sub-int v4, v4, v25

    .line 547
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredLeftPadding:I

    move/from16 v25, v0

    sub-int v25, v5, v25

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredRightPadding:I

    move/from16 v26, v0

    sub-int v12, v25, v26

    .line 549
    .local v12, "initialAvailableWidthForChildren":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredTopPadding:I

    move/from16 v25, v0

    sub-int v25, v4, v25

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredBottomPadding:I

    move/from16 v26, v0

    sub-int v11, v25, v26

    .line 553
    .local v11, "initialAvailableHeightForChildren":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getChildCount()I

    move-result v6

    .line 554
    .local v6, "childCount":I
    const/4 v7, 0x0

    .line 555
    .local v7, "childrenHeight":I
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure children="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure [availableWidthForComponent:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",availableHeightForComponent:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure [initialAvailableWidthForChildren:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",initialAvailableHeightForChildren:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_d

    .line 561
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lnet/veritran/component/view/VTPanelView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lnet/veritran/component/view/VTUIComponentView;

    .local v23, "view":Lnet/veritran/component/view/VTUIComponentView;
    move-object/from16 v25, v23

    .line 562
    check-cast v25, Landroid/view/View;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    const/4 v13, 0x1

    .line 563
    .local v13, "isHidden":Z
    :goto_2
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->measureAbsoluteMargins()V

    .line 564
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getHeightPercentage()F

    move-result v25

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_a

    .line 565
    const-string v26, "VTPanelView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

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

    .line 566
    int-to-float v0, v11

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

    double-to-int v9, v0

    .line 567
    .local v9, "h":I
    const-string v26, "VTPanelView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

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

    const-string v27, " 1 h="

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v25

    sub-int v9, v9, v25

    .line 569
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v25

    sub-int v9, v9, v25

    .line 570
    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v0, v25

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 571
    .local v14, "measurecSpecHeight":I
    move/from16 v24, v12

    .line 572
    .local v24, "w":I
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v25

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_9

    .line 573
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

    .line 575
    :cond_9
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredLeftMargin()I

    move-result v25

    sub-int v24, v24, v25

    .line 576
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredRightMargin()I

    move-result v25

    sub-int v24, v24, v25

    .line 577
    const/high16 v25, -0x80000000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 578
    .local v15, "measurecSpecWidth":I
    const-string v26, "VTPanelView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

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

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, v23

    .line 579
    check-cast v25, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15, v14}, Lnet/veritran/component/view/VTPanelView;->measureChild(Landroid/view/View;II)V

    .line 580
    if-nez v13, :cond_c

    move-object/from16 v25, v23

    .line 581
    check-cast v25, Landroid/view/View;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    add-int v7, v7, v25

    .line 582
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v25

    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v26

    add-int v25, v25, v26

    add-int v7, v7, v25

    .line 583
    const-string v26, "VTPanelView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

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

    .line 584
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 583
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " Measuring "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    check-cast v23, Landroid/view/View;

    .end local v23    # "view":Lnet/veritran/component/view/VTUIComponentView;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " childrenHeight:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .end local v9    # "h":I
    .end local v14    # "measurecSpecHeight":I
    .end local v15    # "measurecSpecWidth":I
    .end local v24    # "w":I
    :cond_a
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 562
    .end local v13    # "isHidden":Z
    .restart local v23    # "view":Lnet/veritran/component/view/VTUIComponentView;
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 589
    .restart local v9    # "h":I
    .restart local v13    # "isHidden":Z
    .restart local v14    # "measurecSpecHeight":I
    .restart local v15    # "measurecSpecWidth":I
    .restart local v24    # "w":I
    :cond_c
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " Measuring "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    check-cast v23, Landroid/view/View;

    .end local v23    # "view":Lnet/veritran/component/view/VTUIComponentView;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " is Hidden"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 594
    .end local v9    # "h":I
    .end local v13    # "isHidden":Z
    .end local v14    # "measurecSpecHeight":I
    .end local v15    # "measurecSpecWidth":I
    .end local v24    # "w":I
    :cond_d
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v6, :cond_15

    .line 595
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lnet/veritran/component/view/VTPanelView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lnet/veritran/component/view/VTUIComponentView;

    .restart local v23    # "view":Lnet/veritran/component/view/VTUIComponentView;
    move-object/from16 v25, v23

    .line 596
    check-cast v25, Landroid/view/View;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    const/4 v13, 0x1

    .line 597
    .restart local v13    # "isHidden":Z
    :goto_5
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->measureAbsoluteMargins()V

    .line 598
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getHeightPercentage()F

    move-result v25

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v25, v25, v26

    if-nez v25, :cond_f

    .line 599
    const-string v26, "VTPanelView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

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

    .line 601
    sub-int v9, v11, v7

    .line 602
    .restart local v9    # "h":I
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " h="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v25

    sub-int v9, v9, v25

    .line 604
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " h="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v25

    sub-int v9, v9, v25

    .line 606
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " h="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    if-eqz v20, :cond_11

    .line 609
    const v25, 0x7fffffff

    const/high16 v26, -0x80000000

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 622
    .restart local v14    # "measurecSpecHeight":I
    :goto_6
    move/from16 v24, v12

    .line 623
    .restart local v24    # "w":I
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v25

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_e

    .line 624
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

    .line 626
    :cond_e
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredLeftMargin()I

    move-result v25

    sub-int v24, v24, v25

    .line 627
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredRightMargin()I

    move-result v25

    sub-int v24, v24, v25

    .line 628
    const-string v26, "VTPanelView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

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

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const/high16 v25, -0x80000000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .restart local v15    # "measurecSpecWidth":I
    move-object/from16 v25, v23

    .line 630
    check-cast v25, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15, v14}, Lnet/veritran/component/view/VTPanelView;->measureChild(Landroid/view/View;II)V

    .line 631
    if-nez v13, :cond_14

    move-object/from16 v25, v23

    .line 632
    check-cast v25, Landroid/view/View;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    add-int v7, v7, v25

    .line 633
    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v25

    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v26

    add-int v25, v25, v26

    add-int v7, v7, v25

    .line 634
    const-string v26, "VTPanelView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

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

    .line 635
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 634
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " Measuring "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    check-cast v23, Landroid/view/View;

    .end local v23    # "view":Lnet/veritran/component/view/VTUIComponentView;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " childrenHeight:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    .end local v9    # "h":I
    .end local v14    # "measurecSpecHeight":I
    .end local v15    # "measurecSpecWidth":I
    .end local v24    # "w":I
    :cond_f
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 596
    .end local v13    # "isHidden":Z
    .restart local v23    # "view":Lnet/veritran/component/view/VTUIComponentView;
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 610
    .restart local v9    # "h":I
    .restart local v13    # "isHidden":Z
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->fixedHeight:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_13

    .line 611
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " with fixedHeight="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->fixedHeight:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v6, v0, :cond_12

    invoke-interface/range {v23 .. v23}, Lnet/veritran/component/view/VTUIComponentView;->getFixedHeight()I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    .line 614
    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v0, v25

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 615
    .restart local v14    # "measurecSpecHeight":I
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Lnet/veritran/component/view/VTUIComponentView;->setFixedHeight(I)V

    goto/16 :goto_6

    .line 617
    .end local v14    # "measurecSpecHeight":I
    :cond_12
    const/high16 v25, -0x80000000

    move/from16 v0, v25

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .restart local v14    # "measurecSpecHeight":I
    goto/16 :goto_6

    .line 620
    .end local v14    # "measurecSpecHeight":I
    :cond_13
    const/high16 v25, -0x80000000

    move/from16 v0, v25

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .restart local v14    # "measurecSpecHeight":I
    goto/16 :goto_6

    .line 640
    .restart local v15    # "measurecSpecWidth":I
    .restart local v24    # "w":I
    :cond_14
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " Measuring "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    check-cast v23, Landroid/view/View;

    .end local v23    # "view":Lnet/veritran/component/view/VTUIComponentView;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " is Hidden"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 644
    .end local v9    # "h":I
    .end local v13    # "isHidden":Z
    .end local v14    # "measurecSpecHeight":I
    .end local v15    # "measurecSpecWidth":I
    .end local v24    # "w":I
    :cond_15
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " ->childrenHeight:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredTopPadding:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->measuredBottomPadding:I

    move/from16 v26, v0

    add-int v25, v25, v26

    add-int v7, v7, v25

    .line 646
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " childrenHeight (plus padding):"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    if-eqz v20, :cond_16

    .line 648
    const/high16 v25, 0x3f800000    # 1.0f

    .line 649
    invoke-static/range {v25 .. v25}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v25

    add-int v7, v7, v25

    .line 650
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " childrenHeight (plus extra for scrolling):"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_16
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure -> percWidth:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->percWidth:F

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";percHeight:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->percHeight:F

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->fixedHeight:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    .line 655
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTPanelView;->percHeight:F

    move/from16 v25, v0

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_18

    .line 656
    move v8, v4

    .line 657
    .local v8, "finalHeight":I
    if-eqz v20, :cond_17

    .line 659
    move v8, v7

    .line 683
    :cond_17
    :goto_8
    const-string v25, "VTPanelView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " onMeasure -> finalWidth:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";finalHeight:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Lnet/veritran/component/view/VTPanelView;->setMeasuredDimension(II)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTPanelView;->drawable:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTPanelView;->drawable:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTPanelView;->backgroundBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    .line 694
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTPanelView;->drawable:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v5, v8}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/view/VTPanelView;->backgroundBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 663
    .end local v8    # "finalHeight":I
    :cond_18
    if-eqz v20, :cond_1a

    .line 664
    if-le v7, v4, :cond_19

    .line 665
    move v8, v7

    .restart local v8    # "finalHeight":I
    goto :goto_8

    .line 667
    .end local v8    # "finalHeight":I
    :cond_19
    move v8, v7

    .restart local v8    # "finalHeight":I
    goto :goto_8

    .line 670
    .end local v8    # "finalHeight":I
    :cond_1a
    if-le v7, v4, :cond_1b

    .line 671
    move v8, v4

    .restart local v8    # "finalHeight":I
    goto :goto_8

    .line 673
    .end local v8    # "finalHeight":I
    :cond_1b
    move v8, v7

    .restart local v8    # "finalHeight":I
    goto :goto_8

    .line 681
    .end local v8    # "finalHeight":I
    :cond_1c
    move-object/from16 v0, p0

    iget v8, v0, Lnet/veritran/component/view/VTPanelView;->fixedHeight:I

    .restart local v8    # "finalHeight":I
    goto/16 :goto_8
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 857
    const-string v0, "VTPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSizeChanged -> getLeft():+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPanelView;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getTop():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPanelView;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getWidth():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPanelView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPanelView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method public setBackgroundAspectKeep(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 998
    iput-boolean p1, p0, Lnet/veritran/component/view/VTPanelView;->backgroundAspectKeep:Z

    .line 999
    return-void
.end method

.method public setBackgroundHorizontalAlign(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1002
    iput-object p1, p0, Lnet/veritran/component/view/VTPanelView;->backgroundHorizontalAlign:Ljava/lang/String;

    .line 1003
    return-void
.end method

.method public setBackgroundVerticalAlign(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1006
    iput-object p1, p0, Lnet/veritran/component/view/VTPanelView;->backgroundVerticalAlign:Ljava/lang/String;

    .line 1007
    return-void
.end method

.method public setBorderBottomColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "borderBottomColor"    # Ljava/lang/Integer;

    .prologue
    .line 473
    iput-object p1, p0, Lnet/veritran/component/view/VTPanelView;->borderBottomColor:Ljava/lang/Integer;

    .line 474
    iget-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderBottomColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderBottomColor:Ljava/lang/Integer;

    .line 475
    :cond_0
    return-void
.end method

.method public setBorderBottomSize(I)V
    .locals 0
    .param p1, "borderBottomSize"    # I

    .prologue
    .line 358
    iput p1, p0, Lnet/veritran/component/view/VTPanelView;->borderBottomSize:I

    .line 359
    return-void
.end method

.method public setBorderBottomStyle(I)V
    .locals 0
    .param p1, "borderBottomStyle"    # I

    .prologue
    .line 414
    iput p1, p0, Lnet/veritran/component/view/VTPanelView;->borderBottomStyle:I

    .line 415
    return-void
.end method

.method public setBorderColor(Ljava/lang/Integer;Z)V
    .locals 0
    .param p1, "borderColor"    # Ljava/lang/Integer;
    .param p2, "rounded"    # Z

    .prologue
    .line 301
    iput-object p1, p0, Lnet/veritran/component/view/VTPanelView;->borderColor:Ljava/lang/Integer;

    .line 302
    iput-boolean p2, p0, Lnet/veritran/component/view/VTPanelView;->borderRounded:Z

    .line 303
    return-void
.end method

.method public setBorderLeftColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "borderLeftColor"    # Ljava/lang/Integer;

    .prologue
    .line 428
    iput-object p1, p0, Lnet/veritran/component/view/VTPanelView;->borderLeftColor:Ljava/lang/Integer;

    .line 429
    iget-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderLeftColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderLeftColor:Ljava/lang/Integer;

    .line 430
    :cond_0
    return-void
.end method

.method public setBorderLeftSize(I)V
    .locals 0
    .param p1, "borderLeftSize"    # I

    .prologue
    .line 316
    iput p1, p0, Lnet/veritran/component/view/VTPanelView;->borderLeftSize:I

    .line 317
    return-void
.end method

.method public setBorderLeftStyle(I)V
    .locals 0
    .param p1, "borderLeftStyle"    # I

    .prologue
    .line 372
    iput p1, p0, Lnet/veritran/component/view/VTPanelView;->borderLeftStyle:I

    .line 373
    return-void
.end method

.method public setBorderRightColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "borderRightColor"    # Ljava/lang/Integer;

    .prologue
    .line 458
    iput-object p1, p0, Lnet/veritran/component/view/VTPanelView;->borderRightColor:Ljava/lang/Integer;

    .line 459
    iget-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderRightColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderRightColor:Ljava/lang/Integer;

    .line 460
    :cond_0
    return-void
.end method

.method public setBorderRightSize(I)V
    .locals 0
    .param p1, "borderRightSize"    # I

    .prologue
    .line 344
    iput p1, p0, Lnet/veritran/component/view/VTPanelView;->borderRightSize:I

    .line 345
    return-void
.end method

.method public setBorderRightStyle(I)V
    .locals 0
    .param p1, "borderRightStyle"    # I

    .prologue
    .line 400
    iput p1, p0, Lnet/veritran/component/view/VTPanelView;->borderRightStyle:I

    .line 401
    return-void
.end method

.method public setBorderTopColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "borderTopColor"    # Ljava/lang/Integer;

    .prologue
    .line 443
    iput-object p1, p0, Lnet/veritran/component/view/VTPanelView;->borderTopColor:Ljava/lang/Integer;

    .line 444
    iget-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderTopColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTPanelView;->borderTopColor:Ljava/lang/Integer;

    .line 445
    :cond_0
    return-void
.end method

.method public setBorderTopSize(I)V
    .locals 0
    .param p1, "borderTopSize"    # I

    .prologue
    .line 330
    iput p1, p0, Lnet/veritran/component/view/VTPanelView;->borderTopSize:I

    .line 331
    return-void
.end method

.method public setBorderTopStyle(I)V
    .locals 0
    .param p1, "borderTopStyle"    # I

    .prologue
    .line 386
    iput p1, p0, Lnet/veritran/component/view/VTPanelView;->borderTopStyle:I

    .line 387
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 226
    iput-object p1, p0, Lnet/veritran/component/view/VTPanelView;->backgroundColor:Ljava/lang/Integer;

    .line 227
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 994
    iput-object p1, p0, Lnet/veritran/component/view/VTPanelView;->drawable:Ljava/lang/String;

    .line 995
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 3
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lnet/veritran/component/view/VTPanelView;->textAlign:Ljava/lang/String;

    .line 232
    const-string v0, "VTPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " textalign="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/view/VTPanelView;->textAlign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 3
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lnet/veritran/component/view/VTPanelView;->verticalAlign:Ljava/lang/String;

    .line 248
    const-string v0, "VTPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " verticalAlign="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/view/VTPanelView;->verticalAlign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 3
    .param p1, "h"    # I

    .prologue
    .line 295
    const-string v0, "VTPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPanelView;->getTag()Ljava/lang/Object;

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

    .line 296
    iput p1, p0, Lnet/veritran/component/view/VTPanelView;->fixedHeight:I

    .line 297
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 140
    const-string v0, "VTPanelView"

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

    .line 141
    iput p1, p0, Lnet/veritran/component/view/VTPanelView;->fixedLeftMargin:F

    .line 142
    iput p2, p0, Lnet/veritran/component/view/VTPanelView;->fixedTopMargin:F

    .line 143
    iput p3, p0, Lnet/veritran/component/view/VTPanelView;->fixedRightMargin:F

    .line 144
    iput p4, p0, Lnet/veritran/component/view/VTPanelView;->fixedBottomMargin:F

    .line 145
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 281
    iput p1, p0, Lnet/veritran/component/view/VTPanelView;->fixedWidth:I

    .line 282
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 115
    iput p1, p0, Lnet/veritran/component/view/VTPanelView;->percHeight:F

    .line 116
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 130
    const-string v0, "VTPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPercentageMargins("

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

    .line 132
    iput p1, p0, Lnet/veritran/component/view/VTPanelView;->percentageLeftMargin:F

    .line 133
    iput p2, p0, Lnet/veritran/component/view/VTPanelView;->percentageTopMargin:F

    .line 134
    iput p3, p0, Lnet/veritran/component/view/VTPanelView;->percentageRightMargin:F

    .line 135
    iput p4, p0, Lnet/veritran/component/view/VTPanelView;->percentageBottomMargin:F

    .line 136
    return-void
.end method

.method public setPercentagePaddings(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 149
    iput p1, p0, Lnet/veritran/component/view/VTPanelView;->percentageLeftPadding:F

    .line 150
    iput p2, p0, Lnet/veritran/component/view/VTPanelView;->percentageTopPadding:F

    .line 151
    iput p3, p0, Lnet/veritran/component/view/VTPanelView;->percentageRightPadding:F

    .line 152
    iput p4, p0, Lnet/veritran/component/view/VTPanelView;->percentageBottomPadding:F

    .line 153
    return-void
.end method

.method public setRoot(Z)V
    .locals 0
    .param p1, "isRoot"    # Z

    .prologue
    .line 266
    iput-boolean p1, p0, Lnet/veritran/component/view/VTPanelView;->isRoot:Z

    .line 267
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 104
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

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 110
    iput p1, p0, Lnet/veritran/component/view/VTPanelView;->percWidth:F

    .line 111
    return-void
.end method
