.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CircleContainer;
.super Ljava/lang/Object;
.source "CircleContainer.java"

# interfaces
.implements Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;


# instance fields
.field final radius:F

.field final x:F

.field final y:F


# direct methods
.method constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CircleContainer;->x:F

    .line 24
    iput p2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CircleContainer;->y:F

    .line 25
    iput p3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CircleContainer;->radius:F

    .line 26
    return-void
.end method


# virtual methods
.method public final getShapeType()Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;->CIRCLE:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    return-object v0
.end method
