.class public final Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;
.super Ljava/lang/Object;
.source "MapGeneratorJob.java"

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
        "Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;",
        ">;"
    }
.end annotation


# instance fields
.field public final debugSettings:Lorg/mapsforge/android/maps/DebugSettings;

.field private transient hashCodeValue:I

.field public final jobParameters:Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

.field private final mapGeneratorId:Ljava/lang/Object;

.field private transient priority:D

.field public final tile:Lorg/mapsforge/core/Tile;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/Tile;Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/JobParameters;Lorg/mapsforge/android/maps/DebugSettings;)V
    .locals 3
    .param p1, "tile"    # Lorg/mapsforge/core/Tile;
    .param p2, "mapGeneratorId"    # Ljava/lang/Object;
    .param p3, "jobParameters"    # Lorg/mapsforge/android/maps/mapgenerator/JobParameters;
    .param p4, "debugSettings"    # Lorg/mapsforge/android/maps/DebugSettings;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->tile:Lorg/mapsforge/core/Tile;

    .line 64
    iput-object p2, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->mapGeneratorId:Ljava/lang/Object;

    .line 65
    iput-object p3, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->jobParameters:Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    .line 66
    iput-object p4, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->debugSettings:Lorg/mapsforge/android/maps/DebugSettings;

    .line 67
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->debugSettings:Lorg/mapsforge/android/maps/DebugSettings;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->jobParameters:Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->mapGeneratorId:Ljava/lang/Object;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->tile:Lorg/mapsforge/core/Tile;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    iput v0, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->hashCodeValue:I

    .line 68
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->debugSettings:Lorg/mapsforge/android/maps/DebugSettings;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/DebugSettings;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->jobParameters:Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->mapGeneratorId:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->tile:Lorg/mapsforge/core/Tile;

    invoke-virtual {v1}, Lorg/mapsforge/core/Tile;->hashCode()I

    move-result v1

    goto :goto_3
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;

    .end local p1    # "x0":Ljava/lang/Object;
    iget-wide v0, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->priority:D

    iget-wide v2, p1, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->priority:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->priority:D

    iget-wide v2, p1, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->priority:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-ne p0, p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    instance-of v3, p1, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;

    if-nez v3, :cond_2

    move v1, v2

    .line 86
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 88
    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;

    .line 89
    .local v0, "other":Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->debugSettings:Lorg/mapsforge/android/maps/DebugSettings;

    if-nez v3, :cond_3

    .line 90
    iget-object v3, v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->debugSettings:Lorg/mapsforge/android/maps/DebugSettings;

    if-eqz v3, :cond_4

    move v1, v2

    .line 91
    goto :goto_0

    .line 93
    :cond_3
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->debugSettings:Lorg/mapsforge/android/maps/DebugSettings;

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->debugSettings:Lorg/mapsforge/android/maps/DebugSettings;

    invoke-virtual {v3, v4}, Lorg/mapsforge/android/maps/DebugSettings;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 94
    goto :goto_0

    .line 96
    :cond_4
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->jobParameters:Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    if-nez v3, :cond_5

    .line 97
    iget-object v3, v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->jobParameters:Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    if-eqz v3, :cond_6

    move v1, v2

    .line 98
    goto :goto_0

    .line 100
    :cond_5
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->jobParameters:Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->jobParameters:Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    invoke-virtual {v3, v4}, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 101
    goto :goto_0

    .line 103
    :cond_6
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->mapGeneratorId:Ljava/lang/Object;

    if-nez v3, :cond_7

    .line 104
    iget-object v3, v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->mapGeneratorId:Ljava/lang/Object;

    if-eqz v3, :cond_8

    move v1, v2

    .line 105
    goto :goto_0

    .line 107
    :cond_7
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->mapGeneratorId:Ljava/lang/Object;

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->mapGeneratorId:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 108
    goto :goto_0

    .line 110
    :cond_8
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->tile:Lorg/mapsforge/core/Tile;

    if-nez v3, :cond_9

    .line 111
    iget-object v3, v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->tile:Lorg/mapsforge/core/Tile;

    if-eqz v3, :cond_0

    move v1, v2

    .line 112
    goto :goto_0

    .line 114
    :cond_9
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->tile:Lorg/mapsforge/core/Tile;

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->tile:Lorg/mapsforge/core/Tile;

    invoke-virtual {v3, v4}, Lorg/mapsforge/core/Tile;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 115
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->hashCodeValue:I

    return v0
.end method

.method final setPriority(D)V
    .locals 0
    .param p1, "priority"    # D

    .prologue
    .line 150
    iput-wide p1, p0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->priority:D

    .line 151
    return-void
.end method
