.class public Lnet/veritran/component/view/VTMapPopupAdapter;
.super Ljava/lang/Object;
.source "VTMapPopupAdapter.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# instance fields
.field inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/component/view/VTMapPopupAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 33
    iput-object p1, p0, Lnet/veritran/component/view/VTMapPopupAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 34
    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 10
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    const/4 v2, 0x0

    const/16 v9, 0x8

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->getVTMarkerFromMarkerId(Ljava/lang/String;)Lnet/veritran/vtuserapplication/api/map/VTMarker;

    move-result-object v4

    .line 40
    .local v4, "vtMarker":Lnet/veritran/vtuserapplication/api/map/VTMarker;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getIsCenter()Z

    move-result v5

    if-nez v5, :cond_0

    .line 42
    iget-object v5, p0, Lnet/veritran/component/view/VTMapPopupAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 44
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v6

    const-string v7, "$layout"

    const-string v8, "map_marker"

    invoke-virtual {v6, v7, v8}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 42
    invoke-virtual {v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 46
    .local v2, "popup":Landroid/view/View;
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getSnippetTextBackgroundColor()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    new-instance v0, Lnet/veritran/component/view/BubbleDrawable;

    invoke-direct {v0}, Lnet/veritran/component/view/BubbleDrawable;-><init>()V

    .line 49
    .local v0, "bb":Lnet/veritran/component/view/BubbleDrawable;
    invoke-virtual {v0, v9, v9, v9, v9}, Lnet/veritran/component/view/BubbleDrawable;->setPadding(IIII)V

    .line 50
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getSnippetTextBackgroundColor()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/BubbleDrawable;->setColor(I)V

    .line 51
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v5

    const-string v6, "$id"

    const-string v7, "title"

    invoke-virtual {v5, v6, v7}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 53
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 57
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getSnippetTextColor()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v5

    const-string v6, "$id"

    const-string v7, "snippet"

    invoke-virtual {v5, v6, v7}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 60
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "tv":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 64
    .restart local v3    # "tv":Landroid/widget/TextView;
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getSnippet()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getSnippetTextColor()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v5

    const-string v6, "$id"

    const-string v7, "icon"

    invoke-virtual {v5, v6, v7}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 67
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 72
    .local v1, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getResource()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    .end local v0    # "bb":Lnet/veritran/component/view/BubbleDrawable;
    .end local v1    # "imgView":Landroid/widget/ImageView;
    .end local v2    # "popup":Landroid/view/View;
    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_0
    return-object v2
.end method
