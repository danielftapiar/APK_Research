.class public final Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;
.super Lorg/osmdroid/views/overlay/OverlayItem;
.source "ExtendedOverlayItem.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$osmdroid$views$overlay$OverlayItem$HotspotPlace:[I


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mRelatedObject:Ljava/lang/Object;

.field private mSubDescription:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method private static synthetic $SWITCH_TABLE$org$osmdroid$views$overlay$OverlayItem$HotspotPlace()[I
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->$SWITCH_TABLE$org$osmdroid$views$overlay$OverlayItem$HotspotPlace:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->values()[Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->LEFT_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->LOWER_LEFT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->LOWER_RIGHT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->NONE:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->RIGHT_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->TOP_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->UPPER_LEFT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->UPPER_RIGHT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->$SWITCH_TABLE$org$osmdroid$views$overlay$OverlayItem$HotspotPlace:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/util/GeoPoint;)V
    .locals 1
    .param p1, "aTitle"    # Ljava/lang/String;
    .param p2, "aDescription"    # Ljava/lang/String;
    .param p3, "aGeoPoint"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/util/GeoPoint;)V

    .line 33
    iput-object p1, p0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->mTitle:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->mDescription:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->mSubDescription:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 37
    iput-object v0, p0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->mRelatedObject:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method private static getHotspot(Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;II)Landroid/graphics/Point;
    .locals 4
    .param p0, "place"    # Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v3, 0x0

    .line 85
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 86
    .local v0, "hp":Landroid/graphics/Point;
    if-nez p0, :cond_0

    .line 87
    sget-object p0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .line 88
    :cond_0
    invoke-static {}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->$SWITCH_TABLE$org$osmdroid$views$overlay$OverlayItem$HotspotPlace()[I

    move-result-object v1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 120
    :goto_0
    return-object v0

    .line 90
    :pswitch_0
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 93
    :pswitch_1
    div-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 96
    :pswitch_2
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 99
    :pswitch_3
    invoke-virtual {v0, p1, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 102
    :pswitch_4
    div-int/lit8 v1, p1, 0x2

    neg-int v2, p2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 105
    :pswitch_5
    neg-int v1, p2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 108
    :pswitch_6
    neg-int v1, p2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 111
    :pswitch_7
    div-int/lit8 v1, p1, 0x2

    neg-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 114
    :pswitch_8
    neg-int v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 117
    :pswitch_9
    neg-int v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getRelatedObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->mRelatedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSubDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->mSubDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final setRelatedObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->mRelatedObject:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public final showBubble$6cd97dd2(Lorg/osmdroid/bonuspack/overlays/InfoWindow;Lorg/osmdroid/views/MapView;)V
    .locals 13
    .param p1, "bubble"    # Lorg/osmdroid/bonuspack/overlays/InfoWindow;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const-wide v11, 0x412e848000000000L    # 1000000.0

    .line 131
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 132
    .local v1, "marker":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .local v4, "markerWidth":I
    const/4 v3, 0x0

    .line 133
    .local v3, "markerHeight":I
    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 135
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 137
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->getMarkerHotspot()Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    move-result-object v5

    invoke-static {v5, v4, v3}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->getHotspot(Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;II)Landroid/graphics/Point;

    move-result-object v2

    .line 138
    .local v2, "markerH":Landroid/graphics/Point;
    sget-object v5, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->TOP_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-static {v5, v4, v3}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->getHotspot(Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;II)Landroid/graphics/Point;

    move-result-object v0

    .line 139
    .local v0, "bubbleH":Landroid/graphics/Point;
    iget v5, v2, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    iget v6, v2, Landroid/graphics/Point;->y:I

    neg-int v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Point;->offset(II)V

    .line 141
    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p0, v5, v6}, Lorg/osmdroid/bonuspack/overlays/InfoWindow;->open(Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;II)V

    .line 142
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/views/MapController;

    move-result-object v5

    iget-object v6, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v7, v11

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v6

    int-to-double v9, v6

    div-double/2addr v9, v11

    invoke-virtual {v5, v7, v8, v9, v10}, Lorg/osmdroid/views/MapController;->animateTo(DD)V

    .line 144
    return-void
.end method
