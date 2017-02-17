.class final Lorg/mapsforge/android/maps/rendertheme/PositiveRule;
.super Lorg/mapsforge/android/maps/rendertheme/Rule;
.source "PositiveRule.java"


# instance fields
.field final keyMatcher:Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

.field final valueMatcher:Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;


# direct methods
.method constructor <init>(Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;BBLorg/mapsforge/android/maps/rendertheme/AttributeMatcher;Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;)V
    .locals 0
    .param p1, "elementMatcher"    # Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;
    .param p2, "closedMatcher"    # Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;
    .param p3, "zoomMin"    # B
    .param p4, "zoomMax"    # B
    .param p5, "keyMatcher"    # Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;
    .param p6, "valueMatcher"    # Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mapsforge/android/maps/rendertheme/Rule;-><init>(Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;BB)V

    .line 29
    iput-object p5, p0, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;->keyMatcher:Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    .line 30
    iput-object p6, p0, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;->valueMatcher:Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    .line 31
    return-void
.end method


# virtual methods
.method final matchesNode(Ljava/util/List;B)Z
    .locals 2
    .param p2, "zoomLevel"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;B)Z"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    iget-byte v0, p0, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;->zoomMin:B

    if-gt v0, p2, :cond_0

    iget-byte v0, p0, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;->zoomMax:B

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;->elementMatcher:Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/Element;->NODE:Lorg/mapsforge/android/maps/rendertheme/Element;

    invoke-interface {v0, v1}, Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;->matches(Lorg/mapsforge/android/maps/rendertheme/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;->keyMatcher:Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    invoke-interface {v0, p1}, Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;->matches(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;->valueMatcher:Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    invoke-interface {v0, p1}, Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;->matches(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final matchesWay(Ljava/util/List;BLorg/mapsforge/android/maps/rendertheme/Closed;)Z
    .locals 2
    .param p2, "zoomLevel"    # B
    .param p3, "closed"    # Lorg/mapsforge/android/maps/rendertheme/Closed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;B",
            "Lorg/mapsforge/android/maps/rendertheme/Closed;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    iget-byte v0, p0, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;->zoomMin:B

    if-gt v0, p2, :cond_0

    iget-byte v0, p0, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;->zoomMax:B

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;->elementMatcher:Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;

    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/Element;->WAY:Lorg/mapsforge/android/maps/rendertheme/Element;

    invoke-interface {v0, v1}, Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;->matches(Lorg/mapsforge/android/maps/rendertheme/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;->closedMatcher:Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;

    invoke-interface {v0, p3}, Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;->matches(Lorg/mapsforge/android/maps/rendertheme/Closed;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;->keyMatcher:Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    invoke-interface {v0, p1}, Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;->matches(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;->valueMatcher:Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    invoke-interface {v0, p1}, Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;->matches(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method