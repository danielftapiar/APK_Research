.class final Lorg/mapsforge/android/maps/rendertheme/ClosedWayMatcher;
.super Ljava/lang/Object;
.source "ClosedWayMatcher.java"

# interfaces
.implements Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;


# static fields
.field private static final INSTANCE:Lorg/mapsforge/android/maps/rendertheme/ClosedWayMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/ClosedWayMatcher;

    invoke-direct {v0}, Lorg/mapsforge/android/maps/rendertheme/ClosedWayMatcher;-><init>()V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/ClosedWayMatcher;->INSTANCE:Lorg/mapsforge/android/maps/rendertheme/ClosedWayMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static getInstance()Lorg/mapsforge/android/maps/rendertheme/ClosedWayMatcher;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/ClosedWayMatcher;->INSTANCE:Lorg/mapsforge/android/maps/rendertheme/ClosedWayMatcher;

    return-object v0
.end method


# virtual methods
.method public final isCoveredBy(Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;)Z
    .locals 1
    .param p1, "closedMatcher"    # Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;

    .prologue
    .line 33
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/Closed;->YES:Lorg/mapsforge/android/maps/rendertheme/Closed;

    invoke-interface {p1, v0}, Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;->matches(Lorg/mapsforge/android/maps/rendertheme/Closed;)Z

    move-result v0

    return v0
.end method

.method public final matches(Lorg/mapsforge/android/maps/rendertheme/Closed;)Z
    .locals 1
    .param p1, "closed"    # Lorg/mapsforge/android/maps/rendertheme/Closed;

    .prologue
    .line 38
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/Closed;->YES:Lorg/mapsforge/android/maps/rendertheme/Closed;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
