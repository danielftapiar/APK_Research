.class public Lorg/osmdroid/views/drawing/OsmPath;
.super Landroid/graphics/Path;
.source "OsmPath.java"


# static fields
.field private static final sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;


# instance fields
.field private mLastZoomLevel:I

.field protected final mReferencePoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v1, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    sput-object v0, Lorg/osmdroid/views/drawing/OsmPath;->sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:I

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "src"    # Landroid/graphics/Path;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 23
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:I

    .line 32
    return-void
.end method


# virtual methods
.method public onDrawCycle(Lorg/osmdroid/views/Projection;)V
    .locals 6
    .param p1, "proj"    # Lorg/osmdroid/views/Projection;

    .prologue
    .line 38
    iget v4, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:I

    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 39
    sget-object v4, Lorg/osmdroid/views/drawing/OsmPath;->sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v5, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    invoke-virtual {p1, v4, v5}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 40
    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v4

    iput v4, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:I

    .line 50
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v4, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v2, v4, Landroid/graphics/Point;->x:I

    .line 43
    .local v2, "x":I
    iget-object v4, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v3, v4, Landroid/graphics/Point;->y:I

    .line 44
    .local v3, "y":I
    sget-object v4, Lorg/osmdroid/views/drawing/OsmPath;->sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v5, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    invoke-virtual {p1, v4, v5}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 45
    iget-object v4, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v0, v4, v2

    .line 46
    .local v0, "deltaX":I
    iget-object v4, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int v1, v4, v3

    .line 48
    .local v1, "deltaY":I
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {p0, v4, v5}, Lorg/osmdroid/views/drawing/OsmPath;->offset(FF)V

    goto :goto_0
.end method
