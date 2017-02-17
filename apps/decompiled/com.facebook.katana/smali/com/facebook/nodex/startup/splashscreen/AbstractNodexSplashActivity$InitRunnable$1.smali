.class Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable$1;
.super Ljava/lang/Object;
.source "AbstractNodexSplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;


# direct methods
.method constructor <init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;J)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable$1;->b:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;

    iput-wide p2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 487
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable$1;->b:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;

    iget-object v0, v0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->d(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InitRunnable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable$1;->a:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable$1;->b:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;

    iget-object v0, v0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->i(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)V

    .line 489
    return-void
.end method
