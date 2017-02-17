.class public Lorg/osmdroid/views/MapView;
.super Landroid/view/ViewGroup;
.source "MapView.java"

# interfaces
.implements Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/MapView$LayoutParams;,
        Lorg/osmdroid/views/MapView$MapViewZoomListener;,
        Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;,
        Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;,
        Lorg/osmdroid/views/MapView$Projection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/ViewGroup;",
        "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ZOOM_LOG_BASE_INV:D

.field private static final logger:Lorg/slf4j/Logger;

.field private static sMotionEventTransformMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final mController:Lorg/osmdroid/views/MapController;

.field private mEnableZoomController:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mInvalidateRect:Landroid/graphics/Rect;

.field private final mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mListener:Lorg/osmdroid/events/MapListener;

.field private final mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

.field private final mMatrix:Landroid/graphics/Matrix;

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

.field private mMultiTouchScale:F

.field private mMultiTouchScalePoint:Landroid/graphics/PointF;

.field private final mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

.field private final mPoint:Landroid/graphics/Point;

.field private mProjection:Lorg/osmdroid/views/MapView$Projection;

.field private final mResourceProxy:Lorg/osmdroid/ResourceProxy;

.field private final mRotateMatrix:Landroid/graphics/Matrix;

.field private final mRotatePoints:[F

.field protected mScrollableAreaLimit:Landroid/graphics/Rect;

.field private final mScroller:Landroid/widget/Scroller;

.field private final mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

.field private final mTileRequestCompleteHandler:Landroid/os/Handler;

.field private final mZoomController:Lnet/wigle/wigleandroid/ZoomButtonsController;

.field private final mZoomInAnimation:Landroid/view/animation/ScaleAnimation;

.field private mZoomLevel:I

.field private final mZoomOutAnimation:Landroid/view/animation/ScaleAnimation;

.field private mapOrientation:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 70
    const-class v0, Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/views/MapView;->logger:Lorg/slf4j/Logger;

    .line 73
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
    .line 186
    new-instance v0, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-direct {v0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileSizePixels"    # I
    .param p3, "resourceProxy"    # Lorg/osmdroid/ResourceProxy;

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileSizePixels"    # I
    .param p3, "resourceProxy"    # Lorg/osmdroid/ResourceProxy;
    .param p4, "aTileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .prologue
    .line 196
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;)V

    .line 197
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
    .line 202
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;)V

    .line 204
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileSizePixels"    # I
    .param p3, "resourceProxy"    # Lorg/osmdroid/ResourceProxy;
    .param p4, "tileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p5, "tileRequestCompleteHandler"    # Landroid/os/Handler;
    .param p6, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 142
    move-object/from16 v0, p6

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    .line 93
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/osmdroid/views/MapView;->mEnableZoomController:Z

    .line 112
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    .line 113
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    .line 118
    const/4 v1, 0x0

    iput v1, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    .line 119
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 120
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mRotatePoints:[F

    .line 121
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    .line 127
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mMatrix:Landroid/graphics/Matrix;

    .line 133
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mPoint:Landroid/graphics/Point;

    .line 143
    iput-object p3, p0, Lorg/osmdroid/views/MapView;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    .line 144
    new-instance v1, Lorg/osmdroid/views/MapController;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/MapController;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mController:Lorg/osmdroid/views/MapController;

    .line 145
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    .line 146
    invoke-static {p2}, Lmicrosoft/mappoint/TileSystem;->setTileSize(I)V

    .line 148
    if-nez p4, :cond_0

    .line 149
    invoke-static/range {p6 .. p6}, Lorg/osmdroid/views/MapView;->getTileSourceFromAttributes(Landroid/util/AttributeSet;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v10

    .line 150
    .local v10, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    new-instance p4, Lorg/osmdroid/tileprovider/MapTileProviderBasic;

    .end local p4    # "tileProvider":Lorg/osmdroid/tileprovider/MapTileProviderBase;
    invoke-direct {p4, p1, v10}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 153
    .end local v10    # "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .restart local p4    # "tileProvider":Lorg/osmdroid/tileprovider/MapTileProviderBase;
    :cond_0
    if-nez p5, :cond_1

    new-instance p5, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;

    .end local p5    # "tileRequestCompleteHandler":Landroid/os/Handler;
    move-object/from16 v0, p5

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;-><init>(Landroid/view/View;)V

    :cond_1
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    .line 155
    iput-object p4, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .line 156
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileRequestCompleteHandler(Landroid/os/Handler;)V

    .line 158
    new-instance v1, Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/views/overlay/TilesOverlay;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/ResourceProxy;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 159
    new-instance v1, Lorg/osmdroid/views/overlay/OverlayManager;

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-direct {v1, v2}, Lorg/osmdroid/views/overlay/OverlayManager;-><init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    .line 161
    new-instance v1, Lnet/wigle/wigleandroid/ZoomButtonsController;

    invoke-direct {v1, p0}, Lnet/wigle/wigleandroid/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mZoomController:Lnet/wigle/wigleandroid/ZoomButtonsController;

    .line 162
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mZoomController:Lnet/wigle/wigleandroid/ZoomButtonsController;

    new-instance v2, Lorg/osmdroid/views/MapView$MapViewZoomListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/osmdroid/views/MapView$MapViewZoomListener;-><init>(Lorg/osmdroid/views/MapView;B)V

    invoke-virtual {v1, v2}, Lnet/wigle/wigleandroid/ZoomButtonsController;->setOnZoomListener(Lnet/wigle/wigleandroid/ZoomButtonsController$OnZoomListener;)V

    .line 164
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mZoomInAnimation:Landroid/view/animation/ScaleAnimation;

    .line 166
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mZoomOutAnimation:Landroid/view/animation/ScaleAnimation;

    .line 168
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mZoomInAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 169
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mZoomOutAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 171
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;-><init>(Lorg/osmdroid/views/MapView;B)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 172
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v2, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;-><init>(Lorg/osmdroid/views/MapView;B)V

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 179
    const/16 v2, 0x100

    new-instance v3, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-direct {v3, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;)V

    .line 180
    return-void
.end method

.method static synthetic access$400(Lorg/osmdroid/views/MapView;)I
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 63
    iget v0, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    return v0
.end method

.method static synthetic access$500(Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/osmdroid/views/MapView;->mEnableZoomController:Z

    return v0
.end method

.method static synthetic access$600(Lorg/osmdroid/views/MapView;)Lnet/wigle/wigleandroid/ZoomButtonsController;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Lnet/wigle/wigleandroid/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$700(Lorg/osmdroid/views/MapView;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$800(Lorg/osmdroid/views/MapView;)Lorg/metalev/multitouch/controller/MultiTouchController;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;

    return-object v0
.end method

.method private canZoomIn()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 487
    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v0

    .line 488
    .local v0, "maxZoomLevel":I
    iget v3, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    if-lt v3, v0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v1

    .line 491
    :cond_1
    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lt v3, v0, :cond_2

    move v3, v2

    :goto_1
    and-int/2addr v3, v4

    if-nez v3, :cond_0

    move v1, v2

    .line 494
    goto :goto_0

    :cond_2
    move v3, v1

    .line 491
    goto :goto_1
.end method

.method private canZoomOut()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 498
    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()I

    move-result v0

    .line 499
    .local v0, "minZoomLevel":I
    iget v2, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    if-gt v2, v0, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v1

    .line 502
    :cond_1
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 505
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkZoomButtons()V
    .locals 2

    .prologue
    .line 1186
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Lnet/wigle/wigleandroid/ZoomButtonsController;

    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->canZoomIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/wigle/wigleandroid/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 1187
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Lnet/wigle/wigleandroid/ZoomButtonsController;

    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->canZoomOut()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/wigle/wigleandroid/ZoomButtonsController;->setZoomOutEnabled(Z)V

    .line 1188
    return-void
.end method

.method private getMaxZoomLevel()I
    .locals 1

    .prologue
    .line 467
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

.method private getMinZoomLevel()I
    .locals 1

    .prologue
    .line 459
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

.method private static getTileSourceFromAttributes(Landroid/util/AttributeSet;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 8
    .param p0, "aAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x0

    .line 1201
    sget-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 1203
    .local v2, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    if-eqz p0, :cond_0

    .line 1204
    const-string v4, "tilesource"

    invoke-interface {p0, v7, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1205
    .local v3, "tileSourceAttr":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1207
    :try_start_0
    invoke-static {v3}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v0

    .line 1208
    .local v0, "r":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    sget-object v4, Lorg/osmdroid/views/MapView;->logger:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Using tile source specified in layout attributes: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    move-object v2, v0

    .line 1216
    .end local v0    # "r":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .end local v3    # "tileSourceAttr":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    instance-of v4, v2, Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;

    if-eqz v4, :cond_1

    .line 1217
    const-string v4, "style"

    invoke-interface {p0, v7, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1218
    .local v1, "style":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1219
    sget-object v4, Lorg/osmdroid/views/MapView;->logger:Lorg/slf4j/Logger;

    const-string v5, "Using default style: 1"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1226
    .end local v1    # "style":Ljava/lang/String;
    :cond_1
    :goto_1
    sget-object v4, Lorg/osmdroid/views/MapView;->logger:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Using tile source: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1227
    return-object v2

    .line 1211
    .restart local v3    # "tileSourceAttr":Ljava/lang/String;
    :catch_0
    move-exception v4

    sget-object v4, Lorg/osmdroid/views/MapView;->logger:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid tile souce specified in layout attributes: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 1221
    .end local v3    # "tileSourceAttr":Ljava/lang/String;
    .restart local v1    # "style":Ljava/lang/String;
    :cond_2
    sget-object v4, Lorg/osmdroid/views/MapView;->logger:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Using style specified in layout attributes: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    move-object v4, v2

    .line 1222
    check-cast v4, Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;

    invoke-interface {v4, v1}, Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;->setStyle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private rotateTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 918
    iget v1, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 949
    .end local p1    # "ev":Landroid/view/MotionEvent;
    :goto_0
    return-object p1

    .line 921
    .restart local p1    # "ev":Landroid/view/MotionEvent;
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    neg-float v2, v2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 923
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 924
    .local v0, "rotatedEvent":Landroid/view/MotionEvent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 925
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mRotatePoints:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v1, v5

    .line 926
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mRotatePoints:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v1, v6

    .line 927
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mRotatePoints:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 928
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mRotatePoints:[F

    aget v1, v1, v5

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mRotatePoints:[F

    aget v2, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    :goto_1
    move-object p1, v0

    .line 949
    goto :goto_0

    .line 932
    :cond_1
    :try_start_0
    sget-object v1, Lorg/osmdroid/views/MapView;->sMotionEventTransformMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 933
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "transform"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/osmdroid/views/MapView;->sMotionEventTransformMethod:Ljava/lang/reflect/Method;

    .line 936
    :cond_2
    sget-object v1, Lorg/osmdroid/views/MapView;->sMotionEventTransformMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/osmdroid/views/MapView;->mRotateMatrix:Landroid/graphics/Matrix;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_1

    .line 937
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 939
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 941
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 943
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 945
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 691
    instance-of v0, p1, Lorg/osmdroid/views/MapView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    .line 959
    iget v0, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->setZoomLevel(I)I

    .line 963
    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 966
    :cond_0
    return-void

    .line 961
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
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1027
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1029
    new-instance v0, Lorg/osmdroid/views/MapView$Projection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/osmdroid/views/MapView$Projection;-><init>(Lorg/osmdroid/views/MapView;B)V

    iput-object v0, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/MapView$Projection;

    .line 1032
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1034
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1035
    iget v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    iget v1, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1039
    iget v0, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/MapView$Projection;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView$Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/MapView$Projection;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView$Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1046
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-virtual {v0, p1, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;)V

    .line 1049
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1051
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1057
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 879
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mZoomController:Lnet/wigle/wigleandroid/ZoomButtonsController;

    invoke-virtual {v2}, Lnet/wigle/wigleandroid/ZoomButtonsController;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mZoomController:Lnet/wigle/wigleandroid/ZoomButtonsController;

    invoke-virtual {v2, p0, p1}, Lnet/wigle/wigleandroid/ZoomButtonsController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 914
    :cond_0
    :goto_0
    return v1

    .line 884
    :cond_1
    invoke-direct {p0, p1}, Lorg/osmdroid/views/MapView;->rotateTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 886
    .local v0, "rotatedEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-virtual {v2, v0}, Lorg/osmdroid/views/overlay/OverlayManager;->onTouchEvent$4682072e(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 890
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;

    invoke-virtual {v2, p1}, Lorg/metalev/multitouch/controller/MultiTouchController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 897
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 904
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 914
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 679
    new-instance v0, Lorg/osmdroid/views/MapView$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(Lorg/osmdroid/api/IGeoPoint;II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 685
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
    .line 696
    new-instance v0, Lorg/osmdroid/views/MapView$LayoutParams;

    invoke-direct {v0, p1}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final getBoundingBox()Lorg/osmdroid/util/BoundingBoxE6;
    .locals 5

    .prologue
    .line 250
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    iget v0, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    invoke-static {v0}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScreenRect$323c19cd()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Rect;->offset(II)V

    iget v0, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    invoke-static {v0, v2, v3}, Lmicrosoft/mappoint/TileSystem;->PixelXYToLatLong$1ef21a48(III)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    invoke-static {v2, v1, v3}, Lmicrosoft/mappoint/TileSystem;->PixelXYToLatLong$1ef21a48(III)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    new-instance v2, Lorg/osmdroid/util/BoundingBoxE6;

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v3

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v0

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v4

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-direct {v2, v3, v0, v4, v1}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(IIII)V

    return-object v2
.end method

.method public final getController()Lorg/osmdroid/views/MapController;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mController:Lorg/osmdroid/views/MapController;

    return-object v0
.end method

.method public final getDraggableObjectAtPoint(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)Ljava/lang/Object;
    .locals 3
    .param p1, "pt"    # Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .prologue
    .line 1118
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getX()F

    move-result v1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 1119
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getY()F

    move-result v1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 1120
    return-object p0
.end method

.method public final getIntrinsicScreenRect$323c19cd()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 285
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 286
    .local v0, "out":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 288
    return-object v0
.end method

.method public final getMapCenter()Lorg/osmdroid/api/IGeoPoint;
    .locals 5

    .prologue
    .line 575
    iget v2, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    invoke-static {v2}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 576
    .local v1, "world_2":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScreenRect$323c19cd()Landroid/graphics/Rect;

    move-result-object v0

    .line 577
    .local v0, "screenRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 578
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget v4, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    invoke-static {v2, v3, v4}, Lmicrosoft/mappoint/TileSystem;->PixelXYToLatLong$1ef21a48(III)Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    return-object v2
.end method

.method public final getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    return-object v0
.end method

.method public final getOverlays()Ljava/util/List;
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
    .line 220
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    return-object v0
.end method

.method public final getPositionAndScale$71d97c1e(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)V
    .locals 1
    .param p1, "objPosAndScaleOut"    # Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    .prologue
    .line 1125
    iget v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    invoke-virtual {p1, v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->set$5269647f(F)V

    .line 1126
    return-void
.end method

.method public final getProjection()Lorg/osmdroid/views/MapView$Projection;
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/MapView$Projection;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lorg/osmdroid/views/MapView$Projection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/osmdroid/views/MapView$Projection;-><init>(Lorg/osmdroid/views/MapView;B)V

    iput-object v0, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/MapView$Projection;

    .line 304
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/MapView$Projection;

    return-object v0
.end method

.method public final getScreenRect$323c19cd()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 272
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getIntrinsicScreenRect$323c19cd()Landroid/graphics/Rect;

    move-result-object v2

    .line 273
    .local v2, "out":Landroid/graphics/Rect;
    iget v3, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget v3, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 276
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v0

    .line 277
    .local v0, "centerX":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v1

    .line 278
    .local v1, "centerY":I
    iget v3, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    invoke-static {v2, v0, v1, v3, v2}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 281
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    :cond_0
    return-object v2
.end method

.method public final getScroller()Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method public final getZoomLevel()I
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)I

    move-result v0

    return v0
.end method

.method public final getZoomLevel(Z)I
    .locals 1
    .param p1, "aPending"    # Z

    .prologue
    .line 448
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 451
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1097
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->clearAnimation()V

    .line 1098
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->setZoomLevel(I)I

    .line 1099
    invoke-super {p0}, Landroid/view/ViewGroup;->onAnimationEnd()V

    .line 1100
    return-void
.end method

.method protected onAnimationStart()V
    .locals 2

    .prologue
    .line 1090
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1091
    invoke-super {p0}, Landroid/view/ViewGroup;->onAnimationStart()V

    .line 1092
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1079
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Lnet/wigle/wigleandroid/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/wigle/wigleandroid/ZoomButtonsController;->setVisible(Z)V

    .line 1080
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayManager;->onDetach$2087f92b()V

    .line 1081
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1082
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 848
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayManager;->onKeyDown$4aafb6b2()Z

    .line 850
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 855
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayManager;->onKeyUp$4aafb6b2()Z

    .line 857
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 783
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getChildCount()I

    move-result v5

    .line 785
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 786
    invoke-virtual {p0, v6}, Lorg/osmdroid/views/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 787
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 789
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lorg/osmdroid/views/MapView$LayoutParams;

    .line 790
    .local v7, "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 791
    .local v1, "childHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 792
    .local v4, "childWidth":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/MapView$Projection;

    move-result-object v10

    iget-object v11, v7, Lorg/osmdroid/views/MapView$LayoutParams;->geoPoint:Lorg/osmdroid/api/IGeoPoint;

    iget-object v12, p0, Lorg/osmdroid/views/MapView;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v10, v11, v12}, Lorg/osmdroid/views/MapView$Projection;->toMapPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 793
    iget-object v10, p0, Lorg/osmdroid/views/MapView;->mPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v8, v10, v11

    .line 794
    .local v8, "x":I
    iget-object v10, p0, Lorg/osmdroid/views/MapView;->mPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 795
    .local v9, "y":I
    move v2, v8

    .line 796
    .local v2, "childLeft":I
    move v3, v9

    .line 797
    .local v3, "childTop":I
    iget v10, v7, Lorg/osmdroid/views/MapView$LayoutParams;->alignment:I

    packed-switch v10, :pswitch_data_0

    .line 835
    :goto_1
    iget v10, v7, Lorg/osmdroid/views/MapView$LayoutParams;->offsetX:I

    add-int/2addr v2, v10

    .line 836
    iget v10, v7, Lorg/osmdroid/views/MapView$LayoutParams;->offsetY:I

    add-int/2addr v3, v10

    .line 837
    add-int v10, v2, v4

    add-int v11, v3, v1

    invoke-virtual {v0, v2, v3, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 785
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

    .line 799
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

    .line 800
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int v3, v10, v9

    .line 801
    goto :goto_1

    .line 803
    :pswitch_1
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v10, v8

    div-int/lit8 v11, v4, 0x2

    sub-int v2, v10, v11

    .line 804
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int v3, v10, v9

    .line 805
    goto :goto_1

    .line 807
    :pswitch_2
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v10, v8

    sub-int v2, v10, v4

    .line 808
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int v3, v10, v9

    .line 809
    goto :goto_1

    .line 811
    :pswitch_3
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int v2, v10, v8

    .line 812
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int/2addr v10, v9

    div-int/lit8 v11, v1, 0x2

    sub-int v3, v10, v11

    .line 813
    goto :goto_1

    .line 815
    :pswitch_4
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v10, v8

    div-int/lit8 v11, v4, 0x2

    sub-int v2, v10, v11

    .line 816
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int/2addr v10, v9

    div-int/lit8 v11, v1, 0x2

    sub-int v3, v10, v11

    .line 817
    goto :goto_1

    .line 819
    :pswitch_5
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v10, v8

    sub-int v2, v10, v4

    .line 820
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int/2addr v10, v9

    div-int/lit8 v11, v1, 0x2

    sub-int v3, v10, v11

    .line 821
    goto :goto_1

    .line 823
    :pswitch_6
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int v2, v10, v8

    .line 824
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int/2addr v10, v9

    sub-int v3, v10, v1

    .line 825
    goto :goto_1

    .line 827
    :pswitch_7
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v10, v8

    div-int/lit8 v11, v4, 0x2

    sub-int v2, v10, v11

    .line 828
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int/2addr v10, v9

    sub-int v3, v10, v1

    .line 829
    goto/16 :goto_1

    .line 831
    :pswitch_8
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v10, v8

    sub-int v2, v10, v4

    .line 832
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v10

    add-int/2addr v10, v9

    sub-int v3, v10, v1

    goto/16 :goto_1

    .line 840
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

    .line 797
    nop

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
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 701
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getChildCount()I

    move-result v6

    .line 703
    .local v6, "count":I
    const/4 v9, 0x0

    .line 704
    .local v9, "maxHeight":I
    const/4 v10, 0x0

    .line 707
    .local v10, "maxWidth":I
    invoke-virtual/range {p0 .. p2}, Lorg/osmdroid/views/MapView;->measureChildren(II)V

    .line 710
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 711
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/osmdroid/views/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 712
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_0

    .line 714
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lorg/osmdroid/views/MapView$LayoutParams;

    .line 715
    .local v8, "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 716
    .local v3, "childHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 717
    .local v5, "childWidth":I
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/MapView$Projection;

    move-result-object v13

    iget-object v14, v8, Lorg/osmdroid/views/MapView$LayoutParams;->geoPoint:Lorg/osmdroid/api/IGeoPoint;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/osmdroid/views/MapView;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v13, v14, v15}, Lorg/osmdroid/views/MapView$Projection;->toMapPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 718
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/MapView;->mPoint:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int v11, v13, v14

    .line 719
    .local v11, "x":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/MapView;->mPoint:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int v12, v13, v14

    .line 720
    .local v12, "y":I
    move v4, v11

    .line 721
    .local v4, "childRight":I
    move v2, v12

    .line 722
    .local v2, "childBottom":I
    iget v13, v8, Lorg/osmdroid/views/MapView$LayoutParams;->alignment:I

    packed-switch v13, :pswitch_data_0

    .line 760
    :goto_1
    iget v13, v8, Lorg/osmdroid/views/MapView$LayoutParams;->offsetX:I

    add-int/2addr v4, v13

    .line 761
    iget v13, v8, Lorg/osmdroid/views/MapView$LayoutParams;->offsetY:I

    add-int/2addr v2, v13

    .line 763
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 764
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 710
    .end local v2    # "childBottom":I
    .end local v3    # "childHeight":I
    .end local v4    # "childRight":I
    .end local v5    # "childWidth":I
    .end local v8    # "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 724
    .restart local v2    # "childBottom":I
    .restart local v3    # "childHeight":I
    .restart local v4    # "childRight":I
    .restart local v5    # "childWidth":I
    .restart local v8    # "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    .restart local v11    # "x":I
    .restart local v12    # "y":I
    :pswitch_0
    add-int v4, v11, v5

    .line 725
    move v2, v12

    .line 726
    goto :goto_1

    .line 728
    :pswitch_1
    div-int/lit8 v13, v5, 0x2

    add-int v4, v11, v13

    .line 729
    move v2, v12

    .line 730
    goto :goto_1

    .line 732
    :pswitch_2
    move v4, v11

    .line 733
    move v2, v12

    .line 734
    goto :goto_1

    .line 736
    :pswitch_3
    add-int v4, v11, v5

    .line 737
    div-int/lit8 v13, v3, 0x2

    add-int v2, v12, v13

    .line 738
    goto :goto_1

    .line 740
    :pswitch_4
    div-int/lit8 v13, v5, 0x2

    add-int v4, v11, v13

    .line 741
    div-int/lit8 v13, v3, 0x2

    add-int v2, v12, v13

    .line 742
    goto :goto_1

    .line 744
    :pswitch_5
    move v4, v11

    .line 745
    div-int/lit8 v13, v3, 0x2

    add-int v2, v12, v13

    .line 746
    goto :goto_1

    .line 748
    :pswitch_6
    add-int v4, v11, v5

    .line 749
    add-int v2, v12, v3

    .line 750
    goto :goto_1

    .line 752
    :pswitch_7
    div-int/lit8 v13, v5, 0x2

    add-int v4, v11, v13

    .line 753
    add-int v2, v12, v3

    .line 754
    goto :goto_1

    .line 756
    :pswitch_8
    move v4, v11

    .line 757
    add-int v2, v12, v3

    goto :goto_1

    .line 769
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childBottom":I
    .end local v3    # "childHeight":I
    .end local v4    # "childRight":I
    .end local v5    # "childWidth":I
    .end local v8    # "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v10, v13

    .line 770
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v13, v9

    .line 773
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getSuggestedMinimumHeight()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 774
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getSuggestedMinimumWidth()I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 776
    move/from16 v0, p1

    invoke-static {v10, v0}, Lorg/osmdroid/views/MapView;->resolveSize(II)I

    move-result v13

    move/from16 v0, p2

    invoke-static {v9, v0}, Lorg/osmdroid/views/MapView;->resolveSize(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lorg/osmdroid/views/MapView;->setMeasuredDimension(II)V

    .line 778
    return-void

    .line 722
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

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v2, 0x41c80000    # 25.0f

    .line 863
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayManager;->onTrackballEvent$4682072e()Z

    .line 864
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapView;->scrollBy(II)V

    .line 869
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public scrollTo(II)V
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v11, 0x0

    .line 970
    invoke-virtual {p0, v11}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)I

    move-result v10

    invoke-static {v10}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v10

    div-int/lit8 v8, v10, 0x2

    .line 971
    .local v8, "worldSize_2":I
    :goto_0
    neg-int v10, v8

    if-ge p1, v10, :cond_0

    .line 972
    mul-int/lit8 v10, v8, 0x2

    add-int/2addr p1, v10

    goto :goto_0

    .line 974
    :cond_0
    :goto_1
    if-le p1, v8, :cond_1

    .line 975
    mul-int/lit8 v10, v8, 0x2

    sub-int/2addr p1, v10

    goto :goto_1

    .line 977
    :cond_1
    :goto_2
    neg-int v10, v8

    if-ge p2, v10, :cond_2

    .line 978
    mul-int/lit8 v10, v8, 0x2

    add-int/2addr p2, v10

    goto :goto_2

    .line 980
    :cond_2
    :goto_3
    if-le p2, v8, :cond_3

    .line 981
    mul-int/lit8 v10, v8, 0x2

    sub-int/2addr p2, v10

    goto :goto_3

    .line 984
    :cond_3
    iget-object v10, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    if-eqz v10, :cond_5

    .line 985
    invoke-virtual {p0, v11}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)I

    move-result v10

    rsub-int/lit8 v9, v10, 0x16

    .line 986
    .local v9, "zoomDiff":I
    iget-object v10, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    shr-int v3, v10, v9

    .line 987
    .local v3, "minX":I
    iget-object v10, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    shr-int v4, v10, v9

    .line 988
    .local v4, "minY":I
    iget-object v10, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    shr-int v1, v10, v9

    .line 989
    .local v1, "maxX":I
    iget-object v10, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    shr-int v2, v10, v9

    .line 991
    .local v2, "maxY":I
    sub-int v6, v1, v3

    .line 992
    .local v6, "scrollableWidth":I
    sub-int v5, v2, v4

    .line 993
    .local v5, "scrollableHeight":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v7

    .line 994
    .local v7, "width":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v0

    .line 996
    .local v0, "height":I
    if-gt v6, v7, :cond_7

    .line 997
    div-int/lit8 v10, v6, 0x2

    add-int p1, v3, v10

    .line 1003
    :cond_4
    :goto_4
    if-gt v5, v0, :cond_9

    .line 1004
    div-int/lit8 v10, v5, 0x2

    add-int p2, v4, v10

    .line 1010
    .end local v0    # "height":I
    .end local v1    # "maxX":I
    .end local v2    # "maxY":I
    .end local v3    # "minX":I
    .end local v4    # "minY":I
    .end local v5    # "scrollableHeight":I
    .end local v6    # "scrollableWidth":I
    .end local v7    # "width":I
    .end local v9    # "zoomDiff":I
    :cond_5
    :goto_5
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1013
    iget-object v10, p0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    if-eqz v10, :cond_6

    .line 1014
    new-instance v10, Lorg/osmdroid/events/ScrollEvent;

    invoke-direct {v10, p0, p1, p2}, Lorg/osmdroid/events/ScrollEvent;-><init>(Lorg/osmdroid/views/MapView;II)V

    .line 1015
    iget-object v10, p0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    .line 1017
    :cond_6
    return-void

    .line 998
    .restart local v0    # "height":I
    .restart local v1    # "maxX":I
    .restart local v2    # "maxY":I
    .restart local v3    # "minX":I
    .restart local v4    # "minY":I
    .restart local v5    # "scrollableHeight":I
    .restart local v6    # "scrollableWidth":I
    .restart local v7    # "width":I
    .restart local v9    # "zoomDiff":I
    :cond_7
    div-int/lit8 v10, v7, 0x2

    sub-int v10, p1, v10

    if-ge v10, v3, :cond_8

    .line 999
    div-int/lit8 v10, v7, 0x2

    add-int p1, v3, v10

    goto :goto_4

    .line 1000
    :cond_8
    div-int/lit8 v10, v7, 0x2

    add-int/2addr v10, p1

    if-le v10, v1, :cond_4

    .line 1001
    div-int/lit8 v10, v7, 0x2

    sub-int p1, v1, v10

    goto :goto_4

    .line 1005
    :cond_9
    div-int/lit8 v10, v0, 0x2

    sub-int v10, p2, v10

    if-ge v10, v4, :cond_a

    .line 1006
    div-int/lit8 v10, v0, 0x2

    add-int p2, v4, v10

    goto :goto_5

    .line 1007
    :cond_a
    div-int/lit8 v10, v0, 0x2

    add-int/2addr v10, p2

    if-le v10, v2, :cond_5

    .line 1008
    div-int/lit8 v10, v0, 0x2

    sub-int p2, v2, v10

    goto :goto_5
.end method

.method public final selectObject$f4318(Ljava/lang/Object;)V
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1132
    if-nez p1, :cond_1

    iget v3, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_1

    .line 1133
    iget v3, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    sget-wide v5, Lorg/osmdroid/views/MapView;->ZOOM_LOG_BASE_INV:D

    mul-double/2addr v3, v5

    double-to-float v3, v3

    .line 1134
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1137
    .local v2, "scaleDiffInt":I
    if-eqz v2, :cond_0

    .line 1138
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1139
    .local v0, "m":Landroid/graphics/Matrix;
    iget v3, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    div-float v3, v7, v3

    iget v4, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    div-float v4, v7, v4

    iget-object v5, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1141
    iget v3, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    neg-float v3, v3

    iget-object v4, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/MapView$Projection;

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView$Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/MapView$Projection;

    invoke-virtual {v5}, Lorg/osmdroid/views/MapView$Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1143
    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 1144
    .local v1, "pts":[F
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v8

    .line 1145
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v9

    .line 1146
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1147
    aget v3, v1, v8

    float-to-int v3, v3

    aget v4, v1, v9

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    .line 1151
    .end local v0    # "m":Landroid/graphics/Matrix;
    .end local v1    # "pts":[F
    :cond_0
    iget v3, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/osmdroid/views/MapView;->setZoomLevel(I)I

    .line 1155
    .end local v2    # "scaleDiffInt":I
    :cond_1
    iput v7, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    .line 1156
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "pColor"    # I

    .prologue
    .line 1021
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;->setLoadingBackgroundColor(I)V

    .line 1022
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1023
    return-void
.end method

.method public final setBuiltInZoomControls(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 1191
    iput-boolean p1, p0, Lorg/osmdroid/views/MapView;->mEnableZoomController:Z

    .line 1192
    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->checkZoomButtons()V

    .line 1193
    return-void
.end method

.method public final setMultiTouchControls$1385ff()V
    .locals 1

    .prologue
    .line 1196
    new-instance v0, Lorg/metalev/multitouch/controller/MultiTouchController;

    invoke-direct {v0, p0}, Lorg/metalev/multitouch/controller/MultiTouchController;-><init>(Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;)V

    iput-object v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;

    .line 1197
    return-void
.end method

.method public final setPositionAndScale$7a677017(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z
    .locals 3
    .param p1, "aNewObjPosAndScale"    # Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1161
    invoke-virtual {p1}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->getScale()F

    move-result v0

    .line 1163
    .local v0, "multiTouchScale":F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->canZoomIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1164
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1166
    :cond_0
    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->canZoomOut()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1167
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1169
    :cond_1
    iput v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    .line 1170
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1171
    const/4 v1, 0x1

    return v1
.end method

.method public final setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p1, "aTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 325
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 326
    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileSizePixels()I

    move-result v0

    invoke-static {v0}, Lmicrosoft/mappoint/TileSystem;->setTileSize(I)V

    .line 327
    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->checkZoomButtons()V

    .line 328
    iget v0, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->setZoomLevel(I)I

    .line 329
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 330
    return-void
.end method

.method public final setUseDataConnection$1385ff()V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->setUseDataConnection$1385ff()V

    .line 611
    return-void
.end method

.method final setZoomLevel(I)I
    .locals 16
    .param p1, "aZoomLevel"    # I

    .prologue
    .line 337
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()I

    move-result v11

    .line 338
    .local v11, "minZoomLevel":I
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v10

    .line 340
    .local v10, "maxZoomLevel":I
    move/from16 v0, p1

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 341
    .local v5, "newZoomLevel":I
    move-object/from16 v0, p0

    iget v9, v0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    .line 343
    .local v9, "curZoomLevel":I
    if-eq v5, v9, :cond_0

    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 347
    :cond_0
    move-object/from16 v0, p0

    iput v5, v0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    .line 348
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->checkZoomButtons()V

    .line 350
    if-le v5, v9, :cond_3

    .line 353
    invoke-static {v9}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v1

    div-int/lit8 v12, v1, 0x2

    .line 354
    .local v12, "worldSize_current_2":I
    invoke-static {v5}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v1

    div-int/lit8 v13, v1, 0x2

    .line 355
    .local v13, "worldSize_new_2":I
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v1

    add-int/2addr v1, v12

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v12

    invoke-static {v1, v2, v9}, Lmicrosoft/mappoint/TileSystem;->PixelXYToLatLong$1ef21a48(III)Lorg/osmdroid/util/GeoPoint;

    move-result-object v7

    .line 357
    .local v7, "centerGeoPoint":Lorg/osmdroid/api/IGeoPoint;
    invoke-interface {v7}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v3

    invoke-interface {v7}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v3

    int-to-double v3, v3

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v14

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v8

    .line 360
    .local v8, "centerPoint":Landroid/graphics/Point;
    iget v1, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v13

    iget v2, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    .line 369
    .end local v7    # "centerGeoPoint":Lorg/osmdroid/api/IGeoPoint;
    .end local v8    # "centerPoint":Landroid/graphics/Point;
    .end local v12    # "worldSize_current_2":I
    .end local v13    # "worldSize_new_2":I
    :cond_1
    :goto_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 370
    new-instance v1, Lorg/osmdroid/views/MapView$Projection;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lorg/osmdroid/views/MapView$Projection;-><init>(Lorg/osmdroid/views/MapView;B)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/MapView$Projection;

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayManager;->onSnapToItem$d9026f1()Z

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getScreenRect$323c19cd()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v5, v9, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->rescaleCache(IILandroid/graphics/Rect;)V

    .line 378
    if-eq v5, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    if-eqz v1, :cond_2

    .line 379
    new-instance v1, Lorg/osmdroid/events/ZoomEvent;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v5}, Lorg/osmdroid/events/ZoomEvent;-><init>(Lorg/osmdroid/views/MapView;I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    .line 383
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->requestLayout()V

    .line 384
    move-object/from16 v0, p0

    iget v1, v0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    return v1

    .line 361
    :cond_3
    if-ge v5, v9, :cond_1

    .line 364
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v1

    sub-int v2, v9, v5

    shr-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v2

    sub-int v3, v9, v5

    shr-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    goto :goto_0
.end method

.method final zoomIn()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 513
    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->canZoomIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v0

    .line 518
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 519
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 520
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomInAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->startAnimation(Landroid/view/animation/Animation;)V

    move v0, v1

    .line 521
    goto :goto_0
.end method

.method final zoomInFixing(Lorg/osmdroid/api/IGeoPoint;)Z
    .locals 7
    .param p1, "point"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 529
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v0, v0

    div-double/2addr v0, v4

    int-to-double v2, v2

    div-double/2addr v2, v4

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)I

    move-result v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)I

    move-result v0

    invoke-static {v0}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lorg/osmdroid/views/MapView;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->debug$552c4e01()V

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v2

    iget v3, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v6

    sub-int/2addr v3, v6

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    const/16 v5, 0x1f4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 530
    :cond_1
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method final zoomOut()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 543
    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->canZoomOut()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    :cond_0
    :goto_0
    return v0

    .line 548
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 549
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 550
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomOutAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->startAnimation(Landroid/view/animation/Animation;)V

    move v0, v1

    .line 551
    goto :goto_0
.end method
