.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;
.super Ljava/lang/Object;
.source "LabelPlacement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferencePosition"
.end annotation


# instance fields
.field final height:F

.field final nodeNumber:I

.field symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

.field final width:F

.field final x:F

.field final y:F


# direct methods
.method constructor <init>(FFIFFLorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "nodeNumber"    # I
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "symbol"    # Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->x:F

    .line 46
    iput p2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    .line 47
    iput p3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->nodeNumber:I

    .line 48
    iput p4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->width:F

    .line 49
    iput p5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->height:F

    .line 50
    iput-object p6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    .line 51
    return-void
.end method
