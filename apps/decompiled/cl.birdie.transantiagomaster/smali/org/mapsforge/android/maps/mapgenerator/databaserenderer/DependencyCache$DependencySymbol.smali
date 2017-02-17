.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;
.super Ljava/lang/Object;
.source "DependencyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencySymbol"
.end annotation


# instance fields
.field symbol:Landroid/graphics/Bitmap;

.field private final tiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Lorg/mapsforge/core/Tile;)V
    .locals 1
    .param p1, "symbol"    # Landroid/graphics/Bitmap;
    .param p2, "tile"    # Lorg/mapsforge/core/Tile;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->symbol:Landroid/graphics/Bitmap;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->tiles:Ljava/util/List;

    .line 109
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->tiles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method


# virtual methods
.method final addTile(Lorg/mapsforge/core/Tile;)V
    .locals 1
    .param p1, "tile"    # Lorg/mapsforge/core/Tile;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->tiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method
