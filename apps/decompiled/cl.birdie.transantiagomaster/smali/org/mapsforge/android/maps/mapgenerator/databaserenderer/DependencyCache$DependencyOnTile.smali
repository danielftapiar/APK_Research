.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
.super Ljava/lang/Object;
.source "DependencyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyOnTile"
.end annotation


# instance fields
.field drawn:Z

.field labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;",
            ">;>;"
        }
    .end annotation
.end field

.field symbols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    .line 64
    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->symbols:Ljava/util/List;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    .line 66
    return-void
.end method


# virtual methods
.method final addSymbol(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;, "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;>;"
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->symbols:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->symbols:Ljava/util/List;

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->symbols:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method final addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;, "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;>;"
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method
