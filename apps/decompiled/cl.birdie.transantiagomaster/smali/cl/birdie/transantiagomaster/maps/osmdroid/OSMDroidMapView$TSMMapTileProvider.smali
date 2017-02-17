.class final Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$TSMMapTileProvider;
.super Lorg/osmdroid/tileprovider/MapTileProviderArray;
.source "OSMDroidMapView.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/IMapTileProviderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TSMMapTileProvider"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const-string v0, "TSM-Mapsforge"

    invoke-static {v0}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v0

    .line 109
    new-instance v1, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;

    invoke-direct {v1, p1}, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$TSMMapTileProvider;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 110
    return-void
.end method

.method private constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 2
    .param p1, "tileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 128
    new-instance v0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;

    invoke-direct {v0, p1}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 130
    .local v0, "mapsforgeProvider":Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$TSMMapTileProvider;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method
