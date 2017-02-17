.class public abstract Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.super Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;
.source "OnlineTileSourceBase.java"


# instance fields
.field private final mBaseUrls:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aResourceId"    # Lorg/osmdroid/ResourceProxy$string;
    .param p3, "aZoomMinLevel"    # I
    .param p4, "aZoomMaxLevel"    # I
    .param p5, "aTileSizePixels"    # I
    .param p6, "aImageFilenameEnding"    # Ljava/lang/String;
    .param p7, "aBaseUrl"    # [Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct/range {p0 .. p6}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;-><init>(Ljava/lang/String;Lorg/osmdroid/ResourceProxy$string;IIILjava/lang/String;)V

    .line 25
    iput-object p7, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mBaseUrls:[Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected getBaseUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mBaseUrls:[Ljava/lang/String;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->random:Ljava/util/Random;

    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mBaseUrls:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public abstract getTileURLString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;
.end method
