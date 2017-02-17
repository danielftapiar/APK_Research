.class final synthetic Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer$1;
.super Ljava/lang/Object;
.source "CanvasRasterer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$mapsforge$android$maps$mapgenerator$databaserenderer$ShapeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;->values()[Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer$1;->$SwitchMap$org$mapsforge$android$maps$mapgenerator$databaserenderer$ShapeType:[I

    :try_start_0
    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer$1;->$SwitchMap$org$mapsforge$android$maps$mapgenerator$databaserenderer$ShapeType:[I

    sget-object v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;->CIRCLE:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer$1;->$SwitchMap$org$mapsforge$android$maps$mapgenerator$databaserenderer$ShapeType:[I

    sget-object v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;->WAY:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
