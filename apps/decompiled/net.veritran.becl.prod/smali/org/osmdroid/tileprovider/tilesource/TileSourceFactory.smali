.class public Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;
.super Ljava/lang/Object;
.source "TileSourceFactory.java"


# static fields
.field public static final BASE_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final CLOUDMADESMALLTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final CLOUDMADESTANDARDTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final CYCLEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final FIETS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final MAPQUESTAERIAL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final MAPQUESTOSM:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final PUBLIC_TRANSPORT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ROADS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

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
    .locals 16

    .prologue
    const/4 v9, 0x2

    const/4 v15, 0x3

    const/16 v5, 0x100

    const/4 v14, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "Mapnik"

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->mapnik:Lorg/osmdroid/ResourceProxy$string;

    const/16 v4, 0x12

    const-string v6, ".png"

    new-array v7, v15, [Ljava/lang/String;

    const-string v8, "http://a.tile.openstreetmap.org/"

    aput-object v8, v7, v3

    const-string v8, "http://b.tile.openstreetmap.org/"

    aput-object v8, v7, v14

    const-string v8, "http://c.tile.openstreetmap.org/"

    aput-object v8, v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 69
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "CycleMap"

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->cyclemap:Lorg/osmdroid/ResourceProxy$string;

    const/16 v4, 0x11

    const-string v6, ".png"

    new-array v7, v15, [Ljava/lang/String;

    const-string v8, "http://a.tile.opencyclemap.org/cycle/"

    aput-object v8, v7, v3

    const-string v8, "http://b.tile.opencyclemap.org/cycle/"

    aput-object v8, v7, v14

    const-string v8, "http://c.tile.opencyclemap.org/cycle/"

    aput-object v8, v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CYCLEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 75
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "OSMPublicTransport"

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->public_transport:Lorg/osmdroid/ResourceProxy$string;

    const/16 v4, 0x11

    const-string v6, ".png"

    new-array v7, v14, [Ljava/lang/String;

    const-string v8, "http://openptmap.org/tiles/"

    aput-object v8, v7, v3

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->PUBLIC_TRANSPORT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 79
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "MapquestOSM"

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->mapquest_osm:Lorg/osmdroid/ResourceProxy$string;

    const/16 v4, 0x12

    const-string v6, ".png"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "http://otile1.mqcdn.com/tiles/1.0.0/map/"

    aput-object v8, v7, v3

    const-string v8, "http://otile2.mqcdn.com/tiles/1.0.0/map/"

    aput-object v8, v7, v14

    const-string v8, "http://otile3.mqcdn.com/tiles/1.0.0/map/"

    aput-object v8, v7, v9

    const-string v8, "http://otile4.mqcdn.com/tiles/1.0.0/map/"

    aput-object v8, v7, v15

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPQUESTOSM:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 86
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "MapquestAerial"

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->mapquest_aerial:Lorg/osmdroid/ResourceProxy$string;

    const/16 v4, 0xb

    const-string v6, ".png"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "http://otile1.mqcdn.com/tiles/1.0.0/sat/"

    aput-object v8, v7, v3

    const-string v8, "http://otile2.mqcdn.com/tiles/1.0.0/sat/"

    aput-object v8, v7, v14

    const-string v8, "http://otile3.mqcdn.com/tiles/1.0.0/sat/"

    aput-object v8, v7, v9

    const-string v8, "http://otile4.mqcdn.com/tiles/1.0.0/sat/"

    aput-object v8, v7, v15

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPQUESTAERIAL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 93
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 98
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;

    const-string v1, "CloudMadeStandardTiles"

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->cloudmade_standard:Lorg/osmdroid/ResourceProxy$string;

    const/16 v4, 0x12

    const-string v6, ".png"

    new-array v7, v15, [Ljava/lang/String;

    const-string v8, "http://a.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v8, v7, v3

    const-string v8, "http://b.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v8, v7, v14

    const-string v8, "http://c.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v8, v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CLOUDMADESTANDARDTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 105
    new-instance v6, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;

    const-string v7, "CloudMadeSmallTiles"

    sget-object v8, Lorg/osmdroid/ResourceProxy$string;->cloudmade_small:Lorg/osmdroid/ResourceProxy$string;

    const/16 v10, 0x15

    const/16 v11, 0x40

    const-string v12, ".png"

    new-array v13, v15, [Ljava/lang/String;

    const-string v0, "http://a.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v0, v13, v3

    const-string v0, "http://b.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v0, v13, v14

    const-string v0, "http://c.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v0, v13, v9

    move v9, v3

    invoke-direct/range {v6 .. v13}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v6, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CLOUDMADESMALLTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 114
    new-instance v6, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v7, "Fiets"

    sget-object v8, Lorg/osmdroid/ResourceProxy$string;->fiets_nl:Lorg/osmdroid/ResourceProxy$string;

    const/16 v10, 0x12

    const-string v12, ".png"

    new-array v13, v14, [Ljava/lang/String;

    const-string v0, "http://overlay.openstreetmap.nl/openfietskaart-overlay/"

    aput-object v0, v13, v3

    move v9, v15

    move v11, v5

    invoke-direct/range {v6 .. v13}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v6, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->FIETS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 118
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "BaseNL"

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->base_nl:Lorg/osmdroid/ResourceProxy$string;

    const/16 v4, 0x12

    const-string v6, ".png"

    new-array v7, v14, [Ljava/lang/String;

    const-string v8, "http://overlay.openstreetmap.nl/basemap/"

    aput-object v8, v7, v3

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->BASE_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 122
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "RoadsNL"

    sget-object v2, Lorg/osmdroid/ResourceProxy$string;->roads_nl:Lorg/osmdroid/ResourceProxy$string;

    const/16 v4, 0x12

    const-string v6, ".png"

    new-array v7, v14, [Ljava/lang/String;

    const-string v8, "http://overlay.openstreetmap.nl/roads/"

    aput-object v8, v7, v3

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ROADS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    .line 129
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CYCLEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->PUBLIC_TRANSPORT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPQUESTOSM:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/ArrayList;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPQUESTAERIAL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static containsTileSource(Ljava/lang/String;)Z
    .locals 3
    .param p0, "aName"    # Ljava/lang/String;

    .prologue
    .line 30
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

    .line 31
    .local v1, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    invoke-interface {v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    const/4 v2, 0x1

    .line 35
    .end local v1    # "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getTileSource(I)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 5
    .param p0, "aOrdinal"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 47
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

    .line 48
    .local v1, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    invoke-interface {v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->ordinal()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 49
    return-object v1

    .line 52
    .end local v1    # "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No tile source at position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
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

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such tile source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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
