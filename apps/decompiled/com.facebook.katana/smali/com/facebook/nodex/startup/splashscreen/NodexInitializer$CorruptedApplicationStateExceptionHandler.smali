.class Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$CorruptedApplicationStateExceptionHandler;
.super Ljava/lang/Object;
.source "NodexInitializer.java"

# interfaces
.implements Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$EnsureDexExceptionHandler;


# instance fields
.field final synthetic a:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;


# direct methods
.method constructor <init>(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$CorruptedApplicationStateExceptionHandler;->a:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lcom/facebook/nodex/startup/splashscreen/NodexError;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 325
    const-class v0, Lcom/facebook/common/dextricks/CorruptedApplicationStateException;

    invoke-static {p1, v0, v2}, Lcom/facebook/nodex/startup/splashscreen/NodexExceptionUtil;->a(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 329
    check-cast v0, Lcom/facebook/common/dextricks/CorruptedApplicationStateException;

    .line 332
    sget-object v3, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->NONE:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    .line 334
    sget-object v4, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$1;->a:[I

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/CorruptedApplicationStateException;->a()Lcom/facebook/common/dextricks/CorruptedApplicationStateException$Remedy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/CorruptedApplicationStateException$Remedy;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    move-object v2, v3

    .line 346
    :goto_0
    iget-object v3, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$CorruptedApplicationStateExceptionHandler;->a:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    invoke-static {v3}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->a(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/nodex/startup/splashscreen/NodexError;->b(Landroid/content/Context;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v3

    const-string v4, "nodex_cannot_launch_fb_app_string"

    invoke-virtual {v3, v4}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->b(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Ljava/lang/Throwable;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a()Lcom/facebook/nodex/startup/splashscreen/NodexError;

    move-result-object v2

    .line 353
    :cond_0
    return-object v2

    .line 336
    :pswitch_0
    sget-object v2, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->UNINSTALL:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    .line 337
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$CorruptedApplicationStateExceptionHandler;->a:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->b(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 340
    :pswitch_1
    sget-object v2, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->NONE:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    .line 341
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$CorruptedApplicationStateExceptionHandler;->a:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->c(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)Lcom/facebook/nodex/resources/NodexResources;

    move-result-object v0

    const-string v3, "nodex_reboot_string"

    invoke-virtual {v0, v3}, Lcom/facebook/nodex/resources/NodexResources;->c(Ljava/lang/String;)I

    move-result v0

    .line 342
    iget-object v3, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$CorruptedApplicationStateExceptionHandler;->a:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    invoke-static {v3}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->a(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
