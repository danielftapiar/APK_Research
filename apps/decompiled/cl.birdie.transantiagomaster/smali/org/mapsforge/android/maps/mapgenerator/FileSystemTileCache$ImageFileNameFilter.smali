.class final Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache$ImageFileNameFilter;
.super Ljava/lang/Object;
.source "FileSystemTileCache.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageFileNameFilter"
.end annotation


# static fields
.field static final INSTANCE:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache$ImageFileNameFilter;

    invoke-direct {v0}, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache$ImageFileNameFilter;-><init>()V

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache$ImageFileNameFilter;->INSTANCE:Ljava/io/FilenameFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, ".tile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
