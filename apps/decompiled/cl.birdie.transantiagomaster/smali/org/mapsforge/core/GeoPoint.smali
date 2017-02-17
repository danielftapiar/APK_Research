.class public final Lorg/mapsforge/core/GeoPoint;
.super Ljava/lang/Object;
.source "GeoPoint.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/mapsforge/core/GeoPoint;",
        ">;"
    }
.end annotation


# instance fields
.field private transient hashCodeValue:I

.field public final latitudeE6:I

.field public final longitudeE6:I


# direct methods
.method public constructor <init>(DD)V
    .locals 8
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1, p2}, Lorg/mapsforge/core/MercatorProjection;->limitLatitude(D)D

    move-result-wide v0

    .line 55
    .local v0, "limitLatitude":D
    mul-double v4, v0, v6

    double-to-int v4, v4

    iput v4, p0, Lorg/mapsforge/core/GeoPoint;->latitudeE6:I

    .line 57
    invoke-static {p3, p4}, Lorg/mapsforge/core/MercatorProjection;->limitLongitude(D)D

    move-result-wide v2

    .line 58
    .local v2, "limitLongitude":D
    mul-double v4, v2, v6

    double-to-int v4, v4

    iput v4, p0, Lorg/mapsforge/core/GeoPoint;->longitudeE6:I

    .line 60
    iget v4, p0, Lorg/mapsforge/core/GeoPoint;->latitudeE6:I

    add-int/lit16 v4, v4, 0xd9

    mul-int/lit8 v4, v4, 0x1f

    iget v5, p0, Lorg/mapsforge/core/GeoPoint;->longitudeE6:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/mapsforge/core/GeoPoint;->hashCodeValue:I

    .line 61
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .param p1, "latitudeE6"    # I
    .param p2, "longitudeE6"    # I

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 70
    int-to-double v0, p1

    div-double/2addr v0, v4

    int-to-double v2, p2

    div-double/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/mapsforge/core/GeoPoint;-><init>(DD)V

    .line 71
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 24
    check-cast p1, Lorg/mapsforge/core/GeoPoint;

    .end local p1    # "x0":Ljava/lang/Object;
    iget v2, p0, Lorg/mapsforge/core/GeoPoint;->longitudeE6:I

    iget v3, p1, Lorg/mapsforge/core/GeoPoint;->longitudeE6:I

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lorg/mapsforge/core/GeoPoint;->longitudeE6:I

    iget v3, p1, Lorg/mapsforge/core/GeoPoint;->longitudeE6:I

    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/mapsforge/core/GeoPoint;->latitudeE6:I

    iget v3, p1, Lorg/mapsforge/core/GeoPoint;->latitudeE6:I

    if-gt v2, v3, :cond_0

    iget v0, p0, Lorg/mapsforge/core/GeoPoint;->latitudeE6:I

    iget v2, p1, Lorg/mapsforge/core/GeoPoint;->latitudeE6:I

    if-ge v0, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-ne p0, p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    instance-of v3, p1, Lorg/mapsforge/core/GeoPoint;

    if-nez v3, :cond_2

    move v1, v2

    .line 92
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 94
    check-cast v0, Lorg/mapsforge/core/GeoPoint;

    .line 95
    .local v0, "other":Lorg/mapsforge/core/GeoPoint;
    iget v3, p0, Lorg/mapsforge/core/GeoPoint;->latitudeE6:I

    iget v4, v0, Lorg/mapsforge/core/GeoPoint;->latitudeE6:I

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iget v3, p0, Lorg/mapsforge/core/GeoPoint;->longitudeE6:I

    iget v4, v0, Lorg/mapsforge/core/GeoPoint;->longitudeE6:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 98
    goto :goto_0
.end method

.method public final getLatitude()D
    .locals 4

    .prologue
    .line 107
    iget v0, p0, Lorg/mapsforge/core/GeoPoint;->latitudeE6:I

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 4

    .prologue
    .line 114
    iget v0, p0, Lorg/mapsforge/core/GeoPoint;->longitudeE6:I

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/mapsforge/core/GeoPoint;->hashCodeValue:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "GeoPoint [latitudeE6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v1, p0, Lorg/mapsforge/core/GeoPoint;->latitudeE6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, ", longitudeE6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v1, p0, Lorg/mapsforge/core/GeoPoint;->longitudeE6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
