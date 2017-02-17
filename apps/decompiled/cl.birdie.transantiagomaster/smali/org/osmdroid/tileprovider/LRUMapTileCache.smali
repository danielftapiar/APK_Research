.class public Lorg/osmdroid/tileprovider/LRUMapTileCache;
.super Ljava/util/LinkedHashMap;
.source "LRUMapTileCache.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lorg/osmdroid/tileprovider/MapTile;",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;"
    }
.end annotation


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private mCapacity:I

.field private mTileRemovedListener:Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/osmdroid/tileprovider/LRUMapTileCache;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0xb

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 30
    const/16 v0, 0x9

    iput v0, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mCapacity:I

    .line 31
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 60
    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->remove(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 65
    :cond_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 66
    return-void
.end method

.method public final ensureCapacity(I)V
    .locals 3
    .param p1, "aCapacity"    # I

    .prologue
    .line 34
    iget v0, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mCapacity:I

    if-le p1, v0, :cond_0

    .line 35
    sget-object v0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tile cache increased from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 36
    iput p1, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mCapacity:I

    .line 38
    :cond_0
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "aKey"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 44
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 45
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 46
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 52
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mTileRemovedListener:Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lorg/osmdroid/tileprovider/MapTile;

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mTileRemovedListener:Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;

    .line 54
    :cond_1
    return-object v1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->remove(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "aEldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/osmdroid/tileprovider/MapTile;Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->size()I

    move-result v1

    iget v2, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mCapacity:I

    if-le v1, v2, :cond_0

    .line 71
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/MapTile;

    .line 75
    .local v0, "eldest":Lorg/osmdroid/tileprovider/MapTile;
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->remove(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    .line 78
    .end local v0    # "eldest":Lorg/osmdroid/tileprovider/MapTile;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
