.class public Lorg/mapsforge/android/maps/MapView;
.super Landroid/view/ViewGroup;
.source "MapView.java"


# static fields
.field public static final DEFAULT_RENDER_THEME:Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;


# instance fields
.field private debugSettings:Lorg/mapsforge/android/maps/DebugSettings;

.field private final fileSystemTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

.field private final fpsCounter:Lorg/mapsforge/android/maps/FpsCounter;

.field private final frameBuffer:Lorg/mapsforge/android/maps/FrameBuffer;

.field private final inMemoryTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

.field private jobParameters:Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

.field private final jobQueue:Lorg/mapsforge/android/maps/mapgenerator/JobQueue;

.field private final mapController:Lorg/mapsforge/android/maps/MapController;

.field private final mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

.field private mapFile:Ljava/io/File;

.field private mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

.field private final mapMover:Lorg/mapsforge/android/maps/inputhandling/MapMover;

.field private final mapScaleBar:Lorg/mapsforge/android/maps/MapScaleBar;

.field private final mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

.field private final mapWorker:Lorg/mapsforge/android/maps/mapgenerator/MapWorker;

.field private final mapZoomControls:Lorg/mapsforge/android/maps/MapZoomControls;

.field private final overlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/overlay/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private final projection:Lorg/mapsforge/android/maps/Projection;

.field private final touchEventHandler:Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;

