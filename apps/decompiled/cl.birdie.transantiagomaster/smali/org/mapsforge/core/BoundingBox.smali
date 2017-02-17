.class public final Lorg/mapsforge/core/BoundingBox;
.super Ljava/lang/Object;
.source "BoundingBox.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient hashCodeValue:I

.field public final maxLatitudeE6:I

.field public final maxLongitudeE6:I

.field public final minLatitudeE6:I

.field public final minLongitudeE6:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "minLatitudeE6"    # I
    .param p2, "minLongitudeE6"    # I
    .param p3, "maxLatitudeE6"    # I
    .param p4, "maxLongitudeE6"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lorg/mapsforge/core/BoundingBox;->minLatitudeE6:I

    .line 73
    iput p2, p0, Lorg/mapsforge/core/BoundingBox;->minLongitudeE6:I

    .line 74
    iput p3, p0, Lorg/mapsforge/core/BoundingBox;->maxLatitudeE6:I

    .line 75
    iput p4, p0, Lorg/mapsforge/core/BoundingBox;->maxLongitudeE6:I

    .line 76
    iget v0, p0, Lorg/mapsforge/core/BoundingBox;->maxLatitudeE6:I

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/mapsforge/core/BoundingBox;->maxLongitudeE6:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/mapsforge/core/BoundingBox;->minLatitudeE6:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/mapsforge/core/BoundingBox;->minLongitudeE6:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mapsforge/core/BoundingBox;->hashCodeValue:I

    .line 77
    return-void
.end method

.method private static isBetween(III)Z
    .locals 1
    .param p0, "number"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 33
    if-gt p1, p0, :cond_0

    if-gt p0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final contains(Lorg/mapsforge/core/GeoPoint;)Z
    .locals 3
    .param p1, "geoPoint"    # Lorg/mapsforge/core/GeoPoint;

    .prologue
    .line 85
    iget v0, p1, Lorg/mapsforge/core/GeoPoint;->latitudeE6:I

    iget v1, p0, Lorg/mapsforge/core/BoundingBox;->minLatitudeE6:I

    iget v2, p0, Lorg/mapsforge/core/BoundingBox;->maxLatitudeE6:I

    invoke-static {v0, v1, v2}, Lorg/mapsforge/core/BoundingBox;->isBetween(III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/mapsforge/core/GeoPoint;->longitudeE6:I

    iget v1, p0, Lorg/mapsforge/core/BoundingBox;->minLongitudeE6:I

    iget v2, p0, Lorg/mapsforge/core/BoundingBox;->maxLongitudeE6:I

    invoke-static {v0, v1, v2}, Lorg/mapsforge/core/BoundingBox;->isBetween(III)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    if-ne p0, p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    instance-of v3, p1, Lorg/mapsforge/core/BoundingBox;

    if-nez v3, :cond_2

    move v1, v2

    .line 94
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 96
    check-cast v0, Lorg/mapsforge/core/BoundingBox;

    .line 97
    .local v0, "other":Lorg/mapsforge/core/BoundingBox;
    iget v3, p0, Lorg/mapsforge/core/BoundingBox;->maxLatitudeE6:I

    iget v4, v0, Lorg/mapsforge/core/BoundingBox;->maxLatitudeE6:I

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    iget v3, p0, Lorg/mapsforge/core/BoundingBox;->maxLongitudeE6:I

    iget v4, v0, Lorg/mapsforge/core/BoundingBox;->maxLongitudeE6:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    iget v3, p0, Lorg/mapsforge/core/BoundingBox;->minLatitudeE6:I

    iget v4, v0, Lorg/mapsforge/core/BoundingBox;->minLatitudeE6:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    iget v3, p0, Lorg/mapsforge/core/BoundingBox;->minLongitudeE6:I

    iget v4, v0, Lorg/mapsforge/core/BoundingBox;->minLongitudeE6:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 104
    goto :goto_0
.end method

.method public final getCenterPoint()Lorg/mapsforge/core/GeoPoint;
    .locals 5

    .prologue
    .line 113
    iget v2, p0, Lorg/mapsforge/core/BoundingBox;->maxLatitudeE6:I

    iget v3, p0, Lorg/mapsforge/core/BoundingBox;->minLatitudeE6:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 114
    .local v0, "latitudeOffset":I
    iget v2, p0, Lorg/mapsforge/core/BoundingBox;->maxLongitudeE6:I

    iget v3, p0, Lorg/mapsforge/core/BoundingBox;->minLongitudeE6:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 115
    .local v1, "longitudeOffset":I
    new-instance v2, Lorg/mapsforge/core/GeoPoint;

    iget v3, p0, Lorg/mapsforge/core/BoundingBox;->minLatitudeE6:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/mapsforge/core/BoundingBox;->minLongitudeE6:I

    add-int/2addr v4, v1

    invoke-direct {v2, v3, v4}, Lorg/mapsforge/core/GeoPoint;-><init>(II)V

    return-object v2
.end method

.method public final getMaxLatitude()D
    .locals 4

    .prologue
    .line 122
    iget v0, p0, Lorg/mapsforge/core/BoundingBox;->maxLatitudeE6:I

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final getMaxLongitude()D
    .locals 4

    .prologue
    .line 129
    iget v0, p0, Lorg/mapsforge/core/BoundingBox;->maxLongitudeE6:I

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final getMinLatitude()D
    .locals 4

    .prologue
    .line 136
    iget v0, p0, Lorg/mapsforge/core/BoundingBox;->minLatitudeE6:I

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final getMinLongitude()D
    .locals 4

    .prologue
    .line 143
    iget v0, p0, Lorg/mapsforge/core/BoundingBox;->minLongitudeE6:I

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lorg/mapsforge/core/BoundingBox;->hashCodeValue:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "BoundingBox [minLatitudeE6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget v1, p0, Lorg/mapsforge/core/BoundingBox;->minLatitudeE6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", minLongitudeE6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget v1, p0, Lorg/mapsforge/core/BoundingBox;->minLongitudeE6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, ", maxLatitudeE6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget v1, p0, Lorg/mapsforge/core/BoundingBox;->maxLatitudeE6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, ", maxLongitudeE6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget v1, p0, Lorg/mapsforge/core/BoundingBox;->maxLongitudeE6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
