.class final Lorg/mapsforge/android/maps/rendertheme/RuleOptimizer;
.super Ljava/lang/Object;
.source "RuleOptimizer.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/mapsforge/android/maps/rendertheme/RuleOptimizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/RuleOptimizer;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method static optimize(Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;Ljava/util/Stack;)Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;
    .locals 3
    .param p0, "attributeMatcher"    # Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;",
            "Ljava/util/Stack",
            "<",
            "Lorg/mapsforge/android/maps/rendertheme/Rule;",
            ">;)",
            "Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "ruleStack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/mapsforge/android/maps/rendertheme/Rule;>;"
    instance-of v0, p0, Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/mapsforge/android/maps/rendertheme/NegativeMatcher;

    if-eqz v0, :cond_1

    .line 59
    .end local p0    # "attributeMatcher":Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;
    :cond_0
    :goto_0
    return-object p0

    .line 52
    .restart local p0    # "attributeMatcher":Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;
    :cond_1
    instance-of v0, p0, Lorg/mapsforge/android/maps/rendertheme/SingleKeyMatcher;

    if-eqz v0, :cond_2

    .line 53
    invoke-static {p0, p1}, Lorg/mapsforge/android/maps/rendertheme/RuleOptimizer;->optimizeKeyMatcher(Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;Ljava/util/Stack;)Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    move-result-object p0

    goto :goto_0

    .line 54
    :cond_2
    instance-of v0, p0, Lorg/mapsforge/android/maps/rendertheme/SingleValueMatcher;

    if-eqz v0, :cond_3

    .line 55
    invoke-static {p0, p1}, Lorg/mapsforge/android/maps/rendertheme/RuleOptimizer;->optimizeValueMatcher(Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;Ljava/util/Stack;)Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    move-result-object p0

    goto :goto_0

    .line 56
    :cond_3
    instance-of v0, p0, Lorg/mapsforge/android/maps/rendertheme/MultiKeyMatcher;

    if-eqz v0, :cond_4

    .line 57
    invoke-static {p0, p1}, Lorg/mapsforge/android/maps/rendertheme/RuleOptimizer;->optimizeKeyMatcher(Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;Ljava/util/Stack;)Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    move-result-object p0

    goto :goto_0

    .line 58
    :cond_4
    instance-of v0, p0, Lorg/mapsforge/android/maps/rendertheme/MultiValueMatcher;

    if-eqz v0, :cond_5

    .line 59
    invoke-static {p0, p1}, Lorg/mapsforge/android/maps/rendertheme/RuleOptimizer;->optimizeValueMatcher(Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;Ljava/util/Stack;)Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    move-result-object p0

    goto :goto_0

    .line 61
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown AttributeMatcher: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static optimize(Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;Ljava/util/Stack;)Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;
    .locals 4
    .param p0, "closedMatcher"    # Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;",
            "Ljava/util/Stack",
            "<",
            "Lorg/mapsforge/android/maps/rendertheme/Rule;",
            ">;)",
            "Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "ruleStack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/mapsforge/android/maps/rendertheme/Rule;>;"
    instance-of v2, p0, Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;

    if-eqz v2, :cond_1

    .line 77
    .end local p0    # "closedMatcher":Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;
    :cond_0
    :goto_0
    return-object p0

    .line 69
    .restart local p0    # "closedMatcher":Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 70
    invoke-virtual {p1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/Rule;

    iget-object v2, v2, Lorg/mapsforge/android/maps/rendertheme/Rule;->closedMatcher:Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;

    invoke-interface {v2, p0}, Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;->isCoveredBy(Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    invoke-static {}, Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;->getInstance()Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;

    move-result-object p0

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/Rule;

    iget-object v2, v2, Lorg/mapsforge/android/maps/rendertheme/Rule;->closedMatcher:Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;

    invoke-interface {p0, v2}, Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;->isCoveredBy(Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 73
    sget-object v2, Lorg/mapsforge/android/maps/rendertheme/RuleOptimizer;->LOG:Ljava/util/logging/Logger;

    const-string v3, "unreachable rule (closed)"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 69
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static optimize(Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;Ljava/util/Stack;)Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;
    .locals 4
    .param p0, "elementMatcher"    # Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;",
            "Ljava/util/Stack",
            "<",
            "Lorg/mapsforge/android/maps/rendertheme/Rule;",
            ">;)",
            "Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "ruleStack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/mapsforge/android/maps/rendertheme/Rule;>;"
    instance-of v2, p0, Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;

    if-eqz v2, :cond_1

    .line 93
    .end local p0    # "elementMatcher":Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;
    :cond_0
    :goto_0
    return-object p0

    .line 85
    .restart local p0    # "elementMatcher":Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/Rule;

    iget-object v2, v2, Lorg/mapsforge/android/maps/rendertheme/Rule;->elementMatcher:Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;

    invoke-interface {v2, p0}, Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;->isCoveredBy(Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    invoke-static {}, Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;->getInstance()Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;

    move-result-object p0

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/Rule;

    iget-object v2, v2, Lorg/mapsforge/android/maps/rendertheme/Rule;->elementMatcher:Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;

    invoke-interface {p0, v2}, Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;->isCoveredBy(Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 89
    sget-object v2, Lorg/mapsforge/android/maps/rendertheme/RuleOptimizer;->LOG:Ljava/util/logging/Logger;

    const-string v3, "unreachable rule (e)"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 85
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static optimizeKeyMatcher(Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;Ljava/util/Stack;)Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;
    .locals 3
    .param p0, "attributeMatcher"    # Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;",
            "Ljava/util/Stack",
            "<",
            "Lorg/mapsforge/android/maps/rendertheme/Rule;",
            ">;)",
            "Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "ruleStack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/mapsforge/android/maps/rendertheme/Rule;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 25
    invoke-virtual {p1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;

    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;

    .line 27
    iget-object v2, v2, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;->keyMatcher:Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    invoke-interface {v2, p0}, Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;->isCoveredBy(Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    invoke-static {}, Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;->getInstance()Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;

    move-result-object p0

    .line 33
    .end local p0    # "attributeMatcher":Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;
    :cond_0
    return-object p0

    .line 24
    .restart local p0    # "attributeMatcher":Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static optimizeValueMatcher(Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;Ljava/util/Stack;)Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;
    .locals 3
    .param p0, "attributeMatcher"    # Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;",
            "Ljava/util/Stack",
            "<",
            "Lorg/mapsforge/android/maps/rendertheme/Rule;",
            ">;)",
            "Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "ruleStack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/mapsforge/android/maps/rendertheme/Rule;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 38
    invoke-virtual {p1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;

    if-eqz v2, :cond_1

    .line 39
    invoke-virtual {p1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;

    .line 40
    iget-object v2, v2, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;->valueMatcher:Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    invoke-interface {v2, p0}, Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;->isCoveredBy(Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    invoke-static {}, Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;->getInstance()Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;

    move-result-object p0

    .line 46
    .end local p0    # "attributeMatcher":Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;
    :cond_0
    return-object p0

    .line 37
    .restart local p0    # "attributeMatcher":Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
