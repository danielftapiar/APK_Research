.class Lcom/facebook/systrace/SystraceMessage$BeginSectionFlusher;
.super Ljava/lang/Object;
.source "SystraceMessage.java"

# interfaces
.implements Lcom/facebook/systrace/SystraceMessage$Flusher;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/facebook/systrace/SystraceMessage$BeginSectionFlusher;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 178
    invoke-static {p1}, Lcom/facebook/systrace/TraceDirect;->a(Ljava/lang/StringBuilder;)V

    .line 179
    return-void
.end method
