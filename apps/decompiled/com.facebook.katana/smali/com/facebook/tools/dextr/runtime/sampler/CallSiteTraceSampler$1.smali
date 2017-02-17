.class synthetic Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$1;
.super Ljava/lang/Object;
.source "CallSiteTraceSampler.java"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 150
    invoke-static {}, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;->values()[Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$1;->b:[I

    :try_start_0
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$1;->b:[I

    sget-object v1, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;->FINISH:Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$1;->b:[I

    sget-object v1, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;->REQUIRED:Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    .line 91
    :goto_1
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->values()[Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$1;->a:[I

    :try_start_2
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$1;->a:[I

    sget-object v1, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->STOP_MAIN_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$1;->a:[I

    sget-object v1, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->STOP_FINISHER_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$1;->a:[I

    sget-object v1, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ABORT_DICE:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$1;->a:[I

    sget-object v1, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ABORT_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$1;->a:[I

    sget-object v1, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ABORT_NO_CONFIG:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$1;->a:[I

    sget-object v1, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->CONTINUE:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
