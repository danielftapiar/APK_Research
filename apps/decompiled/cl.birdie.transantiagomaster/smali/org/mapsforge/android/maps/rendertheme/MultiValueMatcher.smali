.class final Lorg/mapsforge/android/maps/rendertheme/MultiValueMatcher;
.super Ljava/lang/Object;
.source "MultiValueMatcher.java"

# interfaces
.implements Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;


# instance fields
.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/mapsforge/android/maps/rendertheme/MultiValueMatcher;->values:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public final isCoveredBy(Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;)Z
    .locals 6
    .param p1, "attributeMatcher"    # Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    .prologue
    .line 31
    if-ne p1, p0, :cond_0

    .line 32
    const/4 v3, 0x1

    .line 39
    :goto_0
    return v3

    .line 35
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/mapsforge/android/maps/rendertheme/MultiValueMatcher;->values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .local v2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lorg/mapsforge/android/maps/rendertheme/MultiValueMatcher;->values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 37
    new-instance v4, Lorg/mapsforge/core/Tag;

    const/4 v5, 0x0

    iget-object v3, p0, Lorg/mapsforge/android/maps/rendertheme/MultiValueMatcher;->values:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lorg/mapsforge/core/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 39
    :cond_1
    invoke-interface {p1, v2}, Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;->matches(Ljava/util/List;)Z

    move-result v3

    goto :goto_0
.end method

.method public final matches(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 45
    iget-object v3, p0, Lorg/mapsforge/android/maps/rendertheme/MultiValueMatcher;->values:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/core/Tag;

    iget-object v2, v2, Lorg/mapsforge/core/Tag;->value:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const/4 v2, 0x1

    .line 49
    :goto_1
    return v2

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
