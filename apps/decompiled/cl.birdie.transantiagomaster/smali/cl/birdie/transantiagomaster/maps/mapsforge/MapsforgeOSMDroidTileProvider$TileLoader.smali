.class final Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.source "MapsforgeOSMDroidTileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;


# direct methods
.method private constructor <init>(Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;->this$0:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;B)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;-><init>(Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;)V

    return-void
.end method

.method private downloadTile(Lorg/osmdroid/tileprovider/MapTileRequestState;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "aState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 118
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;->this$0:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;

    # getter for: Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->fallbackTileSource_:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
    invoke-static {v5}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->access$1(Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;)Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    move-result-object v5

    if-nez v5, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v4

    .line 121
    :cond_1
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v3

    .line 124
    .local v3, "tile":Lorg/osmdroid/tileprovider/MapTile;
    :try_start_0
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;->this$0:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;

    # getter for: Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->networkCheck_:Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;
    invoke-static {v5}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->access$2(Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;)Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;->this$0:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;

    # getter for: Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->networkCheck_:Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;
    invoke-static {v5}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->access$2(Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;)Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;

    move-result-object v5

    invoke-virtual {v5}, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->getNetworkAvailable()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    .line 127
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;->this$0:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;

    # getter for: Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->fallbackTileSource_:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
    invoke-static {v5}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->access$1(Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;)Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getTileURLString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_3

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 130
    .local v2, "in":Ljava/io/InputStream;
    :goto_2
    if-eqz v2, :cond_0

    .line 133
    invoke-static {v2}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;->loadTileByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 135
    .local v0, "data":[B
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;->this$0:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;

    # getter for: Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->fallbackTileSource_:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
    invoke-static {v5}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->access$1(Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;)Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    goto :goto_0

    .line 124
    .end local v0    # "data":[B
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v4

    .line 129
    goto :goto_2

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v4, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;->this$0:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;

    invoke-direct {v4, v5, v1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;Ljava/lang/Throwable;)V

    throw v4

    .line 139
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 140
    .local v1, "e":Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
    new-instance v4, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;->this$0:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;

    invoke-direct {v4, v5, v1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;Ljava/lang/Throwable;)V

    throw v4

    .line 142
    .end local v1    # "e":Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method private drawMapsforgeTile(Lorg/osmdroid/tileprovider/MapTileRequestState;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "aState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v3, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;->this$0:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;

    # getter for: Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->tileSource_:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;
    invoke-static {v3}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->access$0(Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;)Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;

    move-result-object v3

    if-nez v3, :cond_0

    .line 101
    const-string v3, "MapsforgeOSMDroidTileProvider"

    const-string v4, "tileSource es NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-object v2

    .line 106
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v1

    .line 107
    .local v1, "tile":Lorg/osmdroid/tileprovider/MapTile;
    iget-object v3, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;->this$0:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;

    # getter for: Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->tileSource_:Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;
    invoke-static {v3}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;->access$0(Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider;)Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;

    move-result-object v3

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v4

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v5

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->getDrawable(III)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 109
    .end local v1    # "tile":Lorg/osmdroid/tileprovider/MapTile;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MapsforgeOSMDroidTileProvider"

    const-string v4, "excepcion en getDrawable"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static loadTileByteArray(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 171
    .local v0, "dataStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 173
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0, v1}, Lorg/osmdroid/tileprovider/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 174
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 175
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 178
    invoke-static {p0}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 179
    invoke-static {v1}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 175
    return-object v2

    .line 177
    :catchall_0
    move-exception v2

    .line 178
    invoke-static {p0}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 179
    invoke-static {v1}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 180
    throw v2
.end method


# virtual methods
.method public final loadTile(Lorg/osmdroid/tileprovider/MapTileRequestState;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "aState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;->drawMapsforgeTile(Lorg/osmdroid/tileprovider/MapTileRequestState;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    .local v0, "tile":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMDroidTileProvider$TileLoader;->downloadTile(Lorg/osmdroid/tileprovider/MapTileRequestState;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    :cond_0
    return-object v0
.end method
