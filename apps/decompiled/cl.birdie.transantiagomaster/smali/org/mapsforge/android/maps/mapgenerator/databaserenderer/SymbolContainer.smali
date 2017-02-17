.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;
.super Ljava/lang/Object;
.source "SymbolContainer.java"


# instance fields
.field final alignCenter:Z

.field final rotation:F

.field final symbol:Landroid/graphics/Bitmap;

.field final x:F

.field final y:F


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;FF)V
    .locals 6
    .param p1, "symbol"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 37
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;-><init>(Landroid/graphics/Bitmap;FFZF)V

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;FFZF)V
    .locals 0
    .param p1, "symbol"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "alignCenter"    # Z
    .param p5, "rotation"    # F

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    .line 56
    iput p2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    .line 57
    iput p3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    .line 58
    iput-boolean p4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->alignCenter:Z

    .line 59
    iput p5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->rotation:F

    .line 60
    return-void
.end method
