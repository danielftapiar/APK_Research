.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;
.super Ljava/lang/Object;
.source "ShapePaintContainer.java"


# instance fields
.field final paint:Landroid/graphics/Paint;

.field final shapeContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;


# direct methods
.method constructor <init>(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "shapeContainer"    # Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;->shapeContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;

    .line 25
    iput-object p2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;->paint:Landroid/graphics/Paint;

    .line 26
    return-void
.end method
