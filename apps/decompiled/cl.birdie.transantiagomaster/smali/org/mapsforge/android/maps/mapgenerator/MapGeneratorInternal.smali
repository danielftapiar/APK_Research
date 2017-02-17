.class public final enum Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;
.super Ljava/lang/Enum;
.source "MapGeneratorInternal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

.field public static final enum DATABASE_RENDERER:Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

.field public static final enum MAPNIK:Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

.field public static final enum OPENCYCLEMAP:Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    const-string v1, "DATABASE_RENDERER"

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;->DATABASE_RENDERER:Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    .line 31
    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    const-string v1, "MAPNIK"

    invoke-direct {v0, v1, v3}, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;->MAPNIK:Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    .line 38
    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    const-string v1, "OPENCYCLEMAP"

    invoke-direct {v0, v1, v4}, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;->OPENCYCLEMAP:Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    sget-object v1, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;->DATABASE_RENDERER:Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;->MAPNIK:Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    aput-object v1, v0, v3

    sget-object v1, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;->OPENCYCLEMAP:Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    aput-object v1, v0, v4

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;->$VALUES:[Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;->$VALUES:[Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    invoke-virtual {v0}, [Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    return-object v0
.end method
