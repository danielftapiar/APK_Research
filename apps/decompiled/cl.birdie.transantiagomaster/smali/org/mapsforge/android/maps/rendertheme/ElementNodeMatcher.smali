.class final Lorg/mapsforge/android/maps/rendertheme/ElementNodeMatcher;
.super Ljava/lang/Object;
.source "ElementNodeMatcher.java"

# interfaces
.implements Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;


# static fields
.field private static final INSTANCE:Lorg/mapsforge/android/maps/rendertheme/ElementNodeMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/ElementNodeMatcher;

    invoke-direct {v0}, Lorg/mapsforge/android/maps/rendertheme/ElementNodeMatcher;-><init>()V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/ElementNodeMatcher;->INSTANCE:Lorg/mapsforge/android/maps/rendertheme/ElementNodeMatcher;

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

.method static getInstance()Lorg/mapsforge/android/maps/rendertheme/ElementNodeMatcher;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/ElementNodeMatcher;->INSTANCE:Lorg/mapsforge/android/maps/rendertheme/ElementNodeMatcher;

    return-object v0
.end method


# virtual methods
.method public final isCoveredBy(Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;)Z
    .locals 1
    .param p1, "elementMatcher"    # Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;

    .prologue
    .line 33
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/Element;->NODE:Lorg/mapsforge/android/maps/rendertheme/Element;

    invoke-interface {p1, v0}, Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;->matches(Lorg/mapsforge/android/maps/rendertheme/Element;)Z

    move-result v0

    return v0
.end method

.method public final matches(Lorg/mapsforge/android/maps/rendertheme/Element;)Z
    .locals 1
    .param p1, "element"    # Lorg/mapsforge/android/maps/rendertheme/Element;

    .prologue
    .line 38
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/Element;->NODE:Lorg/mapsforge/android/maps/rendertheme/Element;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
