.class public final Lorg/mapsforge/map/reader/header/SubFileParameter;
.super Ljava/lang/Object;
.source "SubFileParameter.java"


# instance fields
.field public final baseZoomLevel:B

.field public final blocksHeight:J

.field public final blocksWidth:J

.field public final boundaryTileBottom:J

.field public final boundaryTileLeft:J

.field public final boundaryTileRight:J

.field public final boundaryTileTop:J

.field private final hashCodeValue:I

.field public final indexEndAddress:J

.field public final indexStartAddress:J

.field public final numberOfBlocks:J

.field public final startAddress:J

.field public final subFileSize:J

.field public final zoomLevelMax:B

.field public final zoomLevelMin:B


# direct methods
.method constructor <init>(Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;)V
    .locals 10
    .param p1, "subFileParameterBuilder"    # Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;

    .prologue
    const-wide/16 v8, 0x1

    const/16 v7, 0x20

    const-wide v5, 0x412e848000000000L    # 1000000.0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iget-wide v0, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->startAddress:J

    iput-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->startAddress:J

    .line 110
    iget-wide v0, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->indexStartAddress:J

    iput-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->indexStartAddress:J

    .line 111
    iget-wide v0, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->subFileSize:J

    iput-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    .line 112
    iget-byte v0, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->baseZoomLevel:B

    iput-byte v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    .line 113
    iget-byte v0, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->zoomLevelMin:B

    iput-byte v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMin:B

    .line 114
    iget-byte v0, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->zoomLevelMax:B

    iput-byte v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMax:B

    .line 115
    iget-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->startAddress:J

    iget-wide v2, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->startAddress:J

    ushr-long/2addr v2, v7

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    iget-wide v3, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    ushr-long/2addr v3, v7

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->hashCodeValue:I

    .line 118
    iget-object v0, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->boundingBox:Lorg/mapsforge/core/BoundingBox;

    iget v0, v0, Lorg/mapsforge/core/BoundingBox;->minLatitudeE6:I

    int-to-double v0, v0

    div-double/2addr v0, v5

    iget-byte v2, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    invoke-static {v0, v1, v2}, Lorg/mapsforge/core/MercatorProjection;->latitudeToTileY(DB)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileBottom:J

    .line 120
    iget-object v0, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->boundingBox:Lorg/mapsforge/core/BoundingBox;

    iget v0, v0, Lorg/mapsforge/core/BoundingBox;->minLongitudeE6:I

    int-to-double v0, v0

    div-double/2addr v0, v5

    iget-byte v2, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    invoke-static {v0, v1, v2}, Lorg/mapsforge/core/MercatorProjection;->longitudeToTileX(DB)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileLeft:J

    .line 122
    iget-object v0, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->boundingBox:Lorg/mapsforge/core/BoundingBox;

    iget v0, v0, Lorg/mapsforge/core/BoundingBox;->maxLatitudeE6:I

    int-to-double v0, v0

    div-double/2addr v0, v5

    iget-byte v2, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    invoke-static {v0, v1, v2}, Lorg/mapsforge/core/MercatorProjection;->latitudeToTileY(DB)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileTop:J

    .line 124
    iget-object v0, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->boundingBox:Lorg/mapsforge/core/BoundingBox;

    iget v0, v0, Lorg/mapsforge/core/BoundingBox;->maxLongitudeE6:I

    int-to-double v0, v0

    div-double/2addr v0, v5

    iget-byte v2, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    invoke-static {v0, v1, v2}, Lorg/mapsforge/core/MercatorProjection;->longitudeToTileX(DB)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileRight:J

    .line 128
    iget-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileRight:J

    iget-wide v2, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileLeft:J

    sub-long/2addr v0, v2

    add-long/2addr v0, v8

    iput-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->blocksWidth:J

    .line 129
    iget-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileBottom:J

    iget-wide v2, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileTop:J

    sub-long/2addr v0, v2

    add-long/2addr v0, v8

    iput-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->blocksHeight:J

    .line 132
    iget-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->blocksWidth:J

    iget-wide v2, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->blocksHeight:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->numberOfBlocks:J

    .line 134
    iget-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->indexStartAddress:J

    iget-wide v2, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->numberOfBlocks:J

    const-wide/16 v4, 0x5

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->indexEndAddress:J

    .line 135
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    if-ne p0, p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v1

    .line 141
    :cond_1
    instance-of v3, p1, Lorg/mapsforge/map/reader/header/SubFileParameter;

    if-nez v3, :cond_2

    move v1, v2

    .line 142
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 144
    check-cast v0, Lorg/mapsforge/map/reader/header/SubFileParameter;

    .line 145
    .local v0, "other":Lorg/mapsforge/map/reader/header/SubFileParameter;
    iget-wide v3, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->startAddress:J

    iget-wide v5, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->startAddress:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    move v1, v2

    .line 146
    goto :goto_0

    .line 147
    :cond_3
    iget-wide v3, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    iget-wide v5, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 148
    goto :goto_0

    .line 149
    :cond_4
    iget-byte v3, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    iget-byte v4, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 150
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->hashCodeValue:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "SubFileParameter [baseZoomLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-byte v1, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, ", blocksHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-wide v1, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->blocksHeight:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, ", blocksWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-wide v1, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->blocksWidth:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, ", boundaryTileBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-wide v1, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileBottom:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, ", boundaryTileLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-wide v1, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileLeft:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, ", boundaryTileRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-wide v1, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileRight:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, ", boundaryTileTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-wide v1, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileTop:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, ", indexStartAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-wide v1, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->indexStartAddress:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, ", numberOfBlocks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-wide v1, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->numberOfBlocks:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ", startAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-wide v1, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->startAddress:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, ", subFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-wide v1, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ", zoomLevelMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-byte v1, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMax:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ", zoomLevelMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-byte v1, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMin:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
