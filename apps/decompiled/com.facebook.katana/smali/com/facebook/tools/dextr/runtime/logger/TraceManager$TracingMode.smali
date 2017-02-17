.class public final enum Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;
.super Ljava/lang/Enum;
.source "TraceManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

.field public static final enum DISABLED:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

.field public static final enum SAMPLING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

.field public static final enum SAMPLING_SAVING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->DISABLED:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    .line 27
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    const-string v1, "SAMPLING"

    invoke-direct {v0, v1, v3}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->SAMPLING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    .line 28
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    const-string v1, "SAMPLING_SAVING"

    invoke-direct {v0, v1, v4}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->SAMPLING_SAVING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->DISABLED:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->SAMPLING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->SAMPLING_SAVING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->$VALUES:[Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    return-object v0
.end method

.method public static values()[Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->$VALUES:[Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    invoke-virtual {v0}, [Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    return-object v0
.end method
