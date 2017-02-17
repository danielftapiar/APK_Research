.class final Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;
.super Ljava/lang/Object;
.source "AnyMatcher.java"

# interfaces
.implements Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;
.implements Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;
.implements Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;


# static fields
.field private static final INSTANCE:Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;

    invoke-direct {v0}, Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;-><init>()V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;->INSTANCE:Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static getInstance()Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;->INSTANCE:Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;

    return-object v0
.end method


# virtual methods
.method public final isCoveredBy(Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;)Z
    .locals 1
    .param p1, "attributeMatcher"    # Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    .prologue
    .line 37
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCoveredBy(Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;)Z
    .locals 1
    .param p1, "closedMatcher"    # Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;

    .prologue
    .line 42
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCoveredBy(Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;)Z
    .locals 1
    .param p1, "elementMatcher"    # Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;

    .prologue
    .line 47
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final matches(Ljava/util/List;)Z
    .locals 1
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
    .line 62
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final matches(Lorg/mapsforge/android/maps/rendertheme/Closed;)Z
    .locals 1
    .param p1, "closed"    # Lorg/mapsforge/android/maps/rendertheme/Closed;

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public final matches(Lorg/mapsforge/android/maps/rendertheme/Element;)Z
    .locals 1
    .param p1, "element"    # Lorg/mapsforge/android/maps/rendertheme/Element;

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method
