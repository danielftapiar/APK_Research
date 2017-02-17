.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
.super Ljava/lang/Object;
.source "DependencyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyText"
.end annotation


# instance fields
.field final boundary:Landroid/graphics/Rect;

.field final paintBack:Landroid/graphics/Paint;

.field final paintFront:Landroid/graphics/Paint;

.field final text:Ljava/lang/String;

.field tiles:Ljava/util/List;
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
.method constructor <init>(Landroid/graphics/Paint;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;Lorg/mapsforge/core/Tile;)V
    .locals 1
    .param p1, "paintFront"    # Landroid/graphics/Paint;
    .param p2, "paintBack"    # Landroid/graphics/Paint;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "boundary"    # Landroid/graphics/Rect;
    .param p5, "tile"    # Lorg/mapsforge/core/Tile;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->paintFront:Landroid/graphics/Paint;

    .line 149
    iput-object p2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->paintBack:Landroid/graphics/Paint;

    .line 150
    iput-object p3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->text:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->tiles:Ljava/util/List;

    .line 152
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->tiles:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iput-object p4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->boundary:Landroid/graphics/Rect;

    .line 154
    return-void
.end method


# virtual methods
.method final addTile(Lorg/mapsforge/core/Tile;)V
    .locals 1
    .param p1, "tile"    # Lorg/mapsforge/core/Tile;

    .prologue
    .line 157
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->tiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method
