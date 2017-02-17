.class final Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache$1;
.super Ljava/util/LinkedHashMap;
.source "FileSystemTileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$mapCapacity:I


# direct methods
.method constructor <init>(II)V
    .locals 2
    .param p1, "x0"    # I

    .prologue
    .line 95
    iput p2, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache$1;->val$mapCapacity:I

    const v0, 0x3f19999a    # 0.6f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "eldestEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;Ljava/io/File;>;"
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache$1;->size()I

    move-result v0

    iget v1, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache$1;->val$mapCapacity:I

    if-le v0, v1, :cond_0

    .line 101
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache$1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 106
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
