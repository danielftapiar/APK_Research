.class public Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;
.super Ljava/lang/Object;
.source "SequenceLoggerSamplingConfiguration.java"

# interfaces
.implements Lcom/facebook/tools/dextr/bridge/sampling/SamplingConfiguration;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    b = true
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:F

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Ljava/util/EnumSet;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;JLjava/util/EnumSet;)V
    .locals 4
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
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "sequence"
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "timeout"
        .end annotation
    .end param
    .param p6    # Ljava/util/EnumSet;
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
            "Ljava/lang/String;",
            "J",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/tools/dextr/bridge/constants/FilterType;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-direct {v0, v2, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v0

    .line 41
    :cond_1
    iput-object p1, p0, Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;->b:F

    .line 43
    iput-object p3, p0, Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;->c:Ljava/lang/String;

    .line 44
    iput-wide p4, p0, Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;->d:J

    .line 45
    if-eqz p6, :cond_2

    .line 46
    iput-object p6, p0, Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;->e:Ljava/util/EnumSet;

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_2
    const-class v0, Lcom/facebook/tools/dextr/bridge/constants/FilterType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;->e:Ljava/util/EnumSet;

    goto :goto_0
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;->b:F

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;->d:J

    return-wide v0
.end method

.method public final d()Ljava/util/EnumSet;
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
    .line 70
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;->e:Ljava/util/EnumSet;

    return-object v0
.end method