.field private final zoomAnimator:Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;->OSMARENDER:Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;

    sput-object v0, Lorg/mapsforge/android/maps/MapView;->DEFAULT_RENDER_THEME:Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 125
    const/4 v0, 0x0

    const-string v1, "mapGenerator"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;

    invoke-direct {v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;-><init>()V

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lorg/mapsforge/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;)V

    .line 126
    return-void

    .line 125
    :cond_0
    invoke-static {v0}, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;->valueOf(Ljava/lang/String;)Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    move-result-object v0

    invoke-static {v0}, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorFactory;->createMapGenerator(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;)Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    move-result-object v0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "mapGenerator"    # Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    instance-of v3, p1, Lorg/mapsforge/android/maps/MapActivity;

    if-nez v3, :cond_0

    .line 144
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "context is not an instance of MapActivity"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v0, p1

    .line 146
    check-cast v0, Lorg/mapsforge/android/maps/MapActivity;

    .line 148
    .local v0, "mapActivity":Lorg/mapsforge/android/maps/MapActivity;
    sget v3, Lorg/mapsforge/android/maps/FrameBuffer;->MAP_VIEW_BACKGROUND:I

    invoke-virtual {p0, v3}, Lorg/mapsforge/android/maps/MapView;->setBackgroundColor(I)V

    .line 149
    const/high16 v3, 0x60000

    invoke-virtual {p0, v3}, Lorg/mapsforge/android/maps/MapView;->setDescendantFocusability(I)V

    .line 150
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/mapsforge/android/maps/MapView;->setWillNotDraw(Z)V

    .line 152
    new-instance v3, Lorg/mapsforge/android/maps/DebugSettings;

    invoke-direct {v3}, Lorg/mapsforge/android/maps/DebugSettings;-><init>()V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->debugSettings:Lorg/mapsforge/android/maps/DebugSettings;

    .line 153
    new-instance v3, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapActivity;->getMapViewId()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;-><init>(I)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->fileSystemTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    .line 155
    new-instance v3, Lorg/mapsforge/android/maps/FpsCounter;

    invoke-direct {v3}, Lorg/mapsforge/android/maps/FpsCounter;-><init>()V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->fpsCounter:Lorg/mapsforge/android/maps/FpsCounter;

    .line 156
    new-instance v3, Lorg/mapsforge/android/maps/FrameBuffer;

    invoke-direct {v3, p0}, Lorg/mapsforge/android/maps/FrameBuffer;-><init>(Lorg/mapsforge/android/maps/MapView;)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->frameBuffer:Lorg/mapsforge/android/maps/FrameBuffer;

    .line 157
    new-instance v3, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;

    invoke-direct {v3}, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;-><init>()V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->inMemoryTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    .line 158
    new-instance v3, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    sget-object v4, Lorg/mapsforge/android/maps/MapView;->DEFAULT_RENDER_THEME:Lorg/mapsforge/android/maps/rendertheme/InternalRenderTheme;

    invoke-direct {v3, v4}, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;-><init>(Lorg/mapsforge/android/maps/mapgenerator/JobTheme;)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->jobParameters:Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    .line 159
    new-instance v3, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;

    invoke-direct {v3, p0}, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;-><init>(Lorg/mapsforge/android/maps/MapView;)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->jobQueue:Lorg/mapsforge/android/maps/mapgenerator/JobQueue;

    .line 160
    new-instance v3, Lorg/mapsforge/android/maps/MapController;

    invoke-direct {v3, p0}, Lorg/mapsforge/android/maps/MapController;-><init>(Lorg/mapsforge/android/maps/MapView;)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapController:Lorg/mapsforge/android/maps/MapController;

    .line 161
    new-instance v3, Lorg/mapsforge/map/reader/MapDatabase;

    invoke-direct {v3}, Lorg/mapsforge/map/reader/MapDatabase;-><init>()V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

    .line 162
    new-instance v3, Lorg/mapsforge/android/maps/MapViewPosition;

    invoke-direct {v3, p0}, Lorg/mapsforge/android/maps/MapViewPosition;-><init>(Lorg/mapsforge/android/maps/MapView;)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    .line 163
    new-instance v3, Lorg/mapsforge/android/maps/MapScaleBar;

    invoke-direct {v3, p0}, Lorg/mapsforge/android/maps/MapScaleBar;-><init>(Lorg/mapsforge/android/maps/MapView;)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapScaleBar:Lorg/mapsforge/android/maps/MapScaleBar;

    .line 164
    new-instance v3, Lorg/mapsforge/android/maps/MapZoomControls;

    invoke-direct {v3, v0, p0}, Lorg/mapsforge/android/maps/MapZoomControls;-><init>(Landroid/content/Context;Lorg/mapsforge/android/maps/MapView;)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapZoomControls:Lorg/mapsforge/android/maps/MapZoomControls;

    .line 165
    new-instance v3, Lorg/mapsforge/android/maps/overlay/OverlayList;

    invoke-direct {v3, p0}, Lorg/mapsforge/android/maps/overlay/OverlayList;-><init>(Lorg/mapsforge/android/maps/MapView;)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->overlays:Ljava/util/List;

    .line 166
    new-instance v3, Lorg/mapsforge/android/maps/MapViewProjection;

    invoke-direct {v3, p0}, Lorg/mapsforge/android/maps/MapViewProjection;-><init>(Lorg/mapsforge/android/maps/MapView;)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->projection:Lorg/mapsforge/android/maps/Projection;

    .line 167
    invoke-static {v0, p0}, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->getInstance(Landroid/content/Context;Lorg/mapsforge/android/maps/MapView;)Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;

    move-result-object v3

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->touchEventHandler:Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;

    .line 169
    new-instance v3, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;

    invoke-direct {v3, p0}, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;-><init>(Lorg/mapsforge/android/maps/MapView;)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapWorker:Lorg/mapsforge/android/maps/mapgenerator/MapWorker;

    .line 170
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapWorker:Lorg/mapsforge/android/maps/mapgenerator/MapWorker;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->start()V

    .line 172
    new-instance v3, Lorg/mapsforge/android/maps/inputhandling/MapMover;

    invoke-direct {v3, p0}, Lorg/mapsforge/android/maps/inputhandling/MapMover;-><init>(Lorg/mapsforge/android/maps/MapView;)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapMover:Lorg/mapsforge/android/maps/inputhandling/MapMover;

    .line 173
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapMover:Lorg/mapsforge/android/maps/inputhandling/MapMover;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/inputhandling/MapMover;->start()V

    .line 175
    new-instance v3, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;

    invoke-direct {v3, p0}, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;-><init>(Lorg/mapsforge/android/maps/MapView;)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->zoomAnimator:Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;

    .line 176
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->zoomAnimator:Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->start()V

    .line 178
    if-nez p3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "mapGenerator must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    instance-of v3, p3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;

    if-eqz v3, :cond_2

    move-object v3, p3

    check-cast v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;

    iget-object v4, p0, Lorg/mapsforge/android/maps/MapView;->mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

    invoke-virtual {v3, v4}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->setMapDatabase(Lorg/mapsforge/map/reader/MapDatabase;)V

    :cond_2
    iput-object p3, p0, Lorg/mapsforge/android/maps/MapView;->mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapWorker:Lorg/mapsforge/android/maps/mapgenerator/MapWorker;

    iget-object v4, p0, Lorg/mapsforge/android/maps/MapView;->mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    invoke-virtual {v3, v4}, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->setMapGenerator(Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;)V

    .line 179
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    invoke-interface {v3}, Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;->getStartPoint()Lorg/mapsforge/core/GeoPoint;

    move-result-object v1

    .line 180
    .local v1, "startPoint":Lorg/mapsforge/core/GeoPoint;
    if-eqz v1, :cond_3

    .line 181
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    invoke-virtual {v3, v1}, Lorg/mapsforge/android/maps/MapViewPosition;->setMapCenter(Lorg/mapsforge/core/GeoPoint;)V

    .line 184
    :cond_3
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    invoke-interface {v3}, Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;->getStartZoomLevel()Ljava/lang/Byte;

    move-result-object v2

    .line 185
    .local v2, "startZoomLevel":Ljava/lang/Byte;
    if-eqz v2, :cond_4

    .line 186
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {v3, v4}, Lorg/mapsforge/android/maps/MapViewPosition;->setZoomLevel(B)V

    .line 189
    :cond_4
    invoke-virtual {v0, p0}, Lorg/mapsforge/android/maps/MapActivity;->registerMapView(Lorg/mapsforge/android/maps/MapView;)V

    .line 190
    return-void
.end method

.method private clearAndRedrawMapView()V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->jobQueue:Lorg/mapsforge/android/maps/mapgenerator/JobQueue;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->clear()V

    .line 713
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->frameBuffer:Lorg/mapsforge/android/maps/FrameBuffer;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/FrameBuffer;->clear()V

    .line 714
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/MapView;->redrawTiles()V

    .line 715
    return-void
.end method

