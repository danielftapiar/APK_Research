.class Lcom/prey/PreyVerify$1;
.super Ljava/lang/Thread;
.source "PreyVerify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/PreyVerify;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/PreyVerify;

.field final synthetic val$myContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/prey/PreyVerify;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/PreyVerify;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/prey/PreyVerify$1;->this$0:Lcom/prey/PreyVerify;

    iput-object p2, p0, Lcom/prey/PreyVerify$1;->val$myContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 33
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Lcom/prey/PreyVerify$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v0

    iget-object v1, p0, Lcom/prey/PreyVerify$1;->val$myContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/prey/net/PreyWebServices;->verify(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    :goto_1
    return-void

    .line 34
    :catch_0
    move-exception v0

    goto :goto_0

    .line 38
    :catch_1
    move-exception v0

    goto :goto_1
.end method
