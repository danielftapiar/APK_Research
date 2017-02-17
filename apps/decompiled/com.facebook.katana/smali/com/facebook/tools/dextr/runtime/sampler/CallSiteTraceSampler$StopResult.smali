.class final enum Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;
.super Ljava/lang/Enum;
.source "CallSiteTraceSampler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

.field public static final enum ABORT_DICE:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

.field public static final enum ABORT_NO_CONFIG:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

.field public static final enum ABORT_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

.field public static final enum CONTINUE:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

.field public static final enum STOP_FINISHER_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

.field public static final enum STOP_MAIN_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->CONTINUE:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    .line 23
    new-instance v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    const-string v1, "STOP_MAIN_TIMEOUT"

    invoke-direct {v0, v1, v4}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->STOP_MAIN_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    .line 24
    new-instance v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    const-string v1, "STOP_FINISHER_TIMEOUT"

    invoke-direct {v0, v1, v5}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->STOP_FINISHER_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    .line 25
    new-instance v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    const-string v1, "ABORT_TIMEOUT"

    invoke-direct {v0, v1, v6}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ABORT_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    .line 26
    new-instance v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    const-string v1, "ABORT_DICE"

    invoke-direct {v0, v1, v7}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ABORT_DICE:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    .line 27
    new-instance v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    const-string v1, "ABORT_NO_CONFIG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ABORT_NO_CONFIG:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    sget-object v1, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->CONTINUE:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->STOP_MAIN_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->STOP_FINISHER_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ABORT_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ABORT_DICE:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ABORT_NO_CONFIG:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->$VALUES:[Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    return-object v0
.end method

.method public static values()[Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->$VALUES:[Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    invoke-virtual {v0}, [Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    return-object v0
.end method
