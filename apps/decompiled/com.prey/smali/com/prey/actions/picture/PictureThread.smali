.class public Lcom/prey/actions/picture/PictureThread;
.super Ljava/lang/Thread;
.source "PictureThread.java"


# instance fields
.field private ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/prey/actions/picture/PictureThread;->ctx:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 23
    iget-object v1, p0, Lcom/prey/actions/picture/PictureThread;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/prey/actions/picture/PictureUtil;->getPicture(Landroid/content/Context;)Lcom/prey/actions/HttpDataService;

    move-result-object v0

    .line 24
    .local v0, "data":Lcom/prey/actions/HttpDataService;
    iget-object v1, p0, Lcom/prey/actions/picture/PictureThread;->ctx:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/prey/PreyEmail;->sendDataMail(Landroid/content/Context;Lcom/prey/actions/HttpDataService;)V

    .line 25
    return-void
.end method
