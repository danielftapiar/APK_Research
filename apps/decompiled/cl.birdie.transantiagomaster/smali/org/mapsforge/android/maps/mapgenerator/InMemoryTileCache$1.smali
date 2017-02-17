.class final Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache$1;
.super Ljava/util/LinkedHashMap;
.source "InMemoryTileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bitmapPool:Ljava/util/List;

.field final synthetic val$mapCapacity:I


# direct methods
.method constructor <init>(IILjava/util/List;)V
    .locals 2
    .param p1, "x0"    # I

    .prologue
    .line 51
    iput p2, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache$1;->val$mapCapacity:I

    iput-object p3, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache$1;->val$bitmapPool:Ljava/util/List;

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
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "eldestEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;Landroid/graphics/Bitmap;>;"
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache$1;->size()I

    move-result v0

    iget v1, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache$1;->val$mapCapacity:I

    if-le v0, v1, :cond_0

    .line 57
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache$1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache$1;->val$bitmapPool:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
