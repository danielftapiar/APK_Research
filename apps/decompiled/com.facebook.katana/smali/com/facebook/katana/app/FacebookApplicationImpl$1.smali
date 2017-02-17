.class Lcom/facebook/katana/app/FacebookApplicationImpl$1;
.super Ljava/lang/Object;
.source "FacebookApplicationImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/inject/FbInjector;

.field final synthetic b:Lcom/facebook/katana/app/FacebookApplicationImpl;


# direct methods
.method constructor <init>(Lcom/facebook/katana/app/FacebookApplicationImpl;Lcom/facebook/inject/FbInjector;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$1;->b:Lcom/facebook/katana/app/FacebookApplicationImpl;

    iput-object p2, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$1;->a:Lcom/facebook/inject/FbInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 145
    const-string v0, "BlueService.FeedHack"

    const v1, -0x578a365b

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$1;->a:Lcom/facebook/inject/FbInjector;

    invoke-static {v0}, Lcom/facebook/fbservice/ops/DefaultBlueServiceOperationFactory;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/fbservice/ops/DefaultBlueServiceOperationFactory;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbservice/ops/BlueServiceOperationFactory;

    const-string v1, "init_feed_fetch_news_feed_before"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x20276bfa

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/tools/dextr/runtime/detour/BlueServiceOperationFactoryDetour;->a(Lcom/facebook/fbservice/ops/BlueServiceOperationFactory;Ljava/lang/String;Landroid/os/Bundle;I)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;->g()Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;->b()Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$OperationFuture;

    .line 151
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$1;->a:Lcom/facebook/inject/FbInjector;

    invoke-static {v0}, Lcom/facebook/fbservice/ops/DefaultBlueServiceOperationFactory;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/fbservice/ops/DefaultBlueServiceOperationFactory;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbservice/ops/BlueServiceOperationFactory;

    const-string v1, "init_feed_fetch_news_feed_after"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x9ddb3c4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/tools/dextr/runtime/detour/BlueServiceOperationFactoryDetour;->a(Lcom/facebook/fbservice/ops/BlueServiceOperationFactory;Ljava/lang/String;Landroid/os/Bundle;I)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;->g()Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;->b()Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$OperationFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    const v0, -0x58b19219

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    const v1, 0x348d1da3

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
.end method
