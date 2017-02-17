.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;
.super Ljava/lang/Object;
.source "DependencyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dependency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V
    .locals 0
    .param p2, "point"    # Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;, "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency<TType;>;"
    .local p1, "value":Ljava/lang/Object;, "TType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    .line 48
    return-void
.end method
