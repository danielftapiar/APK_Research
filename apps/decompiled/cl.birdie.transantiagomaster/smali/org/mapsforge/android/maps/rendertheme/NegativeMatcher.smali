.class final Lorg/mapsforge/android/maps/rendertheme/NegativeMatcher;
.super Ljava/lang/Object;
.source "NegativeMatcher.java"

# interfaces
.implements Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;


# instance fields
.field private final keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final valueList:Ljava/util/List;
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
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/mapsforge/android/maps/rendertheme/NegativeMatcher;->keyList:Ljava/util/List;

    .line 27
    iput-object p2, p0, Lorg/mapsforge/android/maps/rendertheme/NegativeMatcher;->valueList:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public final isCoveredBy(Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;)Z
    .locals 1
    .param p1, "attributeMatcher"    # Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public final matches(Ljava/util/List;)Z
    .locals 8
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
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    iget-object v7, p0, Lorg/mapsforge/android/maps/rendertheme/NegativeMatcher;->keyList:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/core/Tag;

    iget-object v2, v2, Lorg/mapsforge/core/Tag;->key:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    :goto_1
    if-eqz v2, :cond_2

    move v2, v3

    .line 46
    :goto_2
    return v2

    .line 37
    :cond_0
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 41
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_3
    if-ge v0, v1, :cond_4

    .line 42
    iget-object v5, p0, Lorg/mapsforge/android/maps/rendertheme/NegativeMatcher;->valueList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/core/Tag;

    iget-object v2, v2, Lorg/mapsforge/core/Tag;->value:Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 43
    goto :goto_2

    .line 41
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v2, v4

    .line 46
    goto :goto_2
.end method
