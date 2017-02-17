.class public final Lorg/mapsforge/android/maps/MapZoomControls;
.super Ljava/lang/Object;
.source "MapZoomControls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/android/maps/MapZoomControls$ZoomOutClickListener;,
        Lorg/mapsforge/android/maps/MapZoomControls$ZoomInClickListener;,
        Lorg/mapsforge/android/maps/MapZoomControls$ZoomControlsHideHandler;
    }
.end annotation


# static fields
.field private static final ZOOM_CONTROLS_TIMEOUT:J


# instance fields
.field private gravityChanged:Z

.field private showMapZoomControls:Z

.field private final zoomControls:Landroid/widget/ZoomControls;

.field private zoomControlsGravity:I

.field private final zoomControlsHideHandler:Landroid/os/Handler;

.field private zoomLevelMax:B

.field private zoomLevelMin:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    sput-wide v0, Lorg/mapsforge/android/maps/MapZoomControls;->ZOOM_CONTROLS_TIMEOUT:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/mapsforge/android/maps/MapView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    const/4 v3, -0x2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v1, Landroid/widget/ZoomControls;

    invoke-direct {v1, p1}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControls:Landroid/widget/ZoomControls;

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mapsforge/android/maps/MapZoomControls;->showMapZoomControls:Z

    .line 114
    const/16 v1, 0x16

    iput-byte v1, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomLevelMax:B

    .line 115
    const/4 v1, 0x0

    iput-byte v1, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomLevelMin:B

    .line 116
    iget-object v1, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControls:Landroid/widget/ZoomControls;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 117
    const/16 v1, 0x55

    iput v1, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControlsGravity:I

    .line 119
    iget-object v1, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControls:Landroid/widget/ZoomControls;

    new-instance v2, Lorg/mapsforge/android/maps/MapZoomControls$ZoomInClickListener;

    invoke-direct {v2, p2}, Lorg/mapsforge/android/maps/MapZoomControls$ZoomInClickListener;-><init>(Lorg/mapsforge/android/maps/MapView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControls:Landroid/widget/ZoomControls;

    new-instance v2, Lorg/mapsforge/android/maps/MapZoomControls$ZoomOutClickListener;

    invoke-direct {v2, p2}, Lorg/mapsforge/android/maps/MapZoomControls$ZoomOutClickListener;-><init>(Lorg/mapsforge/android/maps/MapView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v1, Lorg/mapsforge/android/maps/MapZoomControls$ZoomControlsHideHandler;

    iget-object v2, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControls:Landroid/widget/ZoomControls;

    invoke-direct {v1, v2}, Lorg/mapsforge/android/maps/MapZoomControls$ZoomControlsHideHandler;-><init>(Landroid/widget/ZoomControls;)V

    iput-object v1, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControlsHideHandler:Landroid/os/Handler;

    .line 123
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {p2, v1, v0}, Lorg/mapsforge/android/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void
.end method

.method private showZoomControls()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControlsHideHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->show()V

    .line 251
    :cond_0
    return-void
.end method

.method private showZoomControlsWithTimeout()V
    .locals 4

    .prologue
    .line 254
    invoke-direct {p0}, Lorg/mapsforge/android/maps/MapZoomControls;->showZoomControls()V

    .line 255
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControlsHideHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    sget-wide v2, Lorg/mapsforge/android/maps/MapZoomControls;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 256
    return-void
.end method


# virtual methods
.method final getMeasuredHeight()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method final getMeasuredWidth()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final getZoomLevelMax()B
    .locals 1

    .prologue
    .line 140
    iget-byte v0, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomLevelMax:B

    return v0
.end method

.method public final getZoomLevelMin()B
    .locals 1

    .prologue
    .line 147
    iget-byte v0, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomLevelMin:B

    return v0
.end method

.method final measure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomControls;->measure(II)V

    .line 268
    return-void
.end method

.method final onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v6, 0x0

    .line 271
    if-nez p1, :cond_0

    iget-boolean v7, p0, Lorg/mapsforge/android/maps/MapZoomControls;->gravityChanged:Z

    if-nez v7, :cond_0

    .line 285
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v7, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v7}, Landroid/widget/ZoomControls;->getMeasuredWidth()I

    move-result v5

    .line 276
    .local v5, "zoomControlsWidth":I
    iget-object v7, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v7}, Landroid/widget/ZoomControls;->getMeasuredHeight()I

    move-result v4

    .line 278
    .local v4, "zoomControlsHeight":I
    iget v7, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControlsGravity:I

    and-int/lit8 v7, v7, 0x7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unknown horizontal gravity: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_1
    const/4 v1, 0x5

    .line 279
    .local v1, "positionLeft":I
    :goto_1
    iget v7, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControlsGravity:I

    and-int/lit8 v7, v7, 0x70

    sparse-switch v7, :sswitch_data_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unknown vertical gravity: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 278
    .end local v1    # "positionLeft":I
    :pswitch_2
    sub-int v7, p4, p2

    sub-int/2addr v7, v5

    div-int/lit8 v1, v7, 0x2

    goto :goto_1

    :pswitch_3
    sub-int v7, p4, p2

    sub-int/2addr v7, v5

    add-int/lit8 v1, v7, -0x5

    goto :goto_1

    .restart local v1    # "positionLeft":I
    :sswitch_0
    move v3, v6

    .line 280
    .local v3, "positionTop":I
    :goto_2
    add-int v2, v1, v5

    .line 281
    .local v2, "positionRight":I
    add-int v0, v3, v4

    .line 283
    .local v0, "positionBottom":I
    iget-object v7, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/ZoomControls;->layout(IIII)V

    .line 284
    iput-boolean v6, p0, Lorg/mapsforge/android/maps/MapZoomControls;->gravityChanged:Z

    goto :goto_0

    .line 279
    .end local v0    # "positionBottom":I
    .end local v2    # "positionRight":I
    .end local v3    # "positionTop":I
    :sswitch_1
    sub-int v7, p5, p3

    sub-int/2addr v7, v4

    div-int/lit8 v3, v7, 0x2

    goto :goto_2

    :sswitch_2
    sub-int v7, p5, p3

    sub-int v3, v7, v4

    goto :goto_2

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method final onMapViewTouchEvent(I)V
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 288
    iget-boolean v0, p0, Lorg/mapsforge/android/maps/MapZoomControls;->showMapZoomControls:Z

    if-eqz v0, :cond_0

    .line 289
    packed-switch p1, :pswitch_data_0

    .line 301
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 291
    :pswitch_1
    invoke-direct {p0}, Lorg/mapsforge/android/maps/MapZoomControls;->showZoomControls()V

    goto :goto_0

    .line 294
    :pswitch_2
    invoke-direct {p0}, Lorg/mapsforge/android/maps/MapZoomControls;->showZoomControlsWithTimeout()V

    goto :goto_0

    .line 297
    :pswitch_3
    invoke-direct {p0}, Lorg/mapsforge/android/maps/MapZoomControls;->showZoomControlsWithTimeout()V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method final onZoomLevelChange(I)V
    .locals 5
    .param p1, "zoomLevel"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 304
    iget-byte v4, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomLevelMax:B

    if-ge p1, v4, :cond_0

    move v0, v2

    .line 305
    .local v0, "zoomInEnabled":Z
    :goto_0
    iget-byte v4, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomLevelMin:B

    if-le p1, v4, :cond_1

    move v1, v2

    .line 307
    .local v1, "zoomOutEnabled":Z
    :goto_1
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v2, v0}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    .line 308
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapZoomControls;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v2, v1}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    .line 309
    return-void

    .end local v0    # "zoomInEnabled":Z
    .end local v1    # "zoomOutEnabled":Z
    :cond_0
    move v0, v3

    .line 304
    goto :goto_0

    .restart local v0    # "zoomInEnabled":Z
    :cond_1
    move v1, v3

    .line 305
    goto :goto_1
.end method

.method public final setShowMapZoomControls(Z)V
    .locals 0
    .param p1, "showMapZoomControls"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lorg/mapsforge/android/maps/MapZoomControls;->showMapZoomControls:Z

    .line 163
    return-void
.end method
