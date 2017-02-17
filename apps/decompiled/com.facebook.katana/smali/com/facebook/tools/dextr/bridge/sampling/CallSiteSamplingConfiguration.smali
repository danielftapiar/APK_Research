.class public Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;
.super Ljava/lang/Object;
.source "CallSiteSamplingConfiguration.java"

# interfaces
.implements Lcom/facebook/tools/dextr/bridge/sampling/SamplingConfiguration;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    b = true
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:F

.field private final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;",
            ">;"
        }
    .end annotation
.end field

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/tools/dextr/bridge/constants/FilterType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;Ljava/util/Collection;Ljava/util/Collection;JIJJLjava/util/EnumSet;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "tag"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Float;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "probability"
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "starters"
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "finishers"
        .end annotation
    .end param
    .param p5    # J
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "finisherTimeout"
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "requiredCallSite"
        .end annotation
    .end param
    .param p8    # J
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "requiredCallSiteTimeout"
        .end annotation
    .end param
    .param p10    # J
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "timeout"
        .end annotation
    .end param
    .param p12    # Ljava/util/EnumSet;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "filters"
        .end annotation

        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;JIJJ",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/tools/dextr/bridge/constants/FilterType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-eqz v2, :cond_0

    if-eqz p7, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p10, v2

    if-nez v2, :cond_1

    .line 57
    :cond_0
    new-instance v2, Lcom/fasterxml/jackson/core/JsonParseException;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v2

    .line 60
    :cond_1
    iput-object p1, p0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->a:Ljava/lang/String;

    .line 61
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->b:F

    .line 62
    invoke-static {p3}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->c:Ljava/util/Collection;

    .line 63
    if-eqz p12, :cond_2

    .line 64
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->h:Ljava/util/EnumSet;

    .line 69
    :goto_0
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 70
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 71
    sget-object v5, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;->FINISH:Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 66
    :cond_2
    const-class v2, Lcom/facebook/tools/dextr/bridge/constants/FilterType;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->h:Ljava/util/EnumSet;

    goto :goto_0

    .line 73
    :cond_3
    if-eqz p7, :cond_4

    .line 74
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;->REQUIRED:Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_4
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->d:Ljava/util/Map;

    .line 78
    iput-wide p8, p0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->e:J

    .line 79
    iput-wide p5, p0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->f:J

    .line 80
    move-wide/from16 v0, p10

    iput-wide v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->g:J

    .line 81
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->b:F

    return v0
.end method

.method public final a(I)Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;
    .locals 2
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;

    return-object v0
.end method

.method public final b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->e:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->f:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->g:J

    return-wide v0
.end method

.method public final f()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/tools/dextr/bridge/constants/FilterType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->h:Ljava/util/EnumSet;

    return-object v0
.end method
