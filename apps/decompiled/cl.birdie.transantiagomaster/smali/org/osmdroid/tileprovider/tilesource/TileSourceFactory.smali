.class public final Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;
.super Ljava/lang/Object;
.source "TileSourceFactory.java"


# static fields
.field public static final BASE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final BASE_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final CLOUDMADESMALLTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final CLOUDMADESTANDARDTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final CYCLEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final FIETS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final HILLS:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final MAPQUESTAERIAL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final MAPQUESTOSM:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final PUBLIC_TRANSPORT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ROADS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field private static mTileSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/tileprovider/tilesource/ITileSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/16 v4, 0x12

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "Mapnik"

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->mapnik:Lorg/osmdroid/ResourceProxy$string;

    const-string v5, ".png"

    new-array v6, v12, [Ljava/lang/String;

    const-string v7, "http://tile.openstreetmap.org/"

    aput-object v7, v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 66
    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v6, "CycleMap"

    sget-object v7, Lorg/osmdroid/ResourceProxy$string;->cyclemap:Lorg/osmdroid/ResourceProxy$string;

    const/16 v9, 0x11

    const-string v10, ".png"

    new-array v11, v13, [Ljava/lang/String;

    const-string v0, "http://a.tile.opencyclemap.org/cycle/"

    aput-object v0, v11, v3

    const-string v0, "http://b.tile.opencyclemap.org/cycle/"

    aput-object v0, v11, v12

    const-string v0, "http://c.tile.opencyclemap.org/cycle/"

    aput-object v0, v11, v14

    move v8, v3

    invoke-direct/range {v5 .. v11}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CYCLEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 72
    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v6, "OSMPublicTransport"

    sget-object v7, Lorg/osmdroid/ResourceProxy$string;->public_transport:Lorg/osmdroid/ResourceProxy$string;

    const/16 v9, 0x11

    const-string v10, ".png"

    new-array v11, v12, [Ljava/lang/String;

    const-string v0, "http://tile.xn--pnvkarte-m4a.de/tilegen/"

    aput-object v0, v11, v3

    move v8, v3

    invoke-direct/range {v5 .. v11}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->PUBLIC_TRANSPORT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 76
    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v6, "Base"

    sget-object v7, Lorg/osmdroid/ResourceProxy$string;->base:Lorg/osmdroid/ResourceProxy$string;

    const/4 v8, 0x4

    const/16 v9, 0x11

    const-string v10, ".png"

    new-array v11, v12, [Ljava/lang/String;

    const-string v0, "http://topo.openstreetmap.de/base/"

    aput-object v0, v11, v3

    invoke-direct/range {v5 .. v11}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->BASE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 79
    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v6, "Topo"

    sget-object v7, Lorg/osmdroid/ResourceProxy$string;->topo:Lorg/osmdroid/ResourceProxy$string;

    const/4 v8, 0x4

    const/16 v9, 0x11

    const-string v10, ".png"

    new-array v11, v12, [Ljava/lang/String;

    const-string v0, "http://topo.openstreetmap.de/topo/"

    aput-object v0, v11, v3

    invoke-direct/range {v5 .. v11}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 82
    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v6, "Hills"

    sget-object v7, Lorg/osmdroid/ResourceProxy$string;->hills:Lorg/osmdroid/ResourceProxy$string;

    const/16 v8, 0x8

    const/16 v9, 0x11

    const-string v10, ".png"

    new-array v11, v12, [Ljava/lang/String;

    const-string v0, "http://topo.geofabrik.de/hills/"

    aput-object v0, v11, v3

    invoke-direct/range {v5 .. v11}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->HILLS:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 85
    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;

    const-string v6, "CloudMadeStandardTiles"

    sget-object v7, Lorg/osmdroid/ResourceProxy$string;->cloudmade_standard:Lorg/osmdroid/ResourceProxy$string;

    const/16 v9, 0x100

    const-string v10, ".png"

    new-array v11, v13, [Ljava/lang/String;

    const-string v0, "http://a.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v0, v11, v3

    const-string v0, "http://b.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v0, v11, v12

    const-string v0, "http://c.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v0, v11, v14

    move v8, v4

    invoke-direct/range {v5 .. v11}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CLOUDMADESTANDARDTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 92
    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;

    const-string v6, "CloudMadeSmallTiles"

    sget-object v7, Lorg/osmdroid/ResourceProxy$string;->cloudmade_small:Lorg/osmdroid/ResourceProxy$string;

    const/16 v8, 0x15

    const/16 v9, 0x40

    const-string v10, ".png"

    new-array v11, v13, [Ljava/lang/String;

    const-string v0, "http://a.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v0, v11, v3

    const-string v0, "http://b.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v0, v11, v12

    const-string v0, "http://c.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v0, v11, v14

    invoke-direct/range {v5 .. v11}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CLOUDMADESMALLTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 98
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "MapquestOSM"

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->mapquest_osm:Lorg/osmdroid/ResourceProxy$string;

    const-string v5, ".png"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "http://otile1.mqcdn.com/tiles/1.0.0/osm/"

    aput-object v7, v6, v3

    const-string v7, "http://otile2.mqcdn.com/tiles/1.0.0/osm/"

    aput-object v7, v6, v12

    const-string v7, "http://otile3.mqcdn.com/tiles/1.0.0/osm/"

    aput-object v7, v6, v14

    const-string v7, "http://otile4.mqcdn.com/tiles/1.0.0/osm/"

    aput-object v7, v6, v13

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPQUESTOSM:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 105
    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v6, "MapquestAerial"

    sget-object v7, Lorg/osmdroid/ResourceProxy$string;->mapquest_aerial:Lorg/osmdroid/ResourceProxy$string;

    const/16 v9, 0xb

    const-string v10, ".png"

    const/4 v0, 0x4

    new-array v11, v0, [Ljava/lang/String;

    const-string v0, "http://oatile1.mqcdn.com/naip/"

    aput-object v0, v11, v3

    const-string v0, "http://oatile2.mqcdn.com/naip/"

    aput-object v0, v11, v12

    const-string v0, "http://oatile3.mqcdn.com/naip/"

    aput-object v0, v11, v14

    const-string v0, "http://oatile4.mqcdn.com/naip/"

    aput-object v0, v11, v13

    move v8, v3

    invoke-direct/range {v5 .. v11}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPQUESTAERIAL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 112
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 117
    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v6, "Fiets"

    sget-object v7, Lorg/osmdroid/ResourceProxy$string;->fiets_nl:Lorg/osmdroid/ResourceProxy$string;

    const-string v10, ".png"

    new-array v11, v12, [Ljava/lang/String;

    const-string v0, "http://overlay.openstreetmap.nl/openfietskaart-overlay/"

    aput-object v0, v11, v3

    move v8, v13

    move v9, v4

    invoke-direct/range {v5 .. v11}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->FIETS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 121
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "BaseNL"

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->base_nl:Lorg/osmdroid/ResourceProxy$string;

    const-string v5, ".png"

    new-array v6, v12, [Ljava/lang/String;

    const-string v7, "http://overlay.openstreetmap.nl/basemap/"

    aput-object v7, v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->BASE_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 125
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "RoadsNL"

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->roads_nl:Lorg/osmdroid/ResourceProxy$string;

    const-string v5, ".png"

    new-array v6, v12, [Ljava/lang/String;

    const-string v7, "http://overlay.openstreetmap.nl/roads/"

    aput-object v7, v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ROADS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CYCLEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->PUBLIC_TRANSPORT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->BASE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->HILLS:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CLOUDMADESTANDARDTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CLOUDMADESMALLTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPQUESTOSM:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPQUESTAERIAL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public static addTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p0, "mTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 60
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public static getTileSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 5
    .param p0, "aName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 21
    sget-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 22
    .local v1, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    invoke-interface {v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    return-object v1

    .line 26
    .end local v1    # "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No such tile source: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getTileSources()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/tileprovider/tilesource/ITileSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    return-object v0
.end method
