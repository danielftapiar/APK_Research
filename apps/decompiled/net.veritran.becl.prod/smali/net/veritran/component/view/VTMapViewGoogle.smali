.class public Lnet/veritran/component/view/VTMapViewGoogle;
.super Landroid/widget/LinearLayout;
.source "VTMapViewGoogle.java"

# interfaces
.implements Lnet/veritran/component/view/VTMapView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTMapViewGoogle"


# instance fields
.field fixedBottomMargin:F

.field private fixedHeight:I

.field fixedLeftMargin:F

.field fixedRightMargin:F

.field fixedTopMargin:F

.field private fixedWidth:I

.field private mapComponentFragment:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

.field measuredBottomMargin:I

.field measuredLeftMargin:I

.field measuredRightMargin:I

.field measuredTopMargin:I

.field percentageBottomMargin:F

.field private percentageHeight:F

.field percentageLeftMargin:F

.field percentageRightMargin:F

.field percentageTopMargin:F

.field private percentageWidth:F


# direct methods
.method public constructor <init>(Lnet/veritran/component/VTMap;Z)V
    .locals 9
    .param p1, "component"    # Lnet/veritran/component/VTMap;
    .param p2, "showZoomControls"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    .line 59
    invoke-virtual {p1}, Lnet/veritran/component/VTMap;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v4, 0x0

    iput-object v4, p0, Lnet/veritran/component/view/VTMapViewGoogle;->mapComponentFragment:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    .line 26
    iput v6, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageWidth:F

    .line 27
    iput v6, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageHeight:F

    .line 29
    iput v7, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageLeftMargin:F

    .line 30
    iput v7, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageTopMargin:F

    .line 31
    iput v7, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageRightMargin:F

    .line 32
    iput v7, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageBottomMargin:F

    .line 34
    iput v5, p0, Lnet/veritran/component/view/VTMapViewGoogle;->measuredLeftMargin:I

    .line 35
    iput v5, p0, Lnet/veritran/component/view/VTMapViewGoogle;->measuredRightMargin:I

    .line 36
    iput v5, p0, Lnet/veritran/component/view/VTMapViewGoogle;->measuredTopMargin:I

    .line 37
    iput v5, p0, Lnet/veritran/component/view/VTMapViewGoogle;->measuredBottomMargin:I

    .line 39
    iput v6, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedLeftMargin:F

    .line 40
    iput v6, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedRightMargin:F

    .line 41
    iput v6, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedTopMargin:F

    .line 42
    iput v6, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedBottomMargin:F

    .line 44
    iput v8, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedWidth:I

    .line 45
    iput v8, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedHeight:I

    .line 61
    invoke-virtual {p0, v5, v5, v5, v5}, Lnet/veritran/component/view/VTMapViewGoogle;->setPadding(IIII)V

    .line 63
    invoke-static {}, Lnet/veritran/vtuserapplication/utils/VTRandom;->getInstance()Lnet/veritran/vtuserapplication/utils/VTRandom;

    move-result-object v4

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTRandom;->nextInt(I)I

    move-result v4

    add-int/lit16 v3, v4, 0x2710

    .line 65
    .local v3, "rNum":I
    const-string v4, "VTMapViewGoogle"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Map component id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v3}, Lnet/veritran/component/view/VTMapViewGoogle;->setId(I)V

    .line 69
    invoke-virtual {p1}, Lnet/veritran/component/VTMap;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    .line 71
    .local v0, "act":Lnet/veritran/VTCommonActivity;
    invoke-virtual {v0}, Lnet/veritran/VTCommonActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 72
    .local v1, "fragMan":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 76
    .local v2, "fragTransaction":Landroid/support/v4/app/FragmentTransaction;
    new-instance v4, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    invoke-direct {v4, p2}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;-><init>(Z)V

    iput-object v4, p0, Lnet/veritran/component/view/VTMapViewGoogle;->mapComponentFragment:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    .line 77
    iget-object v4, p0, Lnet/veritran/component/view/VTMapViewGoogle;->mapComponentFragment:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    invoke-virtual {v4, p1}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->setMapComponentlistener(Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;)V

    .line 80
    iget-object v4, p0, Lnet/veritran/component/view/VTMapViewGoogle;->mapComponentFragment:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 81
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 82
    return-void
