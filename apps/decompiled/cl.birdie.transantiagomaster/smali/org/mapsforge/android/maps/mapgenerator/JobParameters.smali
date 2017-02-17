.class public final Lorg/mapsforge/android/maps/mapgenerator/JobParameters;
.super Ljava/lang/Object;
.source "JobParameters.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final hashCodeValue:I

.field public final jobTheme:Lorg/mapsforge/android/maps/mapgenerator/JobTheme;

.field public final textScale:F


# direct methods
.method public constructor <init>(Lorg/mapsforge/android/maps/mapgenerator/JobTheme;)V
    .locals 2
    .param p1, "jobTheme"    # Lorg/mapsforge/android/maps/mapgenerator/JobTheme;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->jobTheme:Lorg/mapsforge/android/maps/mapgenerator/JobTheme;

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->textScale:F

    .line 46
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->jobTheme:Lorg/mapsforge/android/maps/mapgenerator/JobTheme;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->textScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->hashCodeValue:I

    .line 47
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->jobTheme:Lorg/mapsforge/android/maps/mapgenerator/JobTheme;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

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

    .line 51
    if-ne p0, p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    instance-of v3, p1, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    if-nez v3, :cond_2

    move v1, v2

    .line 55
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 57
    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    .line 58
    .local v0, "other":Lorg/mapsforge/android/maps/mapgenerator/JobParameters;
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->jobTheme:Lorg/mapsforge/android/maps/mapgenerator/JobTheme;

    if-nez v3, :cond_3

    .line 59
    iget-object v3, v0, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->jobTheme:Lorg/mapsforge/android/maps/mapgenerator/JobTheme;

    if-eqz v3, :cond_4

    move v1, v2

    .line 60
    goto :goto_0

    .line 62
    :cond_3
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->jobTheme:Lorg/mapsforge/android/maps/mapgenerator/JobTheme;

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->jobTheme:Lorg/mapsforge/android/maps/mapgenerator/JobTheme;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_4
    iget v3, p0, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->textScale:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->textScale:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 66
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->hashCodeValue:I

    return v0
.end method