.method private getMaximumPossibleZoomLevel()B
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapZoomControls:Lorg/mapsforge/android/maps/MapZoomControls;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapZoomControls;->getZoomLevelMax()B

    move-result v0

    iget-object v1, p0, Lorg/mapsforge/android/maps/MapView;->mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    invoke-interface {v1}, Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;->getZoomLevelMax()B

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method final destroy()V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 720
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapMover:Lorg/mapsforge/android/maps/inputhandling/MapMover;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/inputhandling/MapMover;->interrupt()V

    .line 721
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapWorker:Lorg/mapsforge/android/maps/mapgenerator/MapWorker;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->interrupt()V

    .line 722
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->zoomAnimator:Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->interrupt()V

    .line 725
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapWorker:Lorg/mapsforge/android/maps/mapgenerator/MapWorker;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :goto_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->frameBuffer:Lorg/mapsforge/android/maps/FrameBuffer;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/FrameBuffer;->destroy()V

    .line 732
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->touchEventHandler:Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->destroy()V

    .line 733
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapScaleBar:Lorg/mapsforge/android/maps/MapScaleBar;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapScaleBar;->destroy()V

    .line 734
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->inMemoryTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    invoke-interface {v0}, Lorg/mapsforge/android/maps/mapgenerator/TileCache;->destroy()V

    .line 735
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->fileSystemTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    invoke-interface {v0}, Lorg/mapsforge/android/maps/mapgenerator/TileCache;->destroy()V

    .line 737
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

    invoke-virtual {v0}, Lorg/mapsforge/map/reader/MapDatabase;->closeFile()V

    .line 738
    return-void

    .line 728
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public final getController()Lorg/mapsforge/android/maps/MapController;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapController:Lorg/mapsforge/android/maps/MapController;

    return-object v0
.end method

.method public final getFileSystemTileCache()Lorg/mapsforge/android/maps/mapgenerator/TileCache;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->fileSystemTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    return-object v0
.end method

.method public final getFrameBuffer()Lorg/mapsforge/android/maps/FrameBuffer;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->frameBuffer:Lorg/mapsforge/android/maps/FrameBuffer;

    return-object v0
.end method

.method public final getInMemoryTileCache()Lorg/mapsforge/android/maps/mapgenerator/TileCache;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->inMemoryTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    return-object v0
.end method

.method public final getJobQueue()Lorg/mapsforge/android/maps/mapgenerator/JobQueue;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->jobQueue:Lorg/mapsforge/android/maps/mapgenerator/JobQueue;

    return-object v0
.end method

.method public final getMapFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    invoke-interface {v0}, Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;->requiresInternetConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapFile:Ljava/io/File;

    return-object v0
.end method

.method public final getMapGenerator()Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    return-object v0
.end method

.method public final getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    return-object v0
.end method

.method public final getOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/overlay/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->overlays:Ljava/util/List;

    return-object v0
.end method

.method public final getProjection()Lorg/mapsforge/android/maps/Projection;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->projection:Lorg/mapsforge/android/maps/Projection;

    return-object v0
.end method

.method public final invalidateOnUiThread()V
    .locals 1

    .prologue
    .line 321
    invoke-static {}, Lorg/mapsforge/android/AndroidUtils;->currentThreadIsUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/MapView;->invalidate()V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/MapView;->postInvalidate()V

    goto :goto_0
.end method

.method public final isZoomAnimatorRunning()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->zoomAnimator:Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->isExecuting()Z

    move-result v0

    return v0
.end method

.method final limitZoomLevel(B)B
    .locals 2
    .param p1, "zoom"    # B

    .prologue
    .line 763
    invoke-direct {p0}, Lorg/mapsforge/android/maps/MapView;->getMaximumPossibleZoomLevel()B

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/mapsforge/android/maps/MapView;->mapZoomControls:Lorg/mapsforge/android/maps/MapZoomControls;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapZoomControls;->getZoomLevelMin()B

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 662
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapView;->frameBuffer:Lorg/mapsforge/android/maps/FrameBuffer;

    invoke-virtual {v2, p1}, Lorg/mapsforge/android/maps/FrameBuffer;->draw(Landroid/graphics/Canvas;)V

    .line 663
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->overlays:Ljava/util/List;

    monitor-enter v3

    .line 664
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapView;->overlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 665
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapView;->overlays:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/overlay/Overlay;

    invoke-virtual {v2, p1}, Lorg/mapsforge/android/maps/overlay/Overlay;->draw(Landroid/graphics/Canvas;)V

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapView;->mapScaleBar:Lorg/mapsforge/android/maps/MapScaleBar;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapScaleBar;->isShowMapScaleBar()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 670
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapView;->mapScaleBar:Lorg/mapsforge/android/maps/MapScaleBar;

    invoke-virtual {v2, p1}, Lorg/mapsforge/android/maps/MapScaleBar;->draw(Landroid/graphics/Canvas;)V

    .line 673
    :cond_1
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapView;->fpsCounter:Lorg/mapsforge/android/maps/FpsCounter;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/FpsCounter;->isShowFpsCounter()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 674
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapView;->fpsCounter:Lorg/mapsforge/android/maps/FpsCounter;

    invoke-virtual {v2, p1}, Lorg/mapsforge/android/maps/FpsCounter;->draw(Landroid/graphics/Canvas;)V

    .line 676
    :cond_2
    return-void

    .line 667
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 337
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapMover:Lorg/mapsforge/android/maps/inputhandling/MapMover;

    invoke-virtual {v0, p1, p2}, Lorg/mapsforge/android/maps/inputhandling/MapMover;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 342
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapMover:Lorg/mapsforge/android/maps/inputhandling/MapMover;

    invoke-virtual {v0, p1, p2}, Lorg/mapsforge/android/maps/inputhandling/MapMover;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 680
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapZoomControls:Lorg/mapsforge/android/maps/MapZoomControls;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/mapsforge/android/maps/MapZoomControls;->onLayout(ZIIII)V

    .line 681
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, -0x80000000

    .line 686
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapZoomControls:Lorg/mapsforge/android/maps/MapZoomControls;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/mapsforge/android/maps/MapZoomControls;->measure(II)V

    .line 691
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lorg/mapsforge/android/maps/MapView;->mapZoomControls:Lorg/mapsforge/android/maps/MapZoomControls;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapZoomControls;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lorg/mapsforge/android/maps/MapView;->mapZoomControls:Lorg/mapsforge/android/maps/MapZoomControls;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapZoomControls;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/mapsforge/android/maps/MapView;->setMeasuredDimension(II)V

    .line 693
    return-void
