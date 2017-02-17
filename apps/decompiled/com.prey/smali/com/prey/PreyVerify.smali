.class public Lcom/prey/PreyVerify;
.super Ljava/lang/Object;
.source "PreyVerify.java"


# static fields
.field private static instance:Lcom/prey/PreyVerify;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/PreyVerify;->instance:Lcom/prey/PreyVerify;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-direct {p0, p1}, Lcom/prey/PreyVerify;->init(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/prey/PreyVerify;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v0, Lcom/prey/PreyVerify;->instance:Lcom/prey/PreyVerify;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/prey/PreyVerify;

    invoke-direct {v0, p0}, Lcom/prey/PreyVerify;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/prey/PreyVerify;->instance:Lcom/prey/PreyVerify;

    .line 25
    :cond_0
    sget-object v0, Lcom/prey/PreyVerify;->instance:Lcom/prey/PreyVerify;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    move-object v0, p1

    .line 30
    .local v0, "myContext":Landroid/content/Context;
    new-instance v1, Lcom/prey/PreyVerify$1;

    invoke-direct {v1, p0, v0}, Lcom/prey/PreyVerify$1;-><init>(Lcom/prey/PreyVerify;Landroid/content/Context;)V

    .line 41
    invoke-virtual {v1}, Lcom/prey/PreyVerify$1;->start()V

    .line 42
    return-void
.end method
