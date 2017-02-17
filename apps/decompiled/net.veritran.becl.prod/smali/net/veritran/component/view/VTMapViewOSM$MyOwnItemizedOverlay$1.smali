.class Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay$1;
.super Ljava/lang/Object;
.source "VTMapViewOSM.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay;-><init>(Lnet/veritran/component/view/VTMapViewOSM;Lnet/veritran/component/view/VTMapViewOSM;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
        "<",
        "Lorg/osmdroid/views/overlay/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$this$0:Lnet/veritran/component/view/VTMapViewOSM;

.field final synthetic val$view:Lnet/veritran/component/view/VTMapViewOSM;


# direct methods
.method constructor <init>(Lnet/veritran/component/view/VTMapViewOSM;Lnet/veritran/component/view/VTMapViewOSM;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay$1;->val$this$0:Lnet/veritran/component/view/VTMapViewOSM;

    iput-object p2, p0, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay$1;->val$view:Lnet/veritran/component/view/VTMapViewOSM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onItemLongPress(ILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 65
    check-cast p2, Lorg/osmdroid/views/overlay/OverlayItem;

    invoke-virtual {p0, p1, p2}, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay$1;->onItemLongPress(ILorg/osmdroid/views/overlay/OverlayItem;)Z

    move-result v0

    return v0
.end method

.method public onItemLongPress(ILorg/osmdroid/views/overlay/OverlayItem;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # Lorg/osmdroid/views/overlay/OverlayItem;

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onItemSingleTapUp(ILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 65
    check-cast p2, Lorg/osmdroid/views/overlay/OverlayItem;

    invoke-virtual {p0, p1, p2}, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay$1;->onItemSingleTapUp(ILorg/osmdroid/views/overlay/OverlayItem;)Z

    move-result v0

    return v0
.end method

.method public onItemSingleTapUp(ILorg/osmdroid/views/overlay/OverlayItem;)Z
    .locals 12
    .param p1, "index"    # I
    .param p2, "item"    # Lorg/osmdroid/views/overlay/OverlayItem;

    .prologue
    .line 68
    if-nez p2, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 130
    :goto_0
    return v1

    .line 72
    :cond_0
    iget-object v1, p0, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay$1;->val$view:Lnet/veritran/component/view/VTMapViewOSM;

    invoke-virtual {v1}, Lnet/veritran/component/view/VTMapViewOSM;->getpopUp()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay$1;->val$view:Lnet/veritran/component/view/VTMapViewOSM;

    iget-object v2, p0, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay$1;->val$view:Lnet/veritran/component/view/VTMapViewOSM;

    invoke-virtual {v2}, Lnet/veritran/component/view/VTMapViewOSM;->getpopUp()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/component/view/VTMapViewOSM;->removeView(Landroid/view/View;)V

    .line 74
    iget-object v1, p0, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay$1;->val$view:Lnet/veritran/component/view/VTMapViewOSM;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/veritran/component/view/VTMapViewOSM;->setpopUp(Landroid/view/View;)V

    .line 78
    :cond_1
    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/OverlayItem;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/veritran/component/view/VTMapViewOSM;->getVTMarkerFromMarkerId(Ljava/lang/String;)Lnet/veritran/vtuserapplication/api/map/VTMarker;

    move-result-object v11

    .line 80
    .local v11, "vtMarker":Lnet/veritran/vtuserapplication/api/map/VTMarker;
    const/4 v9, 0x0

    .line 81
    .local v9, "popUp":Landroid/view/View;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getIsCenter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    iget-object v1, p0, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay$1;->val$view:Lnet/veritran/component/view/VTMapViewOSM;

    invoke-virtual {v1}, Lnet/veritran/component/view/VTMapViewOSM;->getAdapter()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    move-result-object v1

    check-cast v1, Lnet/veritran/component/view/VTMapPopupAdapter;

    iget-object v1, v1, Lnet/veritran/component/view/VTMapPopupAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 85
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    const-string v3, "$layout"

    const-string v4, "map_marker"

    invoke-virtual {v2, v3, v4}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    .line 83
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 87
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getSnippetTextBackgroundColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 89
    new-instance v7, Lnet/veritran/component/view/BubbleDrawable;

    invoke-direct {v7}, Lnet/veritran/component/view/BubbleDrawable;-><init>()V

    .line 90
    .local v7, "bb":Lnet/veritran/component/view/BubbleDrawable;
    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-virtual {v7, v1, v2, v3, v4}, Lnet/veritran/component/view/BubbleDrawable;->setPadding(IIII)V

    .line 91
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getSnippetTextBackgroundColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Lnet/veritran/component/view/BubbleDrawable;->setColor(I)V

    .line 92
    invoke-virtual {v9, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    const-string v2, "$id"

    const-string v3, "title"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 94
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 98
    .local v10, "tv":Landroid/widget/TextView;
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getSnippetTextColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    const-string v2, "$id"

    const-string v3, "snippet"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 101
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "tv":Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 105
    .restart local v10    # "tv":Landroid/widget/TextView;
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getSnippetTextColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    const-string v2, "$id"

    const-string v3, "icon"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 108
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 113
    .local v8, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getResource()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    new-instance v0, Lorg/osmdroid/views/MapView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    .line 117
    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 118
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getResource()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getResource()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    :goto_1
    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(IILorg/osmdroid/api/IGeoPoint;III)V

    .line 119
    .local v0, "mapParams":Lorg/osmdroid/views/MapView$LayoutParams;
    new-instance v1, Lnet/veritran/component/VTMapOnClickListener;

    iget-object v2, p0, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay$1;->val$view:Lnet/veritran/component/view/VTMapViewOSM;

    invoke-virtual {v2}, Lnet/veritran/component/view/VTMapViewOSM;->getMapComponentlistener()Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;

    move-result-object v2

    invoke-direct {v1, v2, v11}, Lnet/veritran/component/VTMapOnClickListener;-><init>(Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;Lnet/veritran/vtuserapplication/api/map/VTMarker;)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v1, p0, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay$1;->val$view:Lnet/veritran/component/view/VTMapViewOSM;

    invoke-virtual {v1, v9}, Lnet/veritran/component/view/VTMapViewOSM;->setpopUp(Landroid/view/View;)V

    .line 125
    iget-object v1, p0, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay$1;->val$view:Lnet/veritran/component/view/VTMapViewOSM;

    invoke-virtual {v1, v9, v0}, Lnet/veritran/component/view/VTMapViewOSM;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v1, p0, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay$1;->val$view:Lnet/veritran/component/view/VTMapViewOSM;

    invoke-virtual {v1}, Lnet/veritran/component/view/VTMapViewOSM;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 130
    .end local v0    # "mapParams":Lorg/osmdroid/views/MapView$LayoutParams;
    .end local v7    # "bb":Lnet/veritran/component/view/BubbleDrawable;
    .end local v8    # "imgView":Landroid/widget/ImageView;
    .end local v10    # "tv":Landroid/widget/TextView;
    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 118
    .restart local v7    # "bb":Lnet/veritran/component/view/BubbleDrawable;
    .restart local v8    # "imgView":Landroid/widget/ImageView;
    .restart local v10    # "tv":Landroid/widget/TextView;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method
