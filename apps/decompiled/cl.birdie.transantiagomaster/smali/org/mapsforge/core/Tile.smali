.class public final Lorg/mapsforge/core/Tile;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient hashCodeValue:I

.field private transient pixelX:J

.field private transient pixelY:J

.field public final tileX:J

.field public final tileY:J

.field public final zoomLevel:B


# direct methods
.method public constructor <init>(JJB)V
    .locals 6
    .param p1, "tileX"    # J
    .param p3, "tileY"    # J
    .param p5, "zoomLevel"    # B

    .prologue
    const-wide/16 v2, 0x100

    const/16 v5, 0x20

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide p1, p0, Lorg/mapsforge/core/Tile;->tileX:J

    .line 72
    iput-wide p3, p0, Lorg/mapsforge/core/Tile;->tileY:J

    .line 73
    iput-byte p5, p0, Lorg/mapsforge/core/Tile;->zoomLevel:B

    .line 74
    iget-wide v0, p0, Lorg/mapsforge/core/Tile;->tileX:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mapsforge/core/Tile;->pixelX:J

    iget-wide v0, p0, Lorg/mapsforge/core/Tile;->tileY:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mapsforge/core/Tile;->pixelY:J

    iget-wide v0, p0, Lorg/mapsforge/core/Tile;->tileX:J

    iget-wide v2, p0, Lorg/mapsforge/core/Tile;->tileX:J

    ushr-long/2addr v2, v5

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/mapsforge/core/Tile;->tileY:J

    iget-wide v3, p0, Lorg/mapsforge/core/Tile;->tileY:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lorg/mapsforge/core/Tile;->zoomLevel:B

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mapsforge/core/Tile;->hashCodeValue:I

    .line 75
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    if-ne p0, p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    instance-of v3, p1, Lorg/mapsforge/core/Tile;

    if-nez v3, :cond_2

    move v1, v2

    .line 82
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 84
    check-cast v0, Lorg/mapsforge/core/Tile;

    .line 85
    .local v0, "other":Lorg/mapsforge/core/Tile;
    iget-wide v3, p0, Lorg/mapsforge/core/Tile;->tileX:J

    iget-wide v5, v0, Lorg/mapsforge/core/Tile;->tileX:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    move v1, v2

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-wide v3, p0, Lorg/mapsforge/core/Tile;->tileY:J

    iget-wide v5, v0, Lorg/mapsforge/core/Tile;->tileY:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    iget-byte v3, p0, Lorg/mapsforge/core/Tile;->zoomLevel:B

    iget-byte v4, v0, Lorg/mapsforge/core/Tile;->zoomLevel:B

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 90
    goto :goto_0
.end method

.method public final getPixelX()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/mapsforge/core/Tile;->pixelX:J

    return-wide v0
.end method

.method public final getPixelY()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/mapsforge/core/Tile;->pixelY:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/mapsforge/core/Tile;->hashCodeValue:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "Tile [tileX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-wide v1, p0, Lorg/mapsforge/core/Tile;->tileX:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, ", tileY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-wide v1, p0, Lorg/mapsforge/core/Tile;->tileY:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ", zoomLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-byte v1, p0, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
