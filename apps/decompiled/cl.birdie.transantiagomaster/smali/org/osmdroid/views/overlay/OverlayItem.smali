.class public Lorg/osmdroid/views/overlay/OverlayItem;
.super Ljava/lang/Object;
.source "OverlayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    }
.end annotation


# static fields
.field protected static final DEFAULT_MARKER_SIZE:Landroid/graphics/Point;


# instance fields
.field public final mDescription:Ljava/lang/String;

.field public final mGeoPoint:Lorg/osmdroid/util/GeoPoint;

.field protected mHotspotPlace:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field protected mMarker:Landroid/graphics/drawable/Drawable;

.field public final mTitle:Ljava/lang/String;

.field public final mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x1a

    const/16 v2, 0x5e

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lorg/osmdroid/views/overlay/OverlayItem;->DEFAULT_MARKER_SIZE:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/util/GeoPoint;)V
    .locals 1
    .param p1, "aTitle"    # Ljava/lang/String;
    .param p2, "aDescription"    # Ljava/lang/String;
    .param p3, "aGeoPoint"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/util/GeoPoint;B)V

    .line 61
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/util/GeoPoint;B)V
    .locals 1
    .param p1, "aTitle"    # Ljava/lang/String;
    .param p2, "aDescription"    # Ljava/lang/String;
    .param p3, "aGeoPoint"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mTitle:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mDescription:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mUid:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static setState(Landroid/graphics/drawable/Drawable;I)V
    .locals 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "stateBitset"    # I

    .prologue
    .line 139
    const/4 v3, 0x3

    new-array v2, v3, [I

    .line 140
    .local v2, "states":[I
    const/4 v0, 0x0

    .line 141
    .local v0, "index":I
    and-int/lit8 v3, p1, 0x1

    if-lez v3, :cond_0

    .line 142
    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x1

    const v4, 0x10100a7

    aput v4, v2, v3

    :cond_0
    move v1, v0

    .line 143
    .end local v0    # "index":I
    .local v1, "index":I
    and-int/lit8 v3, p1, 0x2

    if-lez v3, :cond_2

    .line 144
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    const v3, 0x10100a1

    aput v3, v2, v1

    .line 145
    :goto_0
    and-int/lit8 v3, p1, 0x4

    if-lez v3, :cond_1

    .line 146
    const v3, 0x101009c

    aput v3, v2, v0

    .line 148
    :cond_1
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 149
    return-void

    .end local v0    # "index":I
    .restart local v1    # "index":I
    :cond_2
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0
.end method


# virtual methods
.method public final getMarker(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "stateBitset"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/osmdroid/views/overlay/OverlayItem;->setState(Landroid/graphics/drawable/Drawable;I)V

    .line 110
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public final getMarkerHotspot()Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mHotspotPlace:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    return-object v0
.end method

.method public final getPoint()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final setMarker(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "marker"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    .line 115
    return-void
.end method

.method public final setMarkerHotspot(Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)V
    .locals 0
    .param p1, "place"    # Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .prologue
    .line 118
    if-nez p1, :cond_0

    sget-object p1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .end local p1    # "place":Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mHotspotPlace:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .line 119
    return-void
.end method
