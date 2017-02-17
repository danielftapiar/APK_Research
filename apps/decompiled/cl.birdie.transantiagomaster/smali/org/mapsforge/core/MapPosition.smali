.class public final Lorg/mapsforge/core/MapPosition;
.super Ljava/lang/Object;
.source "MapPosition.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final geoPoint:Lorg/mapsforge/core/GeoPoint;

.field private transient hashCodeValue:I

.field public final zoomLevel:B


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/GeoPoint;B)V
    .locals 2
    .param p1, "geoPoint"    # Lorg/mapsforge/core/GeoPoint;
    .param p2, "zoomLevel"    # B

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    .line 50
    iput-byte p2, p0, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    .line 51
    iget-object v0, p0, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mapsforge/core/MapPosition;->hashCodeValue:I

    .line 52
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    invoke-virtual {v0}, Lorg/mapsforge/core/GeoPoint;->hashCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-ne p0, p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    instance-of v3, p1, Lorg/mapsforge/core/MapPosition;

    if-nez v3, :cond_2

    move v1, v2

    .line 59
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 61
    check-cast v0, Lorg/mapsforge/core/MapPosition;

    .line 62
    .local v0, "other":Lorg/mapsforge/core/MapPosition;
    iget-object v3, p0, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    if-nez v3, :cond_3

    .line 63
    iget-object v3, v0, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    if-eqz v3, :cond_4

    move v1, v2

    .line 64
    goto :goto_0

    .line 66
    :cond_3
    iget-object v3, p0, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    iget-object v4, v0, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    invoke-virtual {v3, v4}, Lorg/mapsforge/core/GeoPoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 67
    goto :goto_0

    .line 69
    :cond_4
    iget-byte v3, p0, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    iget-byte v4, v0, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 70
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/mapsforge/core/MapPosition;->hashCodeValue:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MapPosition [geoPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", zoomLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-byte v1, p0, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
