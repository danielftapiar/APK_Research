.class final enum Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;
.super Ljava/lang/Enum;
.source "ShapeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

.field public static final enum CIRCLE:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

.field public static final enum WAY:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    const-string v1, "CIRCLE"

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;->CIRCLE:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    const-string v1, "WAY"

    invoke-direct {v0, v1, v3}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;->WAY:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    sget-object v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;->CIRCLE:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;->WAY:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;->$VALUES:[Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;->$VALUES:[Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    invoke-virtual {v0}, [Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    return-object v0
.end method
