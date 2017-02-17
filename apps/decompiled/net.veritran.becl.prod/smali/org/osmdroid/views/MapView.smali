.class public Lorg/osmdroid/views/MapView;
.super Landroid/view/ViewGroup;
.source "MapView.java"

# interfaces
.implements Lorg/osmdroid/api/IMapView;
.implements Lorg/osmdroid/views/util/constants/MapViewConstants;
.implements Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/MapView$1;,
        Lorg/osmdroid/views/MapView$LayoutParams;,
        Lorg/osmdroid/views/MapView$MapViewZoomListener;,
        Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;,
        Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/ViewGroup;",
        "Lorg/osmdroid/api/IMapView;",
        "Lorg/osmdroid/views/util/constants/MapViewConstants;",
        "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ZOOM_LOG_BASE_INV:D

.field private static final ZOOM_SENSITIVITY:D = 1.0

.field private static final logger:Lorg/slf4j/Logger;

.field private static sMotionEventTransformMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final mController:Lorg/osmdroid/views/MapController;

.field private mEnableZoomController:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mInvalidateRect:Landroid/graphics/Rect;

.field protected final mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mIsFlinging:Z

.field private final mLayoutPoint:Landroid/graphics/Point;

.field protected mListener:Lorg/osmdroid/events/MapListener;

.field private final mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

.field protected mMaximumZoomLevel:Ljava/lang/Integer;

.field protected mMinimumZoomLevel:Ljava/lang/Integer;

.field private mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/metalev/multitouch/controller/MultiTouchController",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mMultiTouchScale:F

.field protected mMultiTouchScalePoint:Landroid/graphics/PointF;

.field private final mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

.field private mProjection:Lorg/osmdroid/views/Projection;

.field private final mResourceProxy:Lorg/osmdroid/ResourceProxy;

.field final mRotateScaleMatrix:Landroid/graphics/Matrix;

.field final mRotateScalePoint:Landroid/graphics/Point;

.field protected mScrollableAreaBoundingBox:Lorg/osmdroid/util/BoundingBoxE6;

.field protected mScrollableAreaLimit:Landroid/graphics/Rect;

.field private final mScroller:Landroid/widget/Scroller;

.field protected final mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

.field private final mTileRequestCompleteHandler:Landroid/os/Handler;

.field private final mZoomController:Landroid/widget/ZoomButtonsController;

.field private mZoomLevel:I