.end method


# virtual methods
.method public addMarkerToMap(Lnet/veritran/vtuserapplication/api/map/VTMarker;)V
    .locals 1
    .param p1, "markerInfo"    # Lnet/veritran/vtuserapplication/api/map/VTMarker;

    .prologue
    .line 310
    iget-object v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->mapComponentFragment:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->addMarkerToMap(Lnet/veritran/vtuserapplication/api/map/VTMarker;)V

    .line 311
    return-void
.end method

.method public clearFragment(Lnet/veritran/component/VTMap;)V
    .locals 5
    .param p1, "component"    # Lnet/veritran/component/VTMap;

    .prologue
    .line 95
    const-string v3, "VTMapViewGoogle"

    const-string v4, "Will clear Fragment Map View"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lnet/veritran/component/VTMap;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    .line 99
    .local v0, "act":Lnet/veritran/VTCommonActivity;
    invoke-virtual {v0}, Lnet/veritran/VTCommonActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 100
    .local v1, "fragMan":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 102
    .local v2, "fragTransaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lnet/veritran/component/view/VTMapViewGoogle;->mapComponentFragment:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 105
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 106
    return-void
.end method

.method public clearMarkersAndRoutes()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->mapComponentFragment:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->clear()V

    .line 354
    return-void
.end method

