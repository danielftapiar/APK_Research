.class final Lorg/mapsforge/android/maps/rendertheme/SingleValueMatcher;
.super Ljava/lang/Object;
.source "SingleValueMatcher.java"

# interfaces
.implements Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/mapsforge/android/maps/rendertheme/SingleValueMatcher;->value:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public final isCoveredBy(Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;)Z
    .locals 6
    .param p1, "attributeMatcher"    # Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 31
    if-eq p1, p0, :cond_0

    new-array v2, v1, [Lorg/mapsforge/core/Tag;

    new-instance v3, Lorg/mapsforge/core/Tag;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/mapsforge/android/maps/rendertheme/SingleValueMatcher;->value:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/mapsforge/core/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;->matches(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
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
    .line 36
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 37
    iget-object v3, p0, Lorg/mapsforge/android/maps/rendertheme/SingleValueMatcher;->value:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/core/Tag;

    iget-object v2, v2, Lorg/mapsforge/core/Tag;->value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    const/4 v2, 0x1

    .line 41
    :goto_1
    return v2

    .line 36
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
