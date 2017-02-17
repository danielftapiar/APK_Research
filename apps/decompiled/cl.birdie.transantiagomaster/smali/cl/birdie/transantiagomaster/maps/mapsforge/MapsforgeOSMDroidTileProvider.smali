.class public final Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
.source "MapsforgeOSMDroidTileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;
    }
.end annotation


# instance fields
.field private final fallbackTileSource_:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field private final networkCheck_:Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;

.field private tileSource_:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 2
    .param p1, "fallbackSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    const/4 v0, 0x0

    .line 42
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;-><init>(I)V

    .line 43
    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->tileSource_:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;

    .line 44
    instance-of v1, p1, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .end local p1    # "fallbackSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    :goto_0
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->fallbackTileSource_:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 45
    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->networkCheck_:Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;

    .line 46
    return-void

    .restart local p1    # "fallbackSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    :cond_0
    move-object p1, v0

    .line 44
    goto :goto_0
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;)Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->tileSource_:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;

    return-object v0
.end method

.method static synthetic access$1(Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;)Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->fallbackTileSource_:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    return-object v0
.end method

.method static synthetic access$2(Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;)Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->networkCheck_:Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;

    return-object v0
.end method


# virtual methods
.method public final getMaximumZoomLevel()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->tileSource_:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->tileSource_:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->getMaximumZoomLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16

    goto :goto_0
.end method

.method public final getMinimumZoomLevel()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->tileSource_:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->tileSource_:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->getMinimumZoomLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getThreadGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "mapsforge"

    return-object v0
.end method

.method protected final getTileLoader()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;-><init>(Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;B)V

    return-object v0
.end method

.method public final getUsesDataConnection()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p1, "tileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 78
    instance-of v0, p1, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;

    if-eqz v0, :cond_0

    .line 80
    check-cast p1, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;

    .line 79
    .end local p1    # "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    :goto_0
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->tileSource_:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;

    .line 82
    return-void

    .line 81
    .restart local p1    # "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
