.class Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay;
.super Lorg/osmdroid/views/overlay/ItemizedIconOverlay;
.source "VTMapViewOSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/view/VTMapViewOSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOwnItemizedOverlay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/osmdroid/views/overlay/ItemizedIconOverlay",
        "<",
        "Lorg/osmdroid/views/overlay/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/view/VTMapViewOSM;


# direct methods
.method public constructor <init>(Lnet/veritran/component/view/VTMapViewOSM;Lnet/veritran/component/view/VTMapViewOSM;Ljava/util/List;)V
    .locals 2
    .param p2, "view"    # Lnet/veritran/component/view/VTMapViewOSM;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/veritran/component/view/VTMapViewOSM;",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/views/overlay/OverlayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p3, "aList":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/views/overlay/OverlayItem;>;"
    iput-object p1, p0, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay;->this$0:Lnet/veritran/component/view/VTMapViewOSM;

    .line 65
    invoke-virtual {p2}, Lnet/veritran/component/view/VTMapViewOSM;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay$1;

    invoke-direct {v1, p1, p2}, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay$1;-><init>(Lnet/veritran/component/view/VTMapViewOSM;Lnet/veritran/component/view/VTMapViewOSM;)V

    invoke-direct {p0, v0, p3, v1}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;)V

    .line 138
    return-void
.end method


# virtual methods
.method protected declared-synchronized boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "marker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotspot"    # Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 152
    .local v2, "markerWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 154
    .local v1, "markerHeight":I
    if-eqz v1, :cond_0

    .line 155
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v5, v2, 0x6

    div-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lnet/veritran/VTAbstractActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v3

    float-to-int v2, v3

    .line 156
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v3

    const-string v4, "6mm"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lnet/veritran/VTAbstractActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v3

    float-to-int v1, v3

    .line 159
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 160
    .local v0, "mRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v4, 0x0

    add-int/lit8 v5, v2, 0x0

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 162
    if-nez p2, :cond_1

    .line 163
    sget-object p2, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .line 166
    :cond_1
    sget-object v3, Lnet/veritran/component/view/VTMapViewOSM$1;->$SwitchMap$org$osmdroid$views$overlay$OverlayItem$HotspotPlace:[I

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 198
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-object p1

    .line 171
    :pswitch_0
    neg-int v3, v2

    :try_start_1
    div-int/lit8 v3, v3, 0x2

    neg-int v4, v1

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "markerHeight":I
    .end local v2    # "markerWidth":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 174
    .restart local v0    # "mRect":Landroid/graphics/Rect;
    .restart local v1    # "markerHeight":I
    .restart local v2    # "markerWidth":I
    :pswitch_1
    neg-int v3, v2

    :try_start_2
    div-int/lit8 v3, v3, 0x2

    neg-int v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 177
    :pswitch_2
    neg-int v3, v2

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 180
    :pswitch_3
    neg-int v3, v2

    neg-int v4, v1

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 183
    :pswitch_4
    const/4 v3, 0x0

    neg-int v4, v1

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 186
    :pswitch_5
    neg-int v3, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 189
    :pswitch_6
    neg-int v3, v2

    neg-int v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 192
    :pswitch_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 195
    :pswitch_8
    const/4 v3, 0x0

    neg-int v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method
