.class final Lorg/mapsforge/map/reader/IndexCacheEntryKey;
.super Ljava/lang/Object;
.source "IndexCacheEntryKey.java"


# instance fields
.field private final hashCodeValue:I

.field private final indexBlockNumber:J

.field private final subFileParameter:Lorg/mapsforge/map/reader/header/SubFileParameter;


# direct methods
.method constructor <init>(Lorg/mapsforge/map/reader/header/SubFileParameter;J)V
    .locals 6
    .param p1, "subFileParameter"    # Lorg/mapsforge/map/reader/header/SubFileParameter;
    .param p2, "indexBlockNumber"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->subFileParameter:Lorg/mapsforge/map/reader/header/SubFileParameter;

    .line 37
    iput-wide p2, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->indexBlockNumber:J

    .line 38
    iget-object v0, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->subFileParameter:Lorg/mapsforge/map/reader/header/SubFileParameter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->indexBlockNumber:J

    iget-wide v3, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->indexBlockNumber:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->hashCodeValue:I

    .line 39
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->subFileParameter:Lorg/mapsforge/map/reader/header/SubFileParameter;

    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/SubFileParameter;->hashCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 45
    :cond_1
    instance-of v3, p1, Lorg/mapsforge/map/reader/IndexCacheEntryKey;

    if-nez v3, :cond_2

    move v1, v2

    .line 46
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 48
    check-cast v0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;

    .line 49
    .local v0, "other":Lorg/mapsforge/map/reader/IndexCacheEntryKey;
    iget-object v3, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->subFileParameter:Lorg/mapsforge/map/reader/header/SubFileParameter;

    if-nez v3, :cond_3

    iget-object v3, v0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->subFileParameter:Lorg/mapsforge/map/reader/header/SubFileParameter;

    if-eqz v3, :cond_3

    move v1, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iget-object v3, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->subFileParameter:Lorg/mapsforge/map/reader/header/SubFileParameter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->subFileParameter:Lorg/mapsforge/map/reader/header/SubFileParameter;

    iget-object v4, v0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->subFileParameter:Lorg/mapsforge/map/reader/header/SubFileParameter;

    invoke-virtual {v3, v4}, Lorg/mapsforge/map/reader/header/SubFileParameter;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    iget-wide v3, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->indexBlockNumber:J

    iget-wide v5, v0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->indexBlockNumber:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 54
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->hashCodeValue:I

    return v0
.end method
