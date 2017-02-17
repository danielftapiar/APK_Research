.class public Lorg/osmdroid/views/overlay/MyLocationOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "MyLocationOverlay.java"

# interfaces
.implements Lorg/osmdroid/api/IMyLocationOverlay;
.implements Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/location/LocationListener;
.implements Lorg/osmdroid/views/overlay/Overlay$Snappable;


# static fields
.field public static final MENU_COMPASS:I

.field public static final MENU_MY_LOCATION:I

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field protected final COMPASS_FRAME_CENTER_X:F

.field protected final COMPASS_FRAME_CENTER_Y:F

.field protected final COMPASS_ROSE_CENTER_X:F

.field protected final COMPASS_ROSE_CENTER_Y:F

.field protected final DIRECTION_ARROW:Landroid/graphics/Bitmap;

.field protected final DIRECTION_ARROW_CENTER_X:F

.field protected final DIRECTION_ARROW_CENTER_Y:F

.field protected final PERSON_HOTSPOT:Landroid/graphics/PointF;

.field protected final PERSON_ICON:Landroid/graphics/Bitmap;

.field private final directionRotater:Landroid/graphics/Matrix;

.field private mAzimuth:F

.field protected final mCirclePaint:Landroid/graphics/Paint;

.field private mCompassCenterX:F

.field private mCompassCenterY:F

.field protected final mCompassFrame:Landroid/graphics/Picture;

.field private final mCompassMatrix:Landroid/graphics/Matrix;

.field private final mCompassRadius:F

.field protected final mCompassRose:Landroid/graphics/Picture;

.field private final mDisplay:Landroid/view/Display;

.field protected mDrawAccuracyEnabled:Z

.field protected mFollow:Z

.field private final mGeoPoint:Lorg/osmdroid/util/GeoPoint;

.field private final mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

.field private mLocation:Landroid/location/Location;

.field public mLocationListener:Lorg/osmdroid/LocationListenerProxy;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateMinDistance:F

.field private mLocationUpdateMinTime:J

.field private final mMapController:Lorg/osmdroid/api/IMapController;

.field private final mMapCoords:Landroid/graphics/Point;

