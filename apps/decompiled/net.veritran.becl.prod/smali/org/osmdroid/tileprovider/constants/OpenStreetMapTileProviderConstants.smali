.class public interface abstract Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;
.super Ljava/lang/Object;
.source "OpenStreetMapTileProviderConstants.java"


# static fields
.field public static final CACHE_MAPTILECOUNT_DEFAULT:I = 0x9

.field public static final DEBUGMODE:Z = false

.field public static final DEBUG_TILE_PROVIDERS:Z = false

.field public static final DEFAULT_MAXIMUM_CACHED_FILE_AGE:J = 0x240c8400L

.field public static final MAXIMUM_ZOOMLEVEL:I = 0x16

.field public static final MINIMUM_ZOOMLEVEL:I = 0x0

.field public static final NUMBER_OF_TILE_DOWNLOAD_THREADS:I = 0x2

.field public static final NUMBER_OF_TILE_FILESYSTEM_THREADS:I = 0x8

.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_HOUR:J = 0x36ee80L

.field public static final ONE_MINUTE:J = 0xea60L

.field public static final ONE_SECOND:J = 0x3e8L

.field public static final ONE_WEEK:J = 0x240c8400L

.field public static final ONE_YEAR:J = 0x757b12c00L

.field public static final OSMDROID_PATH:Ljava/io/File;

.field public static final TILE_DOWNLOAD_MAXIMUM_QUEUE_SIZE:I = 0x28

.field public static final TILE_EXPIRY_TIME_MILLISECONDS:J = 0x9a7ec800L

.field public static final TILE_FILESYSTEM_MAXIMUM_QUEUE_SIZE:I = 0x28

.field public static final TILE_MAX_CACHE_SIZE_BYTES:J = 0x25800000L

.field public static final TILE_PATH_BASE:Ljava/io/File;

.field public static final TILE_PATH_EXTENSION:Ljava/lang/String; = ".tile"

.field public static final TILE_TRIM_CACHE_SIZE_BYTES:J = 0x1f400000L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "osmdroid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;->OSMDROID_PATH:Ljava/io/File;

    .line 33
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;->OSMDROID_PATH:Ljava/io/File;

    const-string v2, "tiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;->TILE_PATH_BASE:Ljava/io/File;

    return-void
.end method
