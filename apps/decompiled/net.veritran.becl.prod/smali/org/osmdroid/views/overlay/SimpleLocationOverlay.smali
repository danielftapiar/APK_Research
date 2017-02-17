.class public Lorg/osmdroid/views/overlay/SimpleLocationOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SimpleLocationOverlay.java"


# instance fields
.field protected final PERSON_HOTSPOT:Landroid/graphics/Point;

.field protected final PERSON_ICON:Landroid/graphics/Bitmap;

.field protected mLocation:Lorg/osmdroid/util/GeoPoint;

.field protected final mPaint:Landroid/graphics/Paint;

.field private final screenCoords:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 44
    new-instance v0, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-direct {v0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;-><init>(Landroid/content/Context;Lorg/osmdroid/ResourceProxy;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/ResourceProxy;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pResourceProxy"    # Lorg/osmdroid/ResourceProxy;

    .prologue
    .line 49
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/Overlay;-><init>(Lorg/osmdroid/ResourceProxy;)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;->mPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x18

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;->PERSON_HOTSPOT:Landroid/graphics/Point;

    .line 37
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;->screenCoords:Landroid/graphics/Point;

    .line 50
    iget-object v0, p0, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v1, Lorg/osmdroid/ResourceProxy$bitmap;->person:Lorg/osmdroid/ResourceProxy$bitmap;

    invoke-interface {v0, v1}, Lorg/osmdroid/ResourceProxy;->getBitmap(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;->PERSON_ICON:Landroid/graphics/Bitmap;

    .line 51
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "osmv"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 71
    if-nez p3, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 73
    .local v0, "pj":Lorg/osmdroid/views/Projection;
    iget-object v1, p0, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;->screenCoords:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 75
    iget-object v1, p0, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;->PERSON_ICON:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;->PERSON_HOTSPOT:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;->PERSON_HOTSPOT:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    .end local v0    # "pj":Lorg/osmdroid/views/Projection;
    :cond_0
    return-void
.end method

.method public getMyLocation()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public setLocation(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0
    .param p1, "mp"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/osmdroid/views/overlay/SimpleLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    .line 59
    return-void
.end method