.field protected final mMapView:Lorg/osmdroid/views/MapView;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mMatrixValues:[F

.field private final mMyLocationPreviousRect:Landroid/graphics/Rect;

.field private final mMyLocationRect:Landroid/graphics/Rect;

.field private mOptionsMenuEnabled:Z

.field protected final mPaint:Landroid/graphics/Paint;

.field private final mRunOnFirstFix:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mSensorListener:Lorg/osmdroid/SensorEventListenerProxy;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/osmdroid/views/overlay/MyLocationOverlay;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->logger:Lorg/slf4j/Logger;

    .line 124
    invoke-static {}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->MENU_MY_LOCATION:I

    .line 125
    invoke-static {}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->MENU_COMPASS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 140
    new-instance v0, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-direct {v0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;-><init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;Lorg/osmdroid/ResourceProxy;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;Lorg/osmdroid/ResourceProxy;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "pResourceProxy"    # Lorg/osmdroid/ResourceProxy;

    .prologue
    const/16 v8, 0x64

    const/high16 v7, 0x420c0000    # 35.0f

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 145
    invoke-direct {p0, p3}, Lorg/osmdroid/views/overlay/Overlay;-><init>(Lorg/osmdroid/ResourceProxy;)V

    .line 71
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mPaint:Landroid/graphics/Paint;

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCirclePaint:Landroid/graphics/Paint;

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationListener:Lorg/osmdroid/LocationListenerProxy;

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mSensorListener:Lorg/osmdroid/SensorEventListenerProxy;

    .line 87
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mRunOnFirstFix:Ljava/util/LinkedList;

    .line 88
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    .line 91
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, v4, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    .line 92
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationUpdateMinTime:J

    .line 93
    const/4 v1, 0x0

    iput v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationUpdateMinDistance:F

    .line 94
    iput-boolean v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mFollow:Z

    .line 95
    iput-boolean v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mDrawAccuracyEnabled:Z

    .line 96
    new-instance v1, Lorg/osmdroid/util/NetworkLocationIgnorer;

    invoke-direct {v1}, Lorg/osmdroid/util/NetworkLocationIgnorer;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

    .line 98
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    .line 106
    new-instance v1, Landroid/graphics/Picture;

    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassFrame:Landroid/graphics/Picture;

    .line 107
    new-instance v1, Landroid/graphics/Picture;

    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassRose:Landroid/graphics/Picture;

    .line 108
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    .line 113
    const/high16 v1, 0x7fc00000    # NaNf

    iput v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mAzimuth:F

    .line 115
    iput v7, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassCenterX:F

    .line 116
    iput v7, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassCenterY:F

    .line 117
    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassRadius:F

    .line 127
    iput-boolean v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mOptionsMenuEnabled:Z

    .line 130
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMatrixValues:[F

    .line 131
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMatrix:Landroid/graphics/Matrix;

    .line 132
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMyLocationRect:Landroid/graphics/Rect;

    .line 133
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMyLocationPreviousRect:Landroid/graphics/Rect;

    .line 146
    iput-object p2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 147
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationManager:Landroid/location/LocationManager;

    .line 148
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mSensorManager:Landroid/hardware/SensorManager;

    .line 149
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 150
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mDisplay:Landroid/view/Display;

    .line 152
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    .line 153
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v4, v8, v8, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 154
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v2, Lorg/osmdroid/ResourceProxy$bitmap;->person:Lorg/osmdroid/ResourceProxy$bitmap;

    invoke-interface {v1, v2}, Lorg/osmdroid/ResourceProxy;->getBitmap(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->PERSON_ICON:Landroid/graphics/Bitmap;

    .line 157
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v2, Lorg/osmdroid/ResourceProxy$bitmap;->direction_arrow:Lorg/osmdroid/ResourceProxy$bitmap;

    invoke-interface {v1, v2}, Lorg/osmdroid/ResourceProxy;->getBitmap(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    .line 159
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, v5

    iput v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->DIRECTION_ARROW_CENTER_X:F

    .line 160
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, v5

    iput v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->DIRECTION_ARROW_CENTER_Y:F

    .line 163
    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x41c00000    # 24.0f

    iget v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    const/high16 v3, 0x421c0000    # 39.0f

    iget v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->PERSON_HOTSPOT:Landroid/graphics/PointF;

    .line 165
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->createCompassFramePicture()V

    .line 166
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->createCompassRosePicture()V

    .line 168
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassFrame:Landroid/graphics/Picture;

    invoke-virtual {v1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, v5

    iput v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->COMPASS_FRAME_CENTER_X:F

    .line 169
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassFrame:Landroid/graphics/Picture;

    invoke-virtual {v1}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, v5

    iput v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->COMPASS_FRAME_CENTER_Y:F

    .line 170
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassRose:Landroid/graphics/Picture;

    invoke-virtual {v1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, v5

    iput v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->COMPASS_ROSE_CENTER_X:F

    .line 171
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassRose:Landroid/graphics/Picture;

    invoke-virtual {v1}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, v5

    iput v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->COMPASS_ROSE_CENTER_Y:F

    .line 172
    return-void
.end method

.method private calculatePointOnCircle(FFFF)Landroid/graphics/Point;
    .locals 8
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F
    .param p4, "degrees"    # F

    .prologue
    .line 761
    neg-float v4, p4

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 763
    .local v0, "dblRadians":D
    float-to-double v4, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 764
    .local v2, "intX":I
    float-to-double v4, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 766
    .local v3, "intY":I
    new-instance v4, Landroid/graphics/Point;

    float-to-int v5, p1

    add-int/2addr v5, v2

    float-to-int v6, p2

    sub-int/2addr v6, v3

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    return-object v4
.end method

.method private createCompassFramePicture()V
    .locals 11

    .prologue
    const/16 v5, 0xc8

    const/16 v4, 0x32

    const/4 v3, 0x1

    const/high16 v10, 0x41a00000    # 20.0f

    const/high16 v2, 0x41c80000    # 25.0f

    .line 794
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 795
    .local v8, "innerPaint":Landroid/graphics/Paint;
    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 796
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 797
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 798
    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 801
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 802
    .local v6, "outerPaint":Landroid/graphics/Paint;
    const v0, -0x777778

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 803
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 804
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 805
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 806
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 808
    const/16 v9, 0x32

    .line 809
    .local v9, "picBorderWidthAndHeight":I
    const/16 v7, 0x19

    .line 811
    .local v7, "center":I
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassFrame:Landroid/graphics/Picture;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    .line 815
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v0, v10

    invoke-virtual {v1, v2, v2, v0, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 816
    iget v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v0, v10

    invoke-virtual {v1, v2, v2, v0, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 821
    iget v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float v4, v10, v0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 822
    iget v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float v4, v10, v0

    const/high16 v5, 0x42b40000    # 90.0f

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 823
    iget v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float v4, v10, v0

    const/high16 v5, 0x43340000    # 180.0f

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 824
    iget v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float v4, v10, v0

    const/high16 v5, 0x43870000    # 270.0f

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 826
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassFrame:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 827
    return-void
.end method

.method private createCompassRosePicture()V
    .locals 14

    .prologue
    const/16 v10, 0xdc

    const/4 v9, 0x1

    const/high16 v13, 0x41880000    # 17.0f

    const/high16 v12, 0x40800000    # 4.0f

    const/high16 v11, 0x41c80000    # 25.0f

    .line 831
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 832
    .local v3, "northPaint":Landroid/graphics/Paint;
    const/high16 v8, -0x600000

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 833
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 834
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 835
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 838
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 839
    .local v7, "southPaint":Landroid/graphics/Paint;
    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 840
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 841
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 842
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 845
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 846
    .local v2, "centerPaint":Landroid/graphics/Paint;
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 847
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 848
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 849
    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 852
    const/16 v6, 0x32

    .line 853
    .local v6, "picBorderWidthAndHeight":I
    const/16 v1, 0x19

    .line 855
    .local v1, "center":I
    iget-object v8, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassRose:Landroid/graphics/Picture;

    const/16 v9, 0x32

    const/16 v10, 0x32

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    .line 859
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 860
    .local v4, "pathNorth":Landroid/graphics/Path;
    iget v8, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v8, v13

    sub-float v8, v11, v8

    invoke-virtual {v4, v11, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 861
    iget v8, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v8, v12

    add-float/2addr v8, v11

    invoke-virtual {v4, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 862
    iget v8, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v8, v12

    sub-float v8, v11, v8

    invoke-virtual {v4, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 863
    iget v8, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v8, v13

    sub-float v8, v11, v8

    invoke-virtual {v4, v11, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 864
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 865
    invoke-virtual {v0, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 868
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 869
    .local v5, "pathSouth":Landroid/graphics/Path;
    iget v8, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v8, v13

    add-float/2addr v8, v11

    invoke-virtual {v5, v11, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 870
    iget v8, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v8, v12

    add-float/2addr v8, v11

    invoke-virtual {v5, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 871
    iget v8, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v8, v12

    sub-float v8, v11, v8

    invoke-virtual {v5, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 872
    iget v8, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v8, v13

    add-float/2addr v8, v11

    invoke-virtual {v5, v11, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 873
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 874
    invoke-virtual {v0, v5, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 877
    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v0, v11, v11, v8, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 879
    iget-object v8, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassRose:Landroid/graphics/Picture;

    invoke-virtual {v8}, Landroid/graphics/Picture;->endRecording()V

    .line 880
    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "radius"    # F
    .param p5, "degrees"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 771
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 772
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->calculatePointOnCircle(FFFF)Landroid/graphics/Point;

    move-result-object v1

    .line 773
    .local v1, "point":Landroid/graphics/Point;
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, p5, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 774
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 775
    .local v0, "p":Landroid/graphics/Path;
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 776
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 777
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    iget v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 778
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 779
    invoke-virtual {p1, v0, p6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 780
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 781
    return-void
.end method

.method private getDisplayOrientation()I
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 788
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 785
    :pswitch_0
    const/16 v0, 0x5a

    goto :goto_0

    .line 786
    :pswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    .line 787
    :pswitch_2
    const/16 v0, 0x10e

    goto :goto_0

    .line 784
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private invalidateCompass()V
    .locals 10

    .prologue
    .line 175
    iget-object v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v5}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v5

    invoke-virtual {v5}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 176
    .local v4, "screenRect":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v6}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassCenterX:F

    iget v7, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->COMPASS_FRAME_CENTER_X:F

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int v1, v5, v6

    .line 178
    .local v1, "frameLeft":I
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v6}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassCenterY:F

    iget v7, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->COMPASS_FRAME_CENTER_Y:F

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int v3, v5, v6

    .line 180
    .local v3, "frameTop":I
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v6}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassCenterX:F

    iget v7, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->COMPASS_FRAME_CENTER_X:F

    add-float/2addr v6, v7

    iget v7, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int v2, v5, v6

    .line 182
    .local v2, "frameRight":I
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v6}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassCenterY:F

    iget v7, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->COMPASS_FRAME_CENTER_Y:F

    add-float/2addr v6, v7

    iget v7, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int v0, v5, v6

    .line 186
    .local v0, "frameBottom":I
    iget-object v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    add-int/lit8 v6, v1, -0x2

    add-int/lit8 v7, v3, -0x2

    add-int/lit8 v8, v2, 0x2

    add-int/lit8 v9, v0, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/osmdroid/views/MapView;->postInvalidate(IIII)V

    .line 187
    return-void
.end method


# virtual methods
.method public disableCompass()V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mSensorListener:Lorg/osmdroid/SensorEventListenerProxy;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mSensorListener:Lorg/osmdroid/SensorEventListenerProxy;

    invoke-virtual {v0}, Lorg/osmdroid/SensorEventListenerProxy;->stopListening()V

    .line 718
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mSensorListener:Lorg/osmdroid/SensorEventListenerProxy;

    .line 719
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mAzimuth:F

    .line 722
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_1

    .line 723
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->invalidateCompass()V

    .line 725
    :cond_1
    return-void
.end method

.method public disableFollowLocation()V
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mFollow:Z

    .line 608
    return-void
.end method

.method public disableMyLocation()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationListener:Lorg/osmdroid/LocationListenerProxy;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationListener:Lorg/osmdroid/LocationListenerProxy;

    invoke-virtual {v0}, Lorg/osmdroid/LocationListenerProxy;->stopListening()V

    .line 667
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationListener:Lorg/osmdroid/LocationListenerProxy;

    .line 670
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 673
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 370
    if-eqz p3, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->drawMyLocation(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Landroid/location/Location;)V

    .line 378
    :cond_2
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->isCompassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mAzimuth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mAzimuth:F

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->getDisplayOrientation()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->drawCompass(Landroid/graphics/Canvas;FLandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected drawCompass(Landroid/graphics/Canvas;FLandroid/graphics/Rect;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bearing"    # F
    .param p3, "screenRect"    # Landroid/graphics/Rect;

    .prologue
    .line 344
    iget v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassCenterX:F

    iget v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float v0, v2, v3

    .line 345
    .local v0, "centerX":F
    iget v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassCenterY:F

    iget v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mScale:F

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 347
    .local v1, "centerY":F
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->COMPASS_FRAME_CENTER_X:F

    neg-float v3, v3

    iget v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->COMPASS_FRAME_CENTER_Y:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 348
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 350
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 351
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 352
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassFrame:Landroid/graphics/Picture;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 354
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    neg-float v3, p2

    iget v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->COMPASS_ROSE_CENTER_X:F

    iget v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->COMPASS_ROSE_CENTER_Y:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 355
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->COMPASS_ROSE_CENTER_X:F

    neg-float v3, v3

    iget v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->COMPASS_ROSE_CENTER_Y:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 356
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 358
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 359
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassRose:Landroid/graphics/Picture;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 360
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 361
    return-void
.end method

.method protected drawMyLocation(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Landroid/location/Location;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "lastFix"    # Landroid/location/Location;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 251
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 252
    .local v0, "pj":Lorg/osmdroid/views/Projection;
    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v3

    rsub-int/lit8 v2, v3, 0x16

    .line 254
    .local v2, "zoomDiff":I
    iget-boolean v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mDrawAccuracyEnabled:Z

    if-eqz v3, :cond_0

    .line 255
    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v4

    double-to-float v4, v4

    div-float v1, v3, v4

    .line 257
    .local v1, "radius":F
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 258
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 259
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    shr-int/2addr v3, v2

    int-to-float v3, v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    shr-int/2addr v4, v2

    int-to-float v4, v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 262
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 263
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 264
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    shr-int/2addr v3, v2

    int-to-float v3, v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    shr-int/2addr v4, v2

    int-to-float v4, v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 268
    .end local v1    # "radius":F
    :cond_0
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 269
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMatrixValues:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 282
    invoke-virtual {p3}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/location/Location;->getBearing()F

    move-result v4

    iget v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->DIRECTION_ARROW_CENTER_X:F

    iget v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->DIRECTION_ARROW_CENTER_Y:F

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 291
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    iget v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->DIRECTION_ARROW_CENTER_X:F

    neg-float v4, v4

    iget v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->DIRECTION_ARROW_CENTER_Y:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 292
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMatrixValues:[F

    aget v4, v4, v8

    div-float v4, v7, v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMatrixValues:[F

    aget v5, v5, v9

    div-float v5, v7, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 295
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    shr-int/2addr v4, v2

    int-to-float v4, v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    shr-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 296
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 305
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->PERSON_HOTSPOT:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    neg-float v4, v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->PERSON_HOTSPOT:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 299
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMatrixValues:[F

    aget v4, v4, v8

    div-float v4, v7, v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMatrixValues:[F

    aget v5, v5, v9

    div-float v5, v7, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 302
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    shr-int/2addr v4, v2

    int-to-float v4, v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    shr-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 303
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->PERSON_ICON:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public enableCompass()Z
    .locals 4

    .prologue
    .line 693
    const/4 v0, 0x1

    .line 694
    .local v0, "result":Z
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mSensorListener:Lorg/osmdroid/SensorEventListenerProxy;

    if-nez v1, :cond_0

    .line 695
    new-instance v1, Lorg/osmdroid/SensorEventListenerProxy;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-direct {v1, v2}, Lorg/osmdroid/SensorEventListenerProxy;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mSensorListener:Lorg/osmdroid/SensorEventListenerProxy;

    .line 696
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mSensorListener:Lorg/osmdroid/SensorEventListenerProxy;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v2, v3}, Lorg/osmdroid/SensorEventListenerProxy;->startListening(Landroid/hardware/SensorEventListener;II)Z

    move-result v0

    .line 701
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v1, :cond_1

    .line 702
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->invalidateCompass()V

    .line 705
    :cond_1
    return v0
.end method

.method public enableFollowLocation()V
    .locals 7

    .prologue
    const/16 v4, 0x16

    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mFollow:Z

    .line 587
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {v0}, Lorg/osmdroid/util/LocationUtils;->getLastKnownLocation(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    .line 589
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 591
    invoke-static {v4}, Lorg/osmdroid/util/TileSystem;->MapSize(I)I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 592
    .local v6, "worldSize_2":I
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    neg-int v1, v6

    neg-int v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 593
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    invoke-direct {v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 598
    .end local v6    # "worldSize_2":I
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 601
    :cond_1
    return-void
.end method

.method public enableMyLocation()Z
    .locals 8

    .prologue
    const/16 v4, 0x16

    .line 631
    const/4 v6, 0x1

    .line 633
    .local v6, "result":Z
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationListener:Lorg/osmdroid/LocationListenerProxy;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Lorg/osmdroid/LocationListenerProxy;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationManager:Landroid/location/LocationManager;

    invoke-direct {v0, v1}, Lorg/osmdroid/LocationListenerProxy;-><init>(Landroid/location/LocationManager;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationListener:Lorg/osmdroid/LocationListenerProxy;

    .line 635
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationListener:Lorg/osmdroid/LocationListenerProxy;

    iget-wide v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationUpdateMinTime:J

    iget v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationUpdateMinDistance:F

    invoke-virtual {v0, p0, v2, v3, v1}, Lorg/osmdroid/LocationListenerProxy;->startListening(Landroid/location/LocationListener;JF)Z

    move-result v6

    .line 640
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->isFollowLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {v0}, Lorg/osmdroid/util/LocationUtils;->getLastKnownLocation(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    .line 642
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 644
    invoke-static {v4}, Lorg/osmdroid/util/TileSystem;->MapSize(I)I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 645
    .local v7, "worldSize_2":I
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    neg-int v1, v7

    neg-int v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 646
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    invoke-direct {v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 651
    .end local v7    # "worldSize_2":I
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_2

    .line 652
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 655
    :cond_2
    return v6
.end method

.method public followLocation(Z)V
    .locals 0
    .param p1, "follow"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 572
    if-eqz p1, :cond_0

    .line 573
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->enableFollowLocation()V

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->disableFollowLocation()V

    goto :goto_0
.end method

.method public getLastFix()Landroid/location/Location;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getLocationUpdateMinDistance()F
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationUpdateMinDistance:F

    return v0
.end method

.method public getLocationUpdateMinTime()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationUpdateMinTime:J

    return-wide v0
.end method

.method public getMyLocation()Lorg/osmdroid/util/GeoPoint;
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 556
    const/4 v0, 0x0

    .line 558
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    invoke-direct {v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(Landroid/location/Location;)V

    goto :goto_0
.end method

.method protected getMyLocationDrawingBounds(ILandroid/location/Location;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 10
    .param p1, "zoomLevel"    # I
    .param p2, "lastFix"    # Landroid/location/Location;
    .param p3, "reuse"    # Landroid/graphics/Rect;

    .prologue
    .line 308
    if-nez p3, :cond_0

    .line 309
    new-instance p3, Landroid/graphics/Rect;

    .end local p3    # "reuse":Landroid/graphics/Rect;
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 311
    .restart local p3    # "reuse":Landroid/graphics/Rect;
    :cond_0
    rsub-int/lit8 v5, p1, 0x16

    .line 312
    .local v5, "zoomDiff":I
    iget-object v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    shr-int v0, v6, v5

    .line 313
    .local v0, "posX":I
    iget-object v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    shr-int v1, v6, v5

    .line 316
    .local v1, "posY":I
    invoke-virtual {p2}, Landroid/location/Location;->hasBearing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 319
    iget-object v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 322
    .local v4, "widestEdge":I
    add-int v6, v0, v4

    add-int v7, v1, v4

    invoke-virtual {p3, v0, v1, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 323
    neg-int v6, v4

    div-int/lit8 v6, v6, 0x2

    neg-int v7, v4

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 330
    .end local v4    # "widestEdge":I
    :goto_0
    iget-boolean v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mDrawAccuracyEnabled:Z

    if-eqz v6, :cond_1

    .line 331
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9, p1}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v8

    double-to-float v7, v8

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 332
    .local v2, "radius":I
    sub-int v6, v0, v2

    sub-int v7, v1, v2

    add-int v8, v0, v2

    add-int v9, v1, v2

    invoke-virtual {p3, v6, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 333
    iget-object v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 335
    .local v3, "strokeWidth":I
    neg-int v6, v3

    neg-int v7, v3

    invoke-virtual {p3, v6, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 338
    .end local v2    # "radius":I
    .end local v3    # "strokeWidth":I
    :cond_1
    iget-object v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v6}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v7}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 340
    return-object p3

    .line 325
    :cond_2
    iget-object v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->PERSON_ICON:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->PERSON_ICON:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {p3, v0, v1, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 326
    iget-object v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->PERSON_HOTSPOT:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    neg-float v6, v6

    float-to-int v6, v6

    iget-object v7, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->PERSON_HOTSPOT:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    neg-float v7, v7

    float-to-int v7, v7

    invoke-virtual {p3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 333
    .restart local v2    # "radius":I
    :cond_3
    iget-object v6, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    float-to-double v6, v6

    goto :goto_1
.end method

.method public getOrientation()F
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mAzimuth:F

    return v0
.end method

.method public isCompassEnabled()Z
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mSensorListener:Lorg/osmdroid/SensorEventListenerProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawAccuracyEnabled()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mDrawAccuracyEnabled:Z

    return v0
.end method

.method public isFollowLocationEnabled()Z
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mFollow:Z

    return v0
.end method

.method public isMyLocationEnabled()Z
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationListener:Lorg/osmdroid/LocationListenerProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mOptionsMenuEnabled:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 476
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v3, 0x0

    .line 505
    sget v0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->MENU_MY_LOCATION:I

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->my_location:Lorg/osmdroid/ResourceProxy$string;

    invoke-interface {v1, v2}, Lorg/osmdroid/ResourceProxy;->getString(Lorg/osmdroid/ResourceProxy$string;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v2, Lorg/osmdroid/ResourceProxy$bitmap;->ic_menu_mylocation:Lorg/osmdroid/ResourceProxy$bitmap;

    invoke-interface {v1, v2}, Lorg/osmdroid/ResourceProxy;->getDrawable(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 509
    sget v0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->MENU_COMPASS:I

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->compass:Lorg/osmdroid/ResourceProxy$string;

    invoke-interface {v1, v2}, Lorg/osmdroid/ResourceProxy;->getString(Lorg/osmdroid/ResourceProxy$string;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v2, Lorg/osmdroid/ResourceProxy$bitmap;->ic_menu_compass:Lorg/osmdroid/ResourceProxy$bitmap;

    invoke-interface {v1, v2}, Lorg/osmdroid/ResourceProxy;->getDrawable(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 513
    const/4 v0, 0x1

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 12
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/16 v4, 0x16

    const-wide v10, 0x412e848000000000L    # 1000000.0

    .line 391
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/util/NetworkLocationIgnorer;->shouldIgnore(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->logger:Lorg/slf4j/Logger;

    const-string v1, "Ignore temporary non-gps location"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 432
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v7, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    .line 398
    .local v7, "oldLocation":Landroid/location/Location;
    if-eqz v7, :cond_1

    .line 399
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMyLocationPreviousRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v7, v1}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->getMyLocationDrawingBounds(ILandroid/location/Location;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 403
    :cond_1
    iput-object p1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    .line 404
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 405
    invoke-static {v4}, Lorg/osmdroid/util/TileSystem;->MapSize(I)I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    .line 406
    .local v9, "worldSize_2":I
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    neg-int v1, v9

    neg-int v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 408
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mFollow:Z

    if-eqz v0, :cond_3

    .line 409
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v10

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->setLatitudeE6(I)V

    .line 410
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v10

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->setLongitudeE6(I)V

    .line 411
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 428
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mRunOnFirstFix:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    .line 429
    .local v8, "runnable":Ljava/lang/Runnable;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 413
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "runnable":Ljava/lang/Runnable;
    :cond_3
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMyLocationRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->getMyLocationDrawingBounds(ILandroid/location/Location;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 418
    if-eqz v7, :cond_4

    .line 419
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMyLocationRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMyLocationPreviousRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 423
    :cond_4
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMyLocationRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMyLocationRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMyLocationRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMyLocationRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/osmdroid/views/MapView;->postInvalidate(IIII)V

    goto :goto_1

    .line 431
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mRunOnFirstFix:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "pItem"    # Landroid/view/MenuItem;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v1, 0x1

    .line 525
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sub-int v0, v2, p2

    .line 526
    .local v0, "menuId":I
    sget v2, Lorg/osmdroid/views/overlay/MyLocationOverlay;->MENU_MY_LOCATION:I

    if-ne v0, v2, :cond_1

    .line 527
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->isMyLocationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->disableFollowLocation()V

    .line 529
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->disableMyLocation()V

    .line 543
    :goto_0
    return v1

    .line 531
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->enableFollowLocation()V

    .line 532
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->enableMyLocation()Z

    goto :goto_0

    .line 535
    :cond_1
    sget v2, Lorg/osmdroid/views/overlay/MyLocationOverlay;->MENU_COMPASS:I

    if-ne v0, v2, :cond_3

    .line 536
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->isCompassEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 537
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->disableCompass()V

    goto :goto_0

    .line 539
    :cond_2
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->enableCompass()Z

    goto :goto_0

    .line 543
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 436
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 440
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 480
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 481
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mAzimuth:F

    .line 483
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->invalidateCompass()V

    .line 486
    :cond_0
    return-void
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lorg/osmdroid/api/IMapView;)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snapPoint"    # Landroid/graphics/Point;
    .param p4, "mapView"    # Lorg/osmdroid/api/IMapView;

    .prologue
    const/4 v0, 0x0

    .line 449
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p3, Landroid/graphics/Point;->x:I

    .line 451
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p3, Landroid/graphics/Point;->y:I

    .line 452
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int v1, p1, v1

    int-to-double v2, v1

    .line 453
    .local v2, "xDiff":D
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mMapCoords:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v1, p2, v1

    int-to-double v4, v1

    .line 454
    .local v4, "yDiff":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4050000000000000L    # 64.0

    cmpg-double v1, v6, v8

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 460
    .end local v2    # "xDiff":D
    .end local v4    # "yDiff":D
    :cond_0
    return v0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 444
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 467
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MyLocationOverlay;->disableFollowLocation()V

    .line 470
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    return v0
.end method

.method public runOnFirstFix(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 744
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationListener:Lorg/osmdroid/LocationListenerProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 745
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 746
    const/4 v0, 0x1

    .line 749
    :goto_0
    return v0

    .line 748
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mRunOnFirstFix:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 749
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCompassCenter(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 224
    iput p1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassCenterX:F

    .line 225
    iput p2, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mCompassCenterY:F

    .line 226
    return-void
.end method

.method public setDrawAccuracyEnabled(Z)V
    .locals 0
    .param p1, "drawAccuracyEnabled"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mDrawAccuracyEnabled:Z

    .line 236
    return-void
.end method

.method public setLocationUpdateMinDistance(F)V
    .locals 0
    .param p1, "meters"    # F

    .prologue
    .line 220
    iput p1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationUpdateMinDistance:F

    .line 221
    return-void
.end method

.method public setLocationUpdateMinTime(J)V
    .locals 1
    .param p1, "milliSeconds"    # J

    .prologue
    .line 205
    iput-wide p1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mLocationUpdateMinTime:J

    .line 206
    return-void
.end method

.method public setOptionsMenuEnabled(Z)V
    .locals 0
    .param p1, "pOptionsMenuEnabled"    # Z

    .prologue
    .line 494
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/MyLocationOverlay;->mOptionsMenuEnabled:Z

    .line 495
    return-void
.end method
