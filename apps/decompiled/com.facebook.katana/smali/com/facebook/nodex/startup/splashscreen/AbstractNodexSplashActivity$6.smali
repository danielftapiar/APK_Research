.class Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$6;
.super Ljava/lang/Object;
.source "AbstractNodexSplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;


# direct methods
.method constructor <init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$6;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 554
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$6;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->d(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)Ljava/lang/String;

    .line 556
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$6;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-virtual {v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->finish()V

    .line 560
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$6;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-virtual {v0, v1, v1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->overridePendingTransition(II)V

    .line 561
    return-void
.end method
