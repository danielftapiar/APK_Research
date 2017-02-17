.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;
.super Ljava/lang/Object;
.source "ImmutablePoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;",
        ">;"
    }
.end annotation


# instance fields
.field private final hashCodeValue:I

.field final pointX:F

.field final pointY:F


# direct methods
.method constructor <init>(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    .line 57
    iput p2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    .line 58
    iget v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->hashCodeValue:I

    .line 59
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 20
    check-cast p1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    .end local p1    # "x0":Ljava/lang/Object;
    iget v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    iget v3, p1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    iget v3, p1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    iget v3, p1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    iget v2, p1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

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

    .line 77
    if-ne p0, p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    instance-of v3, p1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    if-nez v3, :cond_2

    move v1, v2

    .line 80
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 82
    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    .line 83
    .local v0, "other":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;
    iget v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    iget v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    move v1, v2

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    iget v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    iget v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    move v1, v2

    .line 86
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->hashCodeValue:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "ImmutablePoint [x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
