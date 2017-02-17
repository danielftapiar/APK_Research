.class public final Lorg/mapsforge/android/maps/DebugSettings;
.super Ljava/lang/Object;
.source "DebugSettings.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final drawTileCoordinates:Z

.field public final drawTileFrames:Z

.field private final hashCodeValue:I

.field public final highlightWaterTiles:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v0, p0, Lorg/mapsforge/android/maps/DebugSettings;->drawTileCoordinates:Z

    .line 52
    iput-boolean v0, p0, Lorg/mapsforge/android/maps/DebugSettings;->drawTileFrames:Z

    .line 53
    iput-boolean v0, p0, Lorg/mapsforge/android/maps/DebugSettings;->highlightWaterTiles:Z

    .line 54
    iget-boolean v0, p0, Lorg/mapsforge/android/maps/DebugSettings;->drawTileCoordinates:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lorg/mapsforge/android/maps/DebugSettings;->drawTileFrames:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lorg/mapsforge/android/maps/DebugSettings;->highlightWaterTiles:Z

    if-eqz v3, :cond_2

    :goto_2
    add-int/2addr v0, v1

    iput v0, p0, Lorg/mapsforge/android/maps/DebugSettings;->hashCodeValue:I

    .line 55
    return-void

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    if-ne p0, p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    instance-of v3, p1, Lorg/mapsforge/android/maps/DebugSettings;

    if-nez v3, :cond_2

    move v1, v2

    .line 63
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 65
    check-cast v0, Lorg/mapsforge/android/maps/DebugSettings;

    .line 66
    .local v0, "other":Lorg/mapsforge/android/maps/DebugSettings;
    iget-boolean v3, p0, Lorg/mapsforge/android/maps/DebugSettings;->drawTileCoordinates:Z

    iget-boolean v4, v0, Lorg/mapsforge/android/maps/DebugSettings;->drawTileCoordinates:Z

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 67
    goto :goto_0

    .line 69
    :cond_3
    iget-boolean v3, p0, Lorg/mapsforge/android/maps/DebugSettings;->drawTileFrames:Z

    iget-boolean v4, v0, Lorg/mapsforge/android/maps/DebugSettings;->drawTileFrames:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 70
    goto :goto_0

    .line 72
    :cond_4
    iget-boolean v3, p0, Lorg/mapsforge/android/maps/DebugSettings;->highlightWaterTiles:Z

    iget-boolean v4, v0, Lorg/mapsforge/android/maps/DebugSettings;->highlightWaterTiles:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 73
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lorg/mapsforge/android/maps/DebugSettings;->hashCodeValue:I

    return v0
.end method
