.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayContainer;
.super Ljava/lang/Object;
.source "WayContainer.java"

# interfaces
.implements Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;


# instance fields
.field final coordinates:[[F


# direct methods
.method constructor <init>([[F)V
    .locals 0
    .param p1, "coordinates"    # [[F

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayContainer;->coordinates:[[F

    .line 22
    return-void
.end method


# virtual methods
.method public final getShapeType()Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;->WAY:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    return-object v0
.end method
