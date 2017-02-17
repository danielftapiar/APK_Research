.class final Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;
.super Ljava/lang/Object;
.source "MatchingCacheKey.java"


# instance fields
.field private final closed:Lorg/mapsforge/android/maps/rendertheme/Closed;

.field private final hashCodeValue:I

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private final zoomLevel:B


# direct methods
.method constructor <init>(Ljava/util/List;BLorg/mapsforge/android/maps/rendertheme/Closed;)V
    .locals 3
    .param p2, "zoomLevel"    # B
    .param p3, "closed"    # Lorg/mapsforge/android/maps/rendertheme/Closed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;B",
            "Lorg/mapsforge/android/maps/rendertheme/Closed;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->tags:Ljava/util/List;

    .line 29
    iput-byte p2, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->zoomLevel:B

    .line 30
    iput-object p3, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->closed:Lorg/mapsforge/android/maps/rendertheme/Closed;

    .line 31
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->closed:Lorg/mapsforge/android/maps/rendertheme/Closed;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->tags:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->zoomLevel:B

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->hashCodeValue:I

    .line 32
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->closed:Lorg/mapsforge/android/maps/rendertheme/Closed;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/rendertheme/Closed;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->tags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    if-ne p0, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    instance-of v3, p1, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;

    if-nez v3, :cond_2

    move v1, v2

    .line 39
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 41
    check-cast v0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;

    .line 42
    .local v0, "other":Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;
    iget-object v3, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->closed:Lorg/mapsforge/android/maps/rendertheme/Closed;

    if-nez v3, :cond_3

    iget-object v3, v0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->closed:Lorg/mapsforge/android/maps/rendertheme/Closed;

    if-eqz v3, :cond_3

    move v1, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    iget-object v3, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->closed:Lorg/mapsforge/android/maps/rendertheme/Closed;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->closed:Lorg/mapsforge/android/maps/rendertheme/Closed;

    iget-object v4, v0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->closed:Lorg/mapsforge/android/maps/rendertheme/Closed;

    invoke-virtual {v3, v4}, Lorg/mapsforge/android/maps/rendertheme/Closed;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_4
    iget-object v3, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->tags:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->tags:Ljava/util/List;

    if-eqz v3, :cond_5

    move v1, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_5
    iget-object v3, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->tags:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->tags:Ljava/util/List;

    iget-object v4, v0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->tags:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_6
    iget-byte v3, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->zoomLevel:B

    iget-byte v4, v0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->zoomLevel:B

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 51
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;->hashCodeValue:I

    return v0
.end method
