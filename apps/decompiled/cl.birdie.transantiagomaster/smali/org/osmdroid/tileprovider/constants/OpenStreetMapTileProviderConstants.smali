.class public interface abstract Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;
.super Ljava/lang/Object;
.source "OpenStreetMapTileProviderConstants.java"


# static fields
.field public static final OSMDROID_PATH:Ljava/io/File;

.field public static final TILE_PATH_BASE:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "osmdroid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;->OSMDROID_PATH:Ljava/io/File;

    .line 32
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;->OSMDROID_PATH:Ljava/io/File;

    const-string v2, "tiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;->TILE_PATH_BASE:Ljava/io/File;

    return-void
.end method