.method public drawRouteOnMap(Lnet/veritran/vtuserapplication/api/map/VTRoute;Ljava/lang/String;)V
    .locals 1
    .param p1, "route"    # Lnet/veritran/vtuserapplication/api/map/VTRoute;
    .param p2, "progressMessage"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-object v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->mapComponentFragment:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    invoke-virtual {v0, p1, p2}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->drawRouteOnMap(Lnet/veritran/vtuserapplication/api/map/VTRoute;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public freeResources()V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->measuredTopMargin:I

    return v0
.end method

.method public getVTMapComponentFragment()Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->mapComponentFragment:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 348
    return-object p0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageWidth:F

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 288
    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageLeftMargin:F

    .line 289
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->measuredLeftMargin:I

    .line 290
    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageRightMargin:F

    .line 291
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->measuredRightMargin:I

    .line 292
    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageTopMargin:F

    .line 293
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->measuredTopMargin:I

    .line 294
    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageBottomMargin:F

    .line 295
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->measuredBottomMargin:I

    .line 296
    return-void

    .line 289
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 291
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 293
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 295
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 221
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 223
    const-string v0, "VTMapViewGoogle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout [] -> getLeft():+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewGoogle;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getTop():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewGoogle;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getWidth():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewGoogle;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewGoogle;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 166
    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewGoogle;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    .line 167
    invoke-super {p0, v10, v10}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 217
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v8, "VTMapViewGoogle"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure [] -> widthMeasureSpec: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";heightMeasureSpec:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 176
    const-string v8, "VTMapViewGoogle"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure [] -> widthMeasureSpec: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";heightMeasureSpec:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 178
    .local v3, "mw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 179
    .local v0, "mh":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 180
    .local v7, "sw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 181
    .local v6, "sh":I
    invoke-static {v3}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "modeWidth":Ljava/lang/String;
    invoke-static {v0}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "modeHeight":Ljava/lang/String;
    const-string v8, "VTMapViewGoogle"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure [] -> width("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";height("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    if-nez v0, :cond_1

    if-nez v6, :cond_1

    .line 190
    const/high16 v0, -0x80000000

    .line 191
    const v6, 0xffffff

    .line 192
    const-string v8, "VTMapViewGoogle"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewGoogle;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " onMeasure REDEF! -> width("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";height("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewGoogle;->measureAbsoluteMargins()V

    .line 199
    const-string v8, "VTMapViewGoogle"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure  [] -> leftMargin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lnet/veritran/component/view/VTMapViewGoogle;->measuredLeftMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";rightMargin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lnet/veritran/component/view/VTMapViewGoogle;->measuredRightMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";topMargin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lnet/veritran/component/view/VTMapViewGoogle;->measuredTopMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";bottomMargin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lnet/veritran/component/view/VTMapViewGoogle;->measuredBottomMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    move v5, v7

    .line 202
    .local v5, "pixelsWidth":I
    move v4, v6

    .line 204
    .local v4, "pixelsHeight":I
    iget v8, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedWidth:I

    if-eq v8, v11, :cond_2

    .line 205
    iget v5, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedWidth:I

    .line 207
    :cond_2
    iget v8, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedHeight:I

    if-eq v8, v11, :cond_3

    .line 208
    iget v4, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedHeight:I

    .line 211
    :cond_3
    const-string v8, "VTMapViewGoogle"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure  [] -> pixelsWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";pixelsHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-super {p0, v5, v4}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 228
    const-string v0, "VTMapViewGoogle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged [] -> getLeft():+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewGoogle;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getTop():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewGoogle;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getWidth():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewGoogle;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewGoogle;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 262
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 257
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 268
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 274
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 162
    iput p1, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedHeight:I

    .line 163
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 86
    const-string v0, "VTMapViewGoogle"

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

    .line 87
    iput p1, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedLeftMargin:F

    .line 88
    iput p2, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedTopMargin:F

    .line 89
    iput p3, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedRightMargin:F

    .line 90
    iput p4, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedBottomMargin:F

    .line 91
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 148
    iput p1, p0, Lnet/veritran/component/view/VTMapViewGoogle;->fixedWidth:I

    .line 149
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 283
    iput p1, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageHeight:F

    .line 284
    return-void
.end method

.method public setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    .prologue
    .line 343
    iget-object v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->mapComponentFragment:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 344
    return-void
.end method

.method public setMapCenter(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 305
    iget-object v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->mapComponentFragment:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->setMapCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 306
    return-void
.end method

.method public setMapType(I)V
    .locals 2
    .param p1, "mapType"    # I

    .prologue
    .line 316
    packed-switch p1, :pswitch_data_0

    .line 330
    :pswitch_0
    const/4 v0, 0x1

    .line 333
    .local v0, "type":I
    :goto_0
    iget-object v1, p0, Lnet/veritran/component/view/VTMapViewGoogle;->mapComponentFragment:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->setMapType(I)V

    .line 334
    return-void

    .line 318
    .end local v0    # "type":I
    :pswitch_1
    const/4 v0, 0x4

    .line 319
    .restart local v0    # "type":I
    goto :goto_0

    .line 321
    .end local v0    # "type":I
    :pswitch_2
    const/4 v0, 0x2

    .line 322
    .restart local v0    # "type":I
    goto :goto_0

    .line 324
    .end local v0    # "type":I
    :pswitch_3
    const/4 v0, 0x3

    .line 325
    .restart local v0    # "type":I
    goto :goto_0

    .line 327
    .end local v0    # "type":I
    :pswitch_4
    const/4 v0, 0x0

    .line 328
    .restart local v0    # "type":I
    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 125
    iput p1, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageLeftMargin:F

    .line 126
    iput p2, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageTopMargin:F

    .line 127
    iput p3, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageRightMargin:F

    .line 128
    iput p4, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageBottomMargin:F

    .line 129
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 278
    iput p1, p0, Lnet/veritran/component/view/VTMapViewGoogle;->percentageWidth:F

    .line 279
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "zoom"    # F

    .prologue
    .line 300
    iget-object v0, p0, Lnet/veritran/component/view/VTMapViewGoogle;->mapComponentFragment:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->setZoom(F)V

    .line 301
    return-void
.end method
