.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;
.super Ljava/lang/Object;
.source "WayTextContainer.java"


# instance fields
.field final coordinates:[F

.field final paint:Landroid/graphics/Paint;

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>([FLjava/lang/String;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "coordinates"    # [F
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;->coordinates:[F

    .line 26
    iput-object p2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;->text:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;->paint:Landroid/graphics/Paint;

    .line 28
    return-void
.end method
