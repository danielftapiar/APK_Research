.class public Lcom/prey/actions/fileretrieval/FileretrievalService;
.super Landroid/app/IntentService;
.source "FileretrievalService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "PREY"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const-string v0, "***************onHandleIntent"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/prey/actions/fileretrieval/FileretrievalController;->getInstance()Lcom/prey/actions/fileretrieval/FileretrievalController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prey/actions/fileretrieval/FileretrievalService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prey/actions/fileretrieval/FileretrievalController;->run(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Lcom/prey/actions/fileretrieval/FileretrievalService;->stopSelf()V

    .line 41
    return-void
.end method