.end method

.method final onPause()V
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapWorker:Lorg/mapsforge/android/maps/mapgenerator/MapWorker;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->pause()V

    .line 768
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapMover:Lorg/mapsforge/android/maps/inputhandling/MapMover;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/inputhandling/MapMover;->pause()V

    .line 769
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->zoomAnimator:Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->pause()V

    .line 770
    return-void
.end method

.method final onResume()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapWorker:Lorg/mapsforge/android/maps/mapgenerator/MapWorker;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->proceed()V

    .line 774
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapMover:Lorg/mapsforge/android/maps/inputhandling/MapMover;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/inputhandling/MapMover;->proceed()V

    .line 775
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->zoomAnimator:Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->proceed()V

    .line 776
    return-void
.end method

.method protected declared-synchronized onSizeChanged(IIII)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 697
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapView;->frameBuffer:Lorg/mapsforge/android/maps/FrameBuffer;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/FrameBuffer;->destroy()V

    .line 699
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 700
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapView;->frameBuffer:Lorg/mapsforge/android/maps/FrameBuffer;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/FrameBuffer;->onSizeChanged()V

    .line 701
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/MapView;->redrawTiles()V

    .line 703
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->overlays:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 704
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_1
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapView;->overlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 705
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapView;->overlays:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/overlay/Overlay;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/overlay/Overlay;->onSizeChanged()V

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    monitor-exit p0

    return-void

    .line 707
    .restart local v0    # "i":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 697
    .end local v0    # "i":I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 347
    iget-object v1, p0, Lorg/mapsforge/android/maps/MapView;->touchEventHandler:Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;

    invoke-virtual {v1, p1}, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->getAction(Landroid/view/MotionEvent;)I

    move-result v0

    .line 348
    .local v0, "action":I
    iget-object v1, p0, Lorg/mapsforge/android/maps/MapView;->mapZoomControls:Lorg/mapsforge/android/maps/MapZoomControls;

    invoke-virtual {v1, v0}, Lorg/mapsforge/android/maps/MapZoomControls;->onMapViewTouchEvent(I)V

    .line 349
    iget-object v1, p0, Lorg/mapsforge/android/maps/MapView;->touchEventHandler:Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;

    invoke-virtual {v1, p1}, Lorg/mapsforge/android/maps/inputhandling/TouchEventHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 354
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapMover:Lorg/mapsforge/android/maps/inputhandling/MapMover;

    invoke-virtual {v0, p1}, Lorg/mapsforge/android/maps/inputhandling/MapMover;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final redrawTiles()V
    .locals 29

    .prologue
    .line 361
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/android/maps/MapView;->getWidth()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/android/maps/MapView;->getHeight()I

    move-result v7

    if-gtz v7, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/android/maps/MapView;->overlays:Ljava/util/List;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 366
    const/4 v11, 0x0

    .local v11, "i":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->overlays:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "n":I
    :goto_1
    if-ge v11, v14, :cond_2

    .line 367
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->overlays:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mapsforge/android/maps/overlay/Overlay;

    invoke-virtual {v7}, Lorg/mapsforge/android/maps/overlay/Overlay;->requestRedraw()V

    .line 366
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 369
    :cond_2
    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    invoke-virtual {v7}, Lorg/mapsforge/android/maps/MapViewPosition;->getMapPosition()Lorg/mapsforge/core/MapPosition;

    move-result-object v13

    .line 372
    .local v13, "mapPosition":Lorg/mapsforge/core/MapPosition;
    if-eqz v13, :cond_0

    .line 376
    iget-object v10, v13, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    .line 377
    .local v10, "geoPoint":Lorg/mapsforge/core/GeoPoint;
    invoke-virtual {v10}, Lorg/mapsforge/core/GeoPoint;->getLongitude()D

    move-result-wide v27

    iget-byte v7, v13, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    move-wide/from16 v0, v27

    invoke-static {v0, v1, v7}, Lorg/mapsforge/core/MercatorProjection;->longitudeToPixelX(DB)D

    move-result-wide v15

    .line 378
    .local v15, "pixelLeft":D
    invoke-virtual {v10}, Lorg/mapsforge/core/GeoPoint;->getLatitude()D

    move-result-wide v27

    iget-byte v7, v13, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    move-wide/from16 v0, v27

    invoke-static {v0, v1, v7}, Lorg/mapsforge/core/MercatorProjection;->latitudeToPixelY(DB)D

    move-result-wide v17

    .line 379
    .local v17, "pixelTop":D
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/android/maps/MapView;->getWidth()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    int-to-double v0, v7

    move-wide/from16 v27, v0

    sub-double v15, v15, v27

    .line 380
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/android/maps/MapView;->getHeight()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    int-to-double v0, v7

    move-wide/from16 v27, v0

    sub-double v17, v17, v27

    .line 382
    iget-byte v7, v13, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    move-wide v0, v15

    invoke-static {v0, v1, v7}, Lorg/mapsforge/core/MercatorProjection;->pixelXToTileX(DB)J

    move-result-wide v21

    .line 383
    .local v21, "tileLeft":J
    iget-byte v7, v13, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v7}, Lorg/mapsforge/core/MercatorProjection;->pixelYToTileY(DB)J

    move-result-wide v25

    .line 384
    .local v25, "tileTop":J
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/android/maps/MapView;->getWidth()I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v27, v0

    add-double v27, v27, v15

    iget-byte v7, v13, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    move-wide/from16 v0, v27

    invoke-static {v0, v1, v7}, Lorg/mapsforge/core/MercatorProjection;->pixelXToTileX(DB)J

    move-result-wide v23

    .line 385
    .local v23, "tileRight":J
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/android/maps/MapView;->getHeight()I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v27, v0

    add-double v27, v27, v17

    iget-byte v7, v13, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    move-wide/from16 v0, v27

    invoke-static {v0, v1, v7}, Lorg/mapsforge/core/MercatorProjection;->pixelYToTileY(DB)J

    move-result-wide v19

    .line 388
    .local v19, "tileBottom":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    invoke-interface {v7}, Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;->requiresInternetConnection()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 389
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    check-cast v7, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;

    invoke-virtual {v7}, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;->getHostName()Ljava/lang/String;

    move-result-object v9

    .line 394
    :goto_2
    move-wide/from16 v5, v25

    .local v5, "tileY":J
    :goto_3
    cmp-long v7, v5, v19

    if-gtz v7, :cond_8

    .line 395
    move-wide/from16 v3, v21

    .local v3, "tileX":J
    :goto_4
    cmp-long v7, v3, v23

    if-gtz v7, :cond_7

    .line 396
    new-instance v2, Lorg/mapsforge/core/Tile;

    iget-byte v7, v13, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    invoke-direct/range {v2 .. v7}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 397
    .local v2, "tile":Lorg/mapsforge/core/Tile;
    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->jobParameters:Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/android/maps/MapView;->debugSettings:Lorg/mapsforge/android/maps/DebugSettings;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v12, v2, v9, v7, v0}, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;-><init>(Lorg/mapsforge/core/Tile;Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/JobParameters;Lorg/mapsforge/android/maps/DebugSettings;)V

    .line 400
    .local v12, "mapGeneratorJob":Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->inMemoryTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    invoke-interface {v7, v12}, Lorg/mapsforge/android/maps/mapgenerator/TileCache;->containsKey(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 401
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->inMemoryTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    invoke-interface {v7, v12}, Lorg/mapsforge/android/maps/mapgenerator/TileCache;->get(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 402
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->frameBuffer:Lorg/mapsforge/android/maps/FrameBuffer;

    iget-object v0, v12, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->tile:Lorg/mapsforge/core/Tile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v7, v0, v8}, Lorg/mapsforge/android/maps/FrameBuffer;->drawBitmap(Lorg/mapsforge/core/Tile;Landroid/graphics/Bitmap;)Z

    .line 395
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :goto_5
    const-wide/16 v27, 0x1

    add-long v3, v3, v27

    goto :goto_4

    .line 369
    .end local v2    # "tile":Lorg/mapsforge/core/Tile;
    .end local v3    # "tileX":J
    .end local v5    # "tileY":J
    .end local v10    # "geoPoint":Lorg/mapsforge/core/GeoPoint;
    .end local v12    # "mapGeneratorJob":Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;
    .end local v13    # "mapPosition":Lorg/mapsforge/core/MapPosition;
    .end local v14    # "n":I
    .end local v15    # "pixelLeft":D
    .end local v17    # "pixelTop":D
    .end local v19    # "tileBottom":J
    .end local v21    # "tileLeft":J
    .end local v23    # "tileRight":J
    .end local v25    # "tileTop":J
    :catchall_0
    move-exception v7

    monitor-exit v27

    throw v7

    .line 391
    .restart local v10    # "geoPoint":Lorg/mapsforge/core/GeoPoint;
    .restart local v13    # "mapPosition":Lorg/mapsforge/core/MapPosition;
    .restart local v14    # "n":I
    .restart local v15    # "pixelLeft":D
    .restart local v17    # "pixelTop":D
    .restart local v19    # "tileBottom":J
    .restart local v21    # "tileLeft":J
    .restart local v23    # "tileRight":J
    .restart local v25    # "tileTop":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapsforge/android/maps/MapView;->mapFile:Ljava/io/File;

    .local v9, "cacheId":Ljava/io/File;
    goto :goto_2

    .line 403
    .end local v9    # "cacheId":Ljava/io/File;
    .restart local v2    # "tile":Lorg/mapsforge/core/Tile;
    .restart local v3    # "tileX":J
    .restart local v5    # "tileY":J
    .restart local v12    # "mapGeneratorJob":Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->fileSystemTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    invoke-interface {v7, v12}, Lorg/mapsforge/android/maps/mapgenerator/TileCache;->containsKey(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 404
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->fileSystemTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    invoke-interface {v7, v12}, Lorg/mapsforge/android/maps/mapgenerator/TileCache;->get(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 406
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_5

    .line 407
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->frameBuffer:Lorg/mapsforge/android/maps/FrameBuffer;

    iget-object v0, v12, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->tile:Lorg/mapsforge/core/Tile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v7, v0, v8}, Lorg/mapsforge/android/maps/FrameBuffer;->drawBitmap(Lorg/mapsforge/core/Tile;Landroid/graphics/Bitmap;)Z

    .line 408
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->inMemoryTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    invoke-interface {v7, v12, v8}, Lorg/mapsforge/android/maps/mapgenerator/TileCache;->put(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 411
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->jobQueue:Lorg/mapsforge/android/maps/mapgenerator/JobQueue;

    invoke-virtual {v7, v12}, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->addJob(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;)V

    goto :goto_5

    .line 415
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->jobQueue:Lorg/mapsforge/android/maps/mapgenerator/JobQueue;

    invoke-virtual {v7, v12}, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->addJob(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;)V

    goto :goto_5

    .line 394
    .end local v2    # "tile":Lorg/mapsforge/core/Tile;
    .end local v12    # "mapGeneratorJob":Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;
    :cond_7
    const-wide/16 v27, 0x1

    add-long v5, v5, v27

    goto/16 :goto_3

    .line 420
    .end local v3    # "tileX":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->mapScaleBar:Lorg/mapsforge/android/maps/MapScaleBar;

    invoke-virtual {v7}, Lorg/mapsforge/android/maps/MapScaleBar;->isShowMapScaleBar()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 421
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->mapScaleBar:Lorg/mapsforge/android/maps/MapScaleBar;

    invoke-virtual {v7}, Lorg/mapsforge/android/maps/MapScaleBar;->redrawScaleBar()V

    .line 424
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/android/maps/MapView;->invalidateOnUiThread()V

    .line 426
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->jobQueue:Lorg/mapsforge/android/maps/mapgenerator/JobQueue;

    invoke-virtual {v7}, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->requestSchedule()V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/android/maps/MapView;->mapWorker:Lorg/mapsforge/android/maps/mapgenerator/MapWorker;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 428
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/MapView;->mapWorker:Lorg/mapsforge/android/maps/mapgenerator/MapWorker;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 429
    monitor-exit v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v27

    throw v7
.end method

.method public final setBuiltInZoomControls(Z)V
    .locals 1
    .param p1, "showZoomControls"    # Z

    .prologue
    .line 439
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapView;->mapZoomControls:Lorg/mapsforge/android/maps/MapZoomControls;

    invoke-virtual {v0, p1}, Lorg/mapsforge/android/maps/MapZoomControls;->setShowMapZoomControls(Z)V

    .line 440
    return-void
.end method

.method public final setCenter(Lorg/mapsforge/core/GeoPoint;)V
    .locals 2
    .param p1, "geoPoint"    # Lorg/mapsforge/core/GeoPoint;

    .prologue
    .line 449
    new-instance v0, Lorg/mapsforge/core/MapPosition;

    iget-object v1, p0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapViewPosition;->getZoomLevel()B

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/mapsforge/core/MapPosition;-><init>(Lorg/mapsforge/core/GeoPoint;B)V

    .line 450
    .local v0, "mapPosition":Lorg/mapsforge/core/MapPosition;
    invoke-virtual {p0, v0}, Lorg/mapsforge/android/maps/MapView;->setCenterAndZoom(Lorg/mapsforge/core/MapPosition;)V

    .line 451
    return-void
.end method

.method final setCenterAndZoom(Lorg/mapsforge/core/MapPosition;)V
    .locals 17
    .param p1, "mapPosition"    # Lorg/mapsforge/core/MapPosition;

    .prologue
    .line 786
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    invoke-virtual {v14}, Lorg/mapsforge/android/maps/MapViewPosition;->isValid()Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v14, 0x0

    :goto_0
    if-eqz v14, :cond_0

    .line 788
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    invoke-virtual {v14}, Lorg/mapsforge/android/maps/MapViewPosition;->getMapPosition()Lorg/mapsforge/core/MapPosition;

    move-result-object v3

    .line 790
    .local v3, "mapPositionOld":Lorg/mapsforge/core/MapPosition;
    iget-object v2, v3, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    .line 791
    .local v2, "geoPointOld":Lorg/mapsforge/core/GeoPoint;
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    .line 792
    .local v1, "geoPointNew":Lorg/mapsforge/core/GeoPoint;
    invoke-virtual {v2}, Lorg/mapsforge/core/GeoPoint;->getLongitude()D

    move-result-wide v14

    iget-byte v0, v3, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lorg/mapsforge/core/MercatorProjection;->longitudeToPixelX(DB)D

    move-result-wide v10

    .line 794
    .local v10, "oldPixelX":D
    invoke-virtual {v1}, Lorg/mapsforge/core/GeoPoint;->getLongitude()D

    move-result-wide v14

    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lorg/mapsforge/core/MercatorProjection;->longitudeToPixelX(DB)D

    move-result-wide v6

    .line 796
    .local v6, "newPixelX":D
    invoke-virtual {v2}, Lorg/mapsforge/core/GeoPoint;->getLatitude()D

    move-result-wide v14

    iget-byte v0, v3, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lorg/mapsforge/core/MercatorProjection;->latitudeToPixelY(DB)D

    move-result-wide v12

    .line 797
    .local v12, "oldPixelY":D
    invoke-virtual {v1}, Lorg/mapsforge/core/GeoPoint;->getLatitude()D

    move-result-wide v14

    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lorg/mapsforge/core/MercatorProjection;->latitudeToPixelY(DB)D

    move-result-wide v8

    .line 799
    .local v8, "newPixelY":D
    sub-double v14, v10, v6

    double-to-float v4, v14

    .line 800
    .local v4, "matrixTranslateX":F
    sub-double v14, v12, v8

    double-to-float v5, v14

    .line 801
    .local v5, "matrixTranslateY":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/MapView;->frameBuffer:Lorg/mapsforge/android/maps/FrameBuffer;

    invoke-virtual {v14, v4, v5}, Lorg/mapsforge/android/maps/FrameBuffer;->matrixPostTranslate(FF)V

    .line 804
    .end local v1    # "geoPointNew":Lorg/mapsforge/core/GeoPoint;
    .end local v2    # "geoPointOld":Lorg/mapsforge/core/GeoPoint;
    .end local v3    # "mapPositionOld":Lorg/mapsforge/core/MapPosition;
    .end local v4    # "matrixTranslateX":F
    .end local v5    # "matrixTranslateY":F
    .end local v6    # "newPixelX":D
    .end local v8    # "newPixelY":D
    .end local v10    # "oldPixelX":D
    .end local v12    # "oldPixelY":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/mapsforge/android/maps/MapViewPosition;->setMapCenterAndZoomLevel(Lorg/mapsforge/core/MapPosition;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/MapView;->mapZoomControls:Lorg/mapsforge/android/maps/MapZoomControls;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    invoke-virtual {v15}, Lorg/mapsforge/android/maps/MapViewPosition;->getZoomLevel()B

    move-result v15

    invoke-virtual {v14, v15}, Lorg/mapsforge/android/maps/MapZoomControls;->onZoomLevelChange(I)V

    .line 806
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/android/maps/MapView;->redrawTiles()V

    .line 807
    return-void

    .line 786
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/MapView;->mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    invoke-interface {v14}, Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;->requiresInternetConnection()Z

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/MapView;->mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

    invoke-virtual {v14}, Lorg/mapsforge/map/reader/MapDatabase;->hasOpenFile()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/MapView;->mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

    invoke-virtual {v14}, Lorg/mapsforge/map/reader/MapDatabase;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v14

    iget-object v14, v14, Lorg/mapsforge/map/reader/header/MapFileInfo;->boundingBox:Lorg/mapsforge/core/BoundingBox;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    invoke-virtual {v15}, Lorg/mapsforge/android/maps/MapViewPosition;->getMapCenter()Lorg/mapsforge/core/GeoPoint;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/mapsforge/core/BoundingBox;->contains(Lorg/mapsforge/core/GeoPoint;)Z

    move-result v14

    if-nez v14, :cond_3

    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public final setMapFile(Ljava/io/File;)Lorg/mapsforge/map/reader/header/FileOpenResult;
    .locals 5
    .param p1, "mapFile"    # Ljava/io/File;

    .prologue
    .line 474
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    invoke-interface {v3}, Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;->requiresInternetConnection()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 477
    :cond_0
    if-nez p1, :cond_1

    .line 478
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "mapFile must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 479
    :cond_1
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapFile:Ljava/io/File;

    invoke-virtual {p1, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 481
    sget-object v0, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    .line 519
    :goto_0
    return-object v0

    .line 484
    :cond_2
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->zoomAnimator:Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->pause()V

    .line 485
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapWorker:Lorg/mapsforge/android/maps/mapgenerator/MapWorker;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->pause()V

    .line 486
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapMover:Lorg/mapsforge/android/maps/inputhandling/MapMover;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/inputhandling/MapMover;->pause()V

    .line 488
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->zoomAnimator:Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->awaitPausing()V

    .line 489
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapMover:Lorg/mapsforge/android/maps/inputhandling/MapMover;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/inputhandling/MapMover;->awaitPausing()V

    .line 490
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapWorker:Lorg/mapsforge/android/maps/mapgenerator/MapWorker;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->awaitPausing()V

    .line 492
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapMover:Lorg/mapsforge/android/maps/inputhandling/MapMover;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/inputhandling/MapMover;->stopMove()V

    .line 493
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->jobQueue:Lorg/mapsforge/android/maps/mapgenerator/JobQueue;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->clear()V

    .line 495
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->zoomAnimator:Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->proceed()V

    .line 496
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapWorker:Lorg/mapsforge/android/maps/mapgenerator/MapWorker;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->proceed()V

    .line 497
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapMover:Lorg/mapsforge/android/maps/inputhandling/MapMover;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/inputhandling/MapMover;->proceed()V

    .line 499
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

    invoke-virtual {v3}, Lorg/mapsforge/map/reader/MapDatabase;->closeFile()V

    .line 500
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

    invoke-virtual {v3, p1}, Lorg/mapsforge/map/reader/MapDatabase;->openFile(Ljava/io/File;)Lorg/mapsforge/map/reader/header/FileOpenResult;

    move-result-object v0

    .line 501
    .local v0, "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 502
    iput-object p1, p0, Lorg/mapsforge/android/maps/MapView;->mapFile:Ljava/io/File;

    .line 504
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    invoke-interface {v3}, Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;->getStartPoint()Lorg/mapsforge/core/GeoPoint;

    move-result-object v1

    .line 505
    .local v1, "startPoint":Lorg/mapsforge/core/GeoPoint;
    if-eqz v1, :cond_3

    .line 506
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    invoke-virtual {v3, v1}, Lorg/mapsforge/android/maps/MapViewPosition;->setMapCenter(Lorg/mapsforge/core/GeoPoint;)V

    .line 509
    :cond_3
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    invoke-interface {v3}, Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;->getStartZoomLevel()Ljava/lang/Byte;

    move-result-object v2

    .line 510
    .local v2, "startZoomLevel":Ljava/lang/Byte;
    if-eqz v2, :cond_4

    .line 511
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {v3, v4}, Lorg/mapsforge/android/maps/MapViewPosition;->setZoomLevel(B)V

    .line 514
    :cond_4
    invoke-direct {p0}, Lorg/mapsforge/android/maps/MapView;->clearAndRedrawMapView()V

    .line 515
    sget-object v0, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto :goto_0

    .line 517
    .end local v1    # "startPoint":Lorg/mapsforge/core/GeoPoint;
    .end local v2    # "startZoomLevel":Ljava/lang/Byte;
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapFile:Ljava/io/File;

    .line 518
    invoke-direct {p0}, Lorg/mapsforge/android/maps/MapView;->clearAndRedrawMapView()V

    goto :goto_0
.end method

.method public final zoom(BF)Z
    .locals 5
    .param p1, "zoomLevelDiff"    # B
    .param p2, "zoomStart"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 623
    if-lez p1, :cond_2

    .line 625
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/MapViewPosition;->getZoomLevel()B

    move-result v3

    add-int/2addr v3, p1

    invoke-direct {p0}, Lorg/mapsforge/android/maps/MapView;->getMaximumPossibleZoomLevel()B

    move-result v4

    if-le v3, v4, :cond_1

    .line 645
    :cond_0
    :goto_0
    return v1

    .line 628
    :cond_1
    shl-int v1, v2, p1

    int-to-float v0, v1

    .line 640
    .local v0, "matrixScaleFactor":F
    :goto_1
    iget-object v1, p0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/MapViewPosition;->getZoomLevel()B

    move-result v3

    add-int/2addr v3, p1

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Lorg/mapsforge/android/maps/MapViewPosition;->setZoomLevel(B)V

    .line 641
    iget-object v1, p0, Lorg/mapsforge/android/maps/MapView;->mapZoomControls:Lorg/mapsforge/android/maps/MapZoomControls;

    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/MapViewPosition;->getZoomLevel()B

    move-result v3

    invoke-virtual {v1, v3}, Lorg/mapsforge/android/maps/MapZoomControls;->onZoomLevelChange(I)V

    .line 643
    iget-object v1, p0, Lorg/mapsforge/android/maps/MapView;->zoomAnimator:Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;

    invoke-virtual {p0}, Lorg/mapsforge/android/maps/MapView;->getWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/mapsforge/android/maps/MapView;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v1, p2, v0, v3, v4}, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->setParameters(FFFF)V

    .line 644
    iget-object v1, p0, Lorg/mapsforge/android/maps/MapView;->zoomAnimator:Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/inputhandling/ZoomAnimator;->startAnimation()V

    move v1, v2

    .line 645
    goto :goto_0

    .line 629
    .end local v0    # "matrixScaleFactor":F
    :cond_2
    if-gez p1, :cond_3

    .line 631
    iget-object v3, p0, Lorg/mapsforge/android/maps/MapView;->mapViewPosition:Lorg/mapsforge/android/maps/MapViewPosition;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/MapViewPosition;->getZoomLevel()B

    move-result v3

    add-int/2addr v3, p1

    iget-object v4, p0, Lorg/mapsforge/android/maps/MapView;->mapZoomControls:Lorg/mapsforge/android/maps/MapZoomControls;

    invoke-virtual {v4}, Lorg/mapsforge/android/maps/MapZoomControls;->getZoomLevelMin()B

    move-result v4

    if-lt v3, v4, :cond_0

    .line 634
    const/high16 v1, 0x3f800000    # 1.0f

    neg-int v3, p1

    shl-int v3, v2, v3

    int-to-float v3, v3

    div-float v0, v1, v3

    .restart local v0    # "matrixScaleFactor":F
    goto :goto_1

    .line 637
    .end local v0    # "matrixScaleFactor":F
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "matrixScaleFactor":F
    goto :goto_1
.end method