.field private mapOrientation:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 68
    const-class v0, Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/views/MapView;->logger:Lorg/slf4j/Logger;

    .line 71
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sput-wide v0, Lorg/osmdroid/views/MapView;->ZOOM_LOG_BASE_INV:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileSizePixels"    # I

    .prologue
    .line 181
    new-instance v0, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-direct {v0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileSizePixels"    # I
    .param p3, "resourceProxy"    # Lorg/osmdroid/ResourceProxy;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileSizePixels"    # I
    .param p3, "resourceProxy"    # Lorg/osmdroid/ResourceProxy;
    .param p4, "aTileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .prologue
    .line 191
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileSizePixels"    # I
    .param p3, "resourceProxy"    # Lorg/osmdroid/ResourceProxy;
    .param p4, "aTileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p5, "tileRequestCompleteHandler"    # Landroid/os/Handler;

    .prologue
    .line 197
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;)V

    .line 199
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileSizePixels"    # I
    .param p3, "resourceProxy"    # Lorg/osmdroid/ResourceProxy;
    .param p4, "tileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p5, "tileRequestCompleteHandler"    # Landroid/os/Handler;
    .param p6, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 137
    invoke-direct {p0, p1, p6}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput v2, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    .line 93
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    iput-boolean v2, p0, Lorg/osmdroid/views/MapView;->mEnableZoomController:Z

    .line 107
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    .line 108
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    .line 113
    const/4 v1, 0x0

    iput v1, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    .line 114
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    .line 124
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    .line 125
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    .line 128
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    .line 138
    iput-object p3, p0, Lorg/osmdroid/views/MapView;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    .line 139
    new-instance v1, Lorg/osmdroid/views/MapController;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/MapController;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mController:Lorg/osmdroid/views/MapController;

    .line 140
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    .line 141
    invoke-static {p2}, Lmicrosoft/mappoint/TileSystem;->setTileSize(I)V

    .line 143
    if-nez p4, :cond_0

    .line 144
    invoke-direct {p0, p6}, Lorg/osmdroid/views/MapView;->getTileSourceFromAttributes(Landroid/util/AttributeSet;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v0

    .line 145
    .local v0, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p4, Lorg/osmdroid/tileprovider/MapTileProviderArray;

    .end local p4    # "tileProvider":Lorg/osmdroid/tileprovider/MapTileProviderBase;
    new-array v1, v2, [Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-direct {p4, v0, v4, v1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 150
    .end local v0    # "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .restart local p4    # "tileProvider":Lorg/osmdroid/tileprovider/MapTileProviderBase;
    :cond_0
    :goto_0
    if-nez p5, :cond_1

    new-instance p5, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;

    .end local p5    # "tileRequestCompleteHandler":Landroid/os/Handler;
    invoke-direct {p5, p0}, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;-><init>(Landroid/view/View;)V

    :cond_1
    iput-object p5, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    .line 153
    iput-object p4, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .line 154
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileRequestCompleteHandler(Landroid/os/Handler;)V

    .line 156
    new-instance v1, Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/views/overlay/TilesOverlay;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/ResourceProxy;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 157
    new-instance v1, Lorg/osmdroid/views/overlay/OverlayManager;

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-direct {v1, v2}, Lorg/osmdroid/views/overlay/OverlayManager;-><init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    .line 159
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    iput-object v4, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    .line 166
    :goto_1
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;

    invoke-direct {v2, p0, v4}, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;-><init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/MapView$1;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 167
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v2, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;

    invoke-direct {v2, p0, v4}, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;-><init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/MapView$1;)V

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 168
    return-void

    .line 145
    .restart local v0    # "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .restart local p5    # "tileRequestCompleteHandler":Landroid/os/Handler;
    :cond_2
    new-instance p4, Lorg/osmdroid/tileprovider/MapTileProviderBasic;

    .end local p4    # "tileProvider":Lorg/osmdroid/tileprovider/MapTileProviderBase;
    invoke-direct {p4, p1, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    goto :goto_0

    .line 162
    .end local v0    # "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .end local p5    # "tileRequestCompleteHandler":Landroid/os/Handler;
    .restart local p4    # "tileProvider":Lorg/osmdroid/tileprovider/MapTileProviderBase;
    :cond_3
    new-instance v1, Landroid/widget/ZoomButtonsController;

    invoke-direct {v1, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    .line 163
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    new-instance v2, Lorg/osmdroid/views/MapView$MapViewZoomListener;

    invoke-direct {v2, p0, v4}, Lorg/osmdroid/views/MapView$MapViewZoomListener;-><init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/MapView$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 174
    const/16 v2, 0x100

    new-instance v3, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-direct {v3, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;)V

    .line 175
    return-void
.end method

.method static synthetic access$300(Lorg/osmdroid/views/MapView;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$400(Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/osmdroid/views/MapView;->mEnableZoomController:Z

    return v0
.end method

.method static synthetic access$500(Lorg/osmdroid/views/MapView;)Landroid/widget/ZoomButtonsController;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$600(Lorg/osmdroid/views/MapView;)Lorg/metalev/multitouch/controller/MultiTouchController;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;

    return-object v0
.end method

.method private checkZoomButtons()V
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->canZoomIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 1035
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->canZoomOut()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    .line 1036
    return-void
.end method

.method private getTileSourceFromAttributes(Landroid/util/AttributeSet;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 9
    .param p1, "aAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x0

    .line 1049
    sget-object v3, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 1051
    .local v3, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    if-eqz p1, :cond_0

    .line 1052
    const-string v5, "tilesource"

    invoke-interface {p1, v8, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1053
    .local v4, "tileSourceAttr":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1055
    :try_start_0
    invoke-static {v4}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    .line 1056
    .local v1, "r":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    sget-object v5, Lorg/osmdroid/views/MapView;->logger:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using tile source specified in layout attributes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    move-object v3, v1

    .line 1064
    .end local v1    # "r":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .end local v4    # "tileSourceAttr":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    instance-of v5, v3, Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;

    if-eqz v5, :cond_1

    .line 1065
    const-string v5, "style"

    invoke-interface {p1, v8, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1066
    .local v2, "style":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1067
    sget-object v5, Lorg/osmdroid/views/MapView;->logger:Lorg/slf4j/Logger;

    const-string v6, "Using default style: 1"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1074
    .end local v2    # "style":Ljava/lang/String;
    :cond_1
    :goto_1
    sget-object v5, Lorg/osmdroid/views/MapView;->logger:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using tile source: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1075
    return-object v3

    .line 1058
    .restart local v4    # "tileSourceAttr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lorg/osmdroid/views/MapView;->logger:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid tile source specified in layout attributes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 1069
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "tileSourceAttr":Ljava/lang/String;
    .restart local v2    # "style":Ljava/lang/String;
    :cond_2
    sget-object v5, Lorg/osmdroid/views/MapView;->logger:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using style specified in layout attributes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    move-object v5, v3

    .line 1070
    check-cast v5, Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;

    invoke-interface {v5, v2}, Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;->setStyle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private invalidateMapCoordinates(IIIIZ)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "post"    # Z

    .prologue
    .line 578
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 579
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 581
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 582
    .local v0, "centerX":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 584
    .local v1, "centerY":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 585
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-static {v2, v0, v1, v3, v4}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 588
    :cond_0
    if-eqz p5, :cond_1

    .line 589
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, v2, v3, v4, v5}, Landroid/view/ViewGroup;->postInvalidate(IIII)V

    .line 593
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private rotateTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 781
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 810
    .end local p1    # "ev":Landroid/view/MotionEvent;
    :goto_0
    return-object p1

    .line 784
    .restart local p1    # "ev":Landroid/view/MotionEvent;
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 785
    .local v1, "rotatedEvent":Landroid/view/MotionEvent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_1

    .line 786
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    invoke-virtual {v2, v3, v4, v5}, Lorg/osmdroid/views/Projection;->unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 788
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    :goto_1
    move-object p1, v1

    .line 810
    goto :goto_0

    .line 792
    :cond_1
    :try_start_0
    sget-object v2, Lorg/osmdroid/views/MapView;->sMotionEventTransformMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    .line 793
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "transform"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Matrix;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/osmdroid/views/MapView;->sMotionEventTransformMethod:Ljava/lang/reflect/Method;

    .line 796
    :cond_2
    sget-object v2, Lorg/osmdroid/views/MapView;->sMotionEventTransformMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v5

    invoke-virtual {v5}, Lorg/osmdroid/views/Projection;->getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_1

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 800
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 801
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 802
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 804
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 805
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 806
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public canZoomIn()Z
    .locals 2

    .prologue
    .line 445
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v0

    .line 446
    .local v0, "maxZoomLevel":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    :goto_0
    if-lt v1, v0, :cond_1

    .line 447
    const/4 v1, 0x0

    .line 449
    :goto_1
    return v1

    .line 446
    :cond_0
    iget v1, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    goto :goto_0

    .line 449
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public canZoomOut()Z
    .locals 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()I

    move-result v0

    .line 454
    .local v0, "minZoomLevel":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    :goto_0
    if-gt v1, v0, :cond_1

    .line 455
    const/4 v1, 0x0

    .line 457
    :goto_1
    return v1

    .line 454
    :cond_0
    iget v1, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    goto :goto_0

    .line 457
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 615
    instance-of v0, p1, Lorg/osmdroid/views/MapView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    .line 820
    iget v0, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->setZoomLevel(I)I

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    .line 826
    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 828
    :cond_0
    return-void

    .line 823
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 897
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 900
    .local v0, "startMs":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 902
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 905
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 908
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    iget v4, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    iget-object v5, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 912
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 915
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 918
    new-instance v2, Lorg/osmdroid/views/Projection;

    invoke-direct {v2, p0}, Lorg/osmdroid/views/Projection;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v2, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    .line 924
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;)V

    .line 927
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 929
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 935
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 732
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, p0, p1}, Landroid/widget/ZoomButtonsController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 772
    :cond_0
    :goto_0
    return v1

    .line 737
    :cond_1
    invoke-direct {p0, p1}, Lorg/osmdroid/views/MapView;->rotateTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 740
    .local v0, "rotatedEvent":Landroid/view/MotionEvent;
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 765
    if-eq v0, p1, :cond_0

    .line 766
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 747
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 765
    if-eq v0, p1, :cond_0

    .line 766
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 751
    :cond_3
    :try_start_2
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;

    invoke-virtual {v2, p1}, Lorg/metalev/multitouch/controller/MultiTouchController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 765
    if-eq v0, p1, :cond_0

    .line 766
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 758
    :cond_4
    :try_start_3
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    .line 765
    if-eq v0, p1, :cond_0

    .line 766
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 765
    :cond_5
    if-eq v0, p1, :cond_6

    .line 766
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 772
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 765
    :catchall_0
    move-exception v1

    if-eq v0, p1, :cond_7

    .line 766
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_7
    throw v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x2

    .line 603
    new-instance v0, Lorg/osmdroid/views/MapView$LayoutParams;

    const/4 v3, 0x0

    const/16 v4, 0x8

    move v2, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(IILorg/osmdroid/api/IGeoPoint;III)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 609
    new-instance v0, Lorg/osmdroid/views/MapView$LayoutParams;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 620
    new-instance v0, Lorg/osmdroid/views/MapView$LayoutParams;

    invoke-direct {v0, p1}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBoxE6;
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    return-object v0
.end method

.method public getController()Lorg/osmdroid/api/IMapController;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mController:Lorg/osmdroid/views/MapController;

    return-object v0
.end method

.method public getDraggableObjectAtPoint(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)Ljava/lang/Object;
    .locals 2
    .param p1, "pt"    # Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .prologue
    .line 964
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    const/4 p0, 0x0

    .line 971
    .end local p0    # "this":Lorg/osmdroid/views/MapView;
    :goto_0
    return-object p0

    .line 969
    .restart local p0    # "this":Lorg/osmdroid/views/MapView;
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 970
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public getIntrinsicScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "reuse"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 261
    if-nez p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 262
    .local v0, "out":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 263
    return-object v0

    .end local v0    # "out":Landroid/graphics/Rect;
    :cond_0
    move-object v0, p1

    .line 261
    goto :goto_0
.end method

.method public getLatitudeSpan()I
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v0

    return v0
.end method

.method public getLongitudeSpan()I
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v0

    return v0
.end method

.method public getMapCenter()Lorg/osmdroid/api/IGeoPoint;
    .locals 4

    .prologue
    .line 499
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getMapOrientation()F
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    return v0
.end method

.method public getMaxZoomLevel()I
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMaximumZoomLevel:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getMaximumZoomLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMaximumZoomLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getMinZoomLevel()I
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMinimumZoomLevel:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getMinimumZoomLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMinimumZoomLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    return-object v0
.end method

.method public getOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    return-object v0
.end method

.method public getPositionAndScale(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)V
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "objPosAndScaleOut"    # Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 977
    const/4 v3, 0x1

    iget v4, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    move-object v0, p2

    move v2, v1

    move v6, v1

    move v7, v1

    move v8, v5

    move v9, v1

    invoke-virtual/range {v0 .. v9}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->set(FFZFZFFZF)V

    .line 978
    return-void
.end method

.method public bridge synthetic getProjection()Lorg/osmdroid/api/IProjection;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    return-object v0
.end method

.method public getProjection()Lorg/osmdroid/views/Projection;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lorg/osmdroid/views/Projection;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/Projection;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    return-object v0
.end method

.method public getResourceProxy()Lorg/osmdroid/ResourceProxy;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    return-object v0
.end method

.method public getScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "reuse"    # Landroid/graphics/Rect;

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/MapView;->getIntrinsicScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 253
    .local v0, "out":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v3

    invoke-static {v0, v1, v2, v3, v0}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 257
    :cond_0
    return-object v0
.end method

.method public getScrollableAreaLimit()Lorg/osmdroid/util/BoundingBoxE6;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaBoundingBox:Lorg/osmdroid/util/BoundingBoxE6;

    return-object v0
.end method

.method public getScroller()Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method public getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    return-object v0
.end method

.method public getTileRequestCompleteHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)I

    move-result v0

    return v0
.end method

.method public getZoomLevel(Z)I
    .locals 1
    .param p1, "aPending"    # Z

    .prologue
    .line 406
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 409
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    goto :goto_0
.end method

.method public invalidateMapCoordinates(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 570
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapView;->invalidateMapCoordinates(IIIIZ)V

    .line 571
    return-void
.end method

.method public invalidateMapCoordinates(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 566
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapView;->invalidateMapCoordinates(IIIIZ)V

    .line 567
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 695
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 696
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->detach()V

    .line 697
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 940
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->onDetach()V

    .line 941
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 942
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 701
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onKeyDown(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 703
    .local v0, "result":Z
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 708
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onKeyUp(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 710
    .local v0, "result":Z
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 634
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getChildCount()I

    move-result v5

    .line 636
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 637
    invoke-virtual {p0, v6}, Lorg/osmdroid/views/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 638
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 640
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lorg/osmdroid/views/MapView$LayoutParams;

    .line 641
    .local v7, "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 642
    .local v1, "childHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 643
    .local v4, "childWidth":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v10

    iget-object v11, v7, Lorg/osmdroid/views/MapView$LayoutParams;->geoPoint:Lorg/osmdroid/api/IGeoPoint;

    iget-object v12, p0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    invoke-virtual {v10, v11, v12}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 644
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v10

    iget-object v11, p0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget-object v12, p0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    iget-object v13, p0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    invoke-virtual {v10, v11, v12, v13}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 645
    iget-object v10, p0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    iget v8, v10, Landroid/graphics/Point;->x:I

    .line 646
    .local v8, "x":I
    iget-object v10, p0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    iget v9, v10, Landroid/graphics/Point;->y:I

    .line 647
    .local v9, "y":I
    move v2, v8

    .line 648
    .local v2, "childLeft":I
    move v3, v9

    .line 649
    .local v3, "childTop":I
    iget v10, v7, Lorg/osmdroid/views/MapView$LayoutParams;->alignment:I

    packed-switch v10, :pswitch_data_0

    .line 687
    :goto_1
    iget v10, v7, Lorg/osmdroid/views/MapView$LayoutParams;->offsetX:I

    add-int/2addr v2, v10

    .line 688
    iget v10, v7, Lorg/osmdroid/views/MapView$LayoutParams;->offsetY:I

    add-int/2addr v3, v10

    .line 689
    add-int v10, v2, v4

    add-int v11, v3, v1

    invoke-virtual {v0, v2, v3, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 636
    .end local v1    # "childHeight":I
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v4    # "childWidth":I
    .end local v7    # "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 651
    .restart local v1    # "childHeight":I
    .restart local v2    # "childLeft":I
    .restart local v3    # "childTop":I
    .restart local v4    # "childWidth":I
    .restart local v7    # "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    .restart local v8    # "x":I
    .restart local v9    # "y":I
    :pswitch_0
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int v2, v10, v8

    .line 652
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int v3, v10, v9

    .line 653
    goto :goto_1

    .line 655
    :pswitch_1
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v10, v8

    div-int/lit8 v11, v4, 0x2

    sub-int v2, v10, v11

    .line 656
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int v3, v10, v9

    .line 657
    goto :goto_1

    .line 659
    :pswitch_2
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v10, v8

    sub-int v2, v10, v4

    .line 660
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int v3, v10, v9

    .line 661
    goto :goto_1

    .line 663
    :pswitch_3
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int v2, v10, v8

    .line 664
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int/2addr v10, v9

    div-int/lit8 v11, v1, 0x2

    sub-int v3, v10, v11

    .line 665
    goto :goto_1

    .line 667
    :pswitch_4
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v10, v8

    div-int/lit8 v11, v4, 0x2

    sub-int v2, v10, v11

    .line 668
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int/2addr v10, v9

    div-int/lit8 v11, v1, 0x2

    sub-int v3, v10, v11

    .line 669
    goto :goto_1

    .line 671
    :pswitch_5
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v10, v8

    sub-int v2, v10, v4

    .line 672
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int/2addr v10, v9

    div-int/lit8 v11, v1, 0x2

    sub-int v3, v10, v11

    .line 673
    goto :goto_1

    .line 675
    :pswitch_6
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int v2, v10, v8

    .line 676
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int/2addr v10, v9

    sub-int v3, v10, v1

    .line 677
    goto :goto_1

    .line 679
    :pswitch_7
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v10, v8

    div-int/lit8 v11, v4, 0x2

    sub-int v2, v10, v11

    .line 680
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int/2addr v10, v9

    sub-int v3, v10, v1

    .line 681
    goto/16 :goto_1

    .line 683
    :pswitch_8
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v10, v8

    sub-int v2, v10, v4

    .line 684
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int/2addr v10, v9

    sub-int v3, v10, v1

    goto/16 :goto_1

    .line 692
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v4    # "childWidth":I
    .end local v7    # "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_1
    return-void

    .line 649
    :pswitch_data_0
    .packed-switch 0x1
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

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 626
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/MapView;->measureChildren(II)V

    .line 628
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 629
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 777
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v2, 0x41c80000    # 25.0f

    .line 716
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onTrackballEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    const/4 v0, 0x1

    .line 722
    :goto_0
    return v0

    .line 720
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapView;->scrollBy(II)V

    .line 722
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public postInvalidateMapCoordinates(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 574
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapView;->invalidateMapCoordinates(IIIIZ)V

    .line 575
    return-void
.end method

.method public scrollTo(II)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v12, 0x0

    .line 832
    invoke-virtual {p0, v12}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)I

    move-result v11

    invoke-static {v11}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v9

    .line 833
    .local v9, "worldSize":I
    :goto_0
    if-gez p1, :cond_0

    .line 834
    add-int/2addr p1, v9

    goto :goto_0

    .line 836
    :cond_0
    :goto_1
    if-lt p1, v9, :cond_1

    .line 837
    sub-int/2addr p1, v9

    goto :goto_1

    .line 839
    :cond_1
    :goto_2
    if-gez p2, :cond_2

    .line 840
    add-int/2addr p2, v9

    goto :goto_2

    .line 842
    :cond_2
    :goto_3
    if-lt p2, v9, :cond_3

    .line 843
    sub-int/2addr p2, v9

    goto :goto_3

    .line 846
    :cond_3
    iget-object v11, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    if-eqz v11, :cond_5

    .line 847
    invoke-virtual {p0, v12}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)I

    move-result v11

    rsub-int/lit8 v10, v11, 0x16

    .line 848
    .local v10, "zoomDiff":I
    iget-object v11, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    shr-int v4, v11, v10

    .line 849
    .local v4, "minX":I
    iget-object v11, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    shr-int v5, v11, v10

    .line 850
    .local v5, "minY":I
    iget-object v11, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    shr-int v2, v11, v10

    .line 851
    .local v2, "maxX":I
    iget-object v11, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    shr-int v3, v11, v10

    .line 853
    .local v3, "maxY":I
    sub-int v7, v2, v4

    .line 854
    .local v7, "scrollableWidth":I
    sub-int v6, v3, v5

    .line 855
    .local v6, "scrollableHeight":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v8

    .line 856
    .local v8, "width":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v1

    .line 859
    .local v1, "height":I
    if-gt v7, v8, :cond_8

    .line 860
    if-le p1, v4, :cond_7

    .line 861
    move p1, v4

    .line 869
    :cond_4
    :goto_4
    if-gt v6, v1, :cond_b

    .line 870
    if-le p2, v5, :cond_a

    .line 871
    move p2, v5

    .line 879
    .end local v1    # "height":I
    .end local v2    # "maxX":I
    .end local v3    # "maxY":I
    .end local v4    # "minX":I
    .end local v5    # "minY":I
    .end local v6    # "scrollableHeight":I
    .end local v7    # "scrollableWidth":I
    .end local v8    # "width":I
    .end local v10    # "zoomDiff":I
    :cond_5
    :goto_5
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 880
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    .line 883
    iget-object v11, p0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    if-eqz v11, :cond_6

    .line 884
    new-instance v0, Lorg/osmdroid/events/ScrollEvent;

    invoke-direct {v0, p0, p1, p2}, Lorg/osmdroid/events/ScrollEvent;-><init>(Lorg/osmdroid/views/MapView;II)V

    .line 885
    .local v0, "event":Lorg/osmdroid/events/ScrollEvent;
    iget-object v11, p0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    invoke-interface {v11, v0}, Lorg/osmdroid/events/MapListener;->onScroll(Lorg/osmdroid/events/ScrollEvent;)Z

    .line 887
    .end local v0    # "event":Lorg/osmdroid/events/ScrollEvent;
    :cond_6
    return-void

    .line 862
    .restart local v1    # "height":I
    .restart local v2    # "maxX":I
    .restart local v3    # "maxY":I
    .restart local v4    # "minX":I
    .restart local v5    # "minY":I
    .restart local v6    # "scrollableHeight":I
    .restart local v7    # "scrollableWidth":I
    .restart local v8    # "width":I
    .restart local v10    # "zoomDiff":I
    :cond_7
    add-int v11, p1, v8

    if-ge v11, v2, :cond_4

    .line 863
    sub-int p1, v2, v8

    goto :goto_4

    .line 864
    :cond_8
    if-ge p1, v4, :cond_9

    .line 865
    move p1, v4

    goto :goto_4

    .line 866
    :cond_9
    add-int v11, p1, v8

    if-le v11, v2, :cond_4

    .line 867
    sub-int p1, v2, v8

    goto :goto_4

    .line 872
    :cond_a
    add-int v11, p2, v1

    if-ge v11, v3, :cond_5

    .line 873
    sub-int p2, v3, v1

    goto :goto_5

    .line 874
    :cond_b
    add-int/lit8 v11, p2, 0x0

    if-ge v11, v5, :cond_c

    .line 875
    add-int/lit8 p2, v5, 0x0

    goto :goto_5

    .line 876
    :cond_c
    add-int v11, p2, v1

    if-le v11, v3, :cond_5

    .line 877
    sub-int p2, v3, v1

    goto :goto_5
.end method

.method public selectObject(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "pt"    # Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 984
    if-nez p1, :cond_1

    iget v4, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1

    .line 985
    iget v4, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sget-wide v6, Lorg/osmdroid/views/MapView;->ZOOM_LOG_BASE_INV:D

    mul-double/2addr v4, v6

    double-to-float v1, v4

    .line 986
    .local v1, "scaleDiffFloat":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 989
    .local v2, "scaleDiffInt":I
    if-eqz v2, :cond_0

    .line 990
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 991
    .local v3, "screenRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget-object v7, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    invoke-virtual {v4, v5, v6, v7}, Lorg/osmdroid/views/Projection;->unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 993
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v4

    iget-object v5, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 995
    .local v0, "p":Landroid/graphics/Point;
    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    .line 999
    .end local v0    # "p":Landroid/graphics/Point;
    .end local v3    # "screenRect":Landroid/graphics/Rect;
    :cond_0
    iget v4, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lorg/osmdroid/views/MapView;->setZoomLevel(I)I

    .line 1003
    .end local v1    # "scaleDiffFloat":F
    .end local v2    # "scaleDiffInt":I
    :cond_1
    iput v8, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    .line 1004
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "pColor"    # I

    .prologue
    .line 891
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;->setLoadingBackgroundColor(I)V

    .line 892
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 893
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 1039
    iput-boolean p1, p0, Lorg/osmdroid/views/MapView;->mEnableZoomController:Z

    .line 1040
    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->checkZoomButtons()V

    .line 1041
    return-void
.end method

.method setMapCenter(II)V
    .locals 1
    .param p1, "aLatitudeE6"    # I
    .param p2, "aLongitudeE6"    # I

    .prologue
    .line 290
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->setMapCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 291
    return-void
.end method

.method setMapCenter(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 1
    .param p1, "aCenter"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 283
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 284
    return-void
.end method

.method public setMapListener(Lorg/osmdroid/events/MapListener;)V
    .locals 0
    .param p1, "ml"    # Lorg/osmdroid/events/MapListener;

    .prologue
    .line 1026
    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    .line 1027
    return-void
.end method

.method public setMapOrientation(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 507
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p1, v0

    iput v0, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    .line 508
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 509
    return-void
.end method

.method public setMaxZoomLevel(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "zoomLevel"    # Ljava/lang/Integer;

    .prologue
    .line 441
    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mMaximumZoomLevel:Ljava/lang/Integer;

    .line 442
    return-void
.end method

.method public setMinZoomLevel(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "zoomLevel"    # Ljava/lang/Integer;

    .prologue
    .line 433
    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mMinimumZoomLevel:Ljava/lang/Integer;

    .line 434
    return-void
.end method

.method public setMultiTouchControls(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1044
    if-eqz p1, :cond_0

    new-instance v0, Lorg/metalev/multitouch/controller/MultiTouchController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/metalev/multitouch/controller/MultiTouchController;-><init>(Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;Z)V

    :goto_0
    iput-object v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;

    .line 1045
    return-void

    .line 1044
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPositionAndScale(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "aNewObjPosAndScale"    # Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;
    .param p3, "aTouchPoint"    # Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1009
    invoke-virtual {p2}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->getScale()F

    move-result v0

    .line 1011
    .local v0, "multiTouchScale":F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->canZoomIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1012
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1014
    :cond_0
    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->canZoomOut()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1015
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1017
    :cond_1
    iput v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    .line 1018
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1019
    const/4 v1, 0x1

    return v1
.end method

.method public setScrollableAreaLimit(Lorg/osmdroid/util/BoundingBoxE6;)V
    .locals 10
    .param p1, "boundingBox"    # Lorg/osmdroid/util/BoundingBoxE6;

    .prologue
    const/16 v4, 0x16

    const/4 v5, 0x0

    const-wide v8, 0x412e848000000000L    # 1000000.0

    .line 543
    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaBoundingBox:Lorg/osmdroid/util/BoundingBoxE6;

    .line 546
    if-nez p1, :cond_0

    .line 547
    iput-object v5, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    .line 559
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatNorthE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v8

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLonWestE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v8

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v7

    .line 556
    .local v7, "upperLeft":Landroid/graphics/Point;
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatSouthE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v8

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLonEastE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v8

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 558
    .local v6, "lowerRight":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    iget v3, v6, Landroid/graphics/Point;->x:I

    iget v4, v6, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p1, "aTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 294
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 295
    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileSizePixels()I

    move-result v0

    invoke-static {v0}, Lmicrosoft/mappoint/TileSystem;->setTileSize(I)V

    .line 296
    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->checkZoomButtons()V

    .line 297
    iget v0, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->setZoomLevel(I)I

    .line 298
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 299
    return-void
.end method

.method public setUseDataConnection(Z)V
    .locals 1
    .param p1, "aMode"    # Z

    .prologue
    .line 530
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;->setUseDataConnection(Z)V

    .line 531
    return-void
.end method

.method setZoomLevel(I)I
    .locals 13
    .param p1, "aZoomLevel"    # I

    .prologue
    const/4 v12, 0x0

    .line 306
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()I

    move-result v5

    .line 307
    .local v5, "minZoomLevel":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v4

    .line 309
    .local v4, "maxZoomLevel":I
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 310
    .local v6, "newZoomLevel":I
    iget v1, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    .line 312
    .local v1, "curZoomLevel":I
    if-eq v6, v1, :cond_0

    .line 313
    iget-object v9, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 314
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    .line 318
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    .line 320
    .local v0, "centerGeoPoint":Lorg/osmdroid/api/IGeoPoint;
    iput v6, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    .line 321
    iput-object v12, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    .line 322
    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->checkZoomButtons()V

    .line 324
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v9

    invoke-interface {v9, v0}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 327
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 328
    .local v8, "snapPoint":Landroid/graphics/Point;
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v7

    .line 329
    .local v7, "pj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v9

    iget-object v10, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    float-to-int v10, v10

    iget-object v11, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    float-to-int v11, v11

    invoke-virtual {v9, v10, v11, v8, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onSnapToItem(IILandroid/graphics/Point;Lorg/osmdroid/api/IMapView;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 331
    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v10, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v9, v10, v12}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v3

    .line 332
    .local v3, "geoPoint":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v9

    invoke-interface {v9, v3}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 335
    .end local v3    # "geoPoint":Lorg/osmdroid/api/IGeoPoint;
    :cond_1
    iget-object v9, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {p0, v12}, Lorg/osmdroid/views/MapView;->getScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v7, v6, v1, v10}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->rescaleCache(Lorg/osmdroid/views/Projection;IILandroid/graphics/Rect;)V

    .line 338
    if-eq v6, v1, :cond_2

    iget-object v9, p0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    if-eqz v9, :cond_2

    .line 339
    new-instance v2, Lorg/osmdroid/events/ZoomEvent;

    invoke-direct {v2, p0, v6}, Lorg/osmdroid/events/ZoomEvent;-><init>(Lorg/osmdroid/views/MapView;I)V

    .line 340
    .local v2, "event":Lorg/osmdroid/events/ZoomEvent;
    iget-object v9, p0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    invoke-interface {v9, v2}, Lorg/osmdroid/events/MapListener;->onZoom(Lorg/osmdroid/events/ZoomEvent;)Z

    .line 343
    .end local v2    # "event":Lorg/osmdroid/events/ZoomEvent;
    :cond_2
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->requestLayout()V

    .line 344
    iget v9, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    return v9
.end method

.method public useDataConnection()Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->useDataConnection()Z

    move-result v0

    return v0
.end method

.method zoomIn()Z
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomIn()Z

    move-result v0

    return v0
.end method

.method zoomInFixing(II)Z
    .locals 1
    .param p1, "xPixel"    # I
    .param p2, "yPixel"    # I

    .prologue
    .line 473
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/api/IMapController;->zoomInFixing(II)Z

    move-result v0

    return v0
.end method

.method zoomInFixing(Lorg/osmdroid/api/IGeoPoint;)Z
    .locals 4
    .param p1, "point"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 468
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 469
    .local v0, "coords":Landroid/graphics/Point;
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3}, Lorg/osmdroid/api/IMapController;->zoomInFixing(II)Z

    move-result v1

    return v1
.end method

.method zoomOut()Z
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomOut()Z

    move-result v0

    return v0
.end method

.method zoomOutFixing(II)Z
    .locals 1
    .param p1, "xPixel"    # I
    .param p2, "yPixel"    # I

    .prologue
    .line 489
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/api/IMapController;->zoomOutFixing(II)Z

    move-result v0

    return v0
.end method

.method zoomOutFixing(Lorg/osmdroid/api/IGeoPoint;)Z
    .locals 3
    .param p1, "point"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 484
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 485
    .local v0, "coords":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Lorg/osmdroid/views/MapView;->zoomOutFixing(II)Z

    move-result v1

    return v1
.end method

.method public zoomToBoundingBox(Lorg/osmdroid/util/BoundingBoxE6;)V
    .locals 18
    .param p1, "boundingBox"    # Lorg/osmdroid/util/BoundingBoxE6;

    .prologue
    .line 354
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v2

    .line 357
    .local v2, "currentBox":Lorg/osmdroid/util/BoundingBoxE6;
    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v12

    if-ne v3, v12, :cond_0

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v3

    int-to-double v4, v3

    .line 361
    .local v4, "maxZoomLatitudeSpan":D
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v3

    int-to-double v12, v3

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v3

    int-to-double v14, v3

    div-double/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    sub-double v8, v12, v14

    .line 367
    .local v8, "requiredLatitudeZoom":D
    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v12

    if-ne v3, v12, :cond_1

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v3

    int-to-double v6, v3

    .line 371
    .local v6, "maxZoomLongitudeSpan":D
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v3

    int-to-double v12, v3

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v3

    int-to-double v14, v3

    div-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    sub-double v10, v12, v14

    .line 377
    .local v10, "requiredLongitudeZoom":D
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v3

    cmpg-double v12, v8, v10

    if-gez v12, :cond_2

    .end local v8    # "requiredLatitudeZoom":D
    :goto_2
    double-to-int v12, v8

    invoke-interface {v3, v12}, Lorg/osmdroid/api/IMapController;->setZoom(I)I

    .line 381
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v3

    new-instance v12, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/BoundingBoxE6;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v13

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/BoundingBoxE6;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v14

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v14

    invoke-direct {v12, v13, v14}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-interface {v3, v12}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 384
    return-void

    .line 357
    .end local v4    # "maxZoomLatitudeSpan":D
    .end local v6    # "maxZoomLongitudeSpan":D
    .end local v10    # "requiredLongitudeZoom":D
    :cond_0
    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v3

    int-to-double v12, v3

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    move/from16 v16, v0

    sub-int v3, v3, v16

    int-to-double v0, v3

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double v4, v12, v14

    goto/16 :goto_0

    .line 367
    .restart local v4    # "maxZoomLatitudeSpan":D
    .restart local v8    # "requiredLatitudeZoom":D
    :cond_1
    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v3

    int-to-double v12, v3

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    move/from16 v16, v0

    sub-int v3, v3, v16

    int-to-double v0, v3

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double v6, v12, v14

    goto :goto_1

    .restart local v6    # "maxZoomLongitudeSpan":D
    .restart local v10    # "requiredLongitudeZoom":D
    :cond_2
    move-wide v8, v10

    .line 377
    goto :goto_2
.end method
