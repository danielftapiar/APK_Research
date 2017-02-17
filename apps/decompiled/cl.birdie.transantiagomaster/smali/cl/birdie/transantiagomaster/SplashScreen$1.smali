.class final Lcl/birdie/transantiagomaster/SplashScreen$1;
.super Ljava/lang/Thread;
.source "SplashScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/SplashScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/SplashScreen;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/SplashScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/SplashScreen$1;->this$0:Lcl/birdie/transantiagomaster/SplashScreen;

    .line 18
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "waited":I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/SplashScreen$1;->this$0:Lcl/birdie/transantiagomaster/SplashScreen;

    iget-boolean v1, v1, Lcl/birdie/transantiagomaster/SplashScreen;->_active:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcl/birdie/transantiagomaster/SplashScreen$1;->this$0:Lcl/birdie/transantiagomaster/SplashScreen;

    iget v1, v1, Lcl/birdie/transantiagomaster/SplashScreen;->_splashTime:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_2

    .line 32
    :cond_1
    iget-object v1, p0, Lcl/birdie/transantiagomaster/SplashScreen$1;->this$0:Lcl/birdie/transantiagomaster/SplashScreen;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/SplashScreen;->finish()V

    .line 33
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v2, v1, Lcl/birdie/params/Preferencias;->NumeroEjecuciones:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcl/birdie/params/Preferencias;->NumeroEjecuciones:I

    .line 34
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 38
    iget-object v1, p0, Lcl/birdie/transantiagomaster/SplashScreen$1;->this$0:Lcl/birdie/transantiagomaster/SplashScreen;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/SplashScreen$1;->this$0:Lcl/birdie/transantiagomaster/SplashScreen;

    const-class v4, Lcl/birdie/transantiagomaster/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 41
    :goto_1
    return-void

    .line 24
    :cond_2
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-static {v1, v2}, Lcl/birdie/transantiagomaster/SplashScreen$1;->sleep(J)V

    .line 25
    iget-object v1, p0, Lcl/birdie/transantiagomaster/SplashScreen$1;->this$0:Lcl/birdie/transantiagomaster/SplashScreen;

    iget-boolean v1, v1, Lcl/birdie/transantiagomaster/SplashScreen;->_active:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 26
    add-int/lit8 v0, v0, 0x64

    goto :goto_0

    :catch_0
    move-exception v1

    .line 32
    iget-object v1, p0, Lcl/birdie/transantiagomaster/SplashScreen$1;->this$0:Lcl/birdie/transantiagomaster/SplashScreen;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/SplashScreen;->finish()V

    .line 33
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v2, v1, Lcl/birdie/params/Preferencias;->NumeroEjecuciones:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcl/birdie/params/Preferencias;->NumeroEjecuciones:I

    .line 34
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 38
    iget-object v1, p0, Lcl/birdie/transantiagomaster/SplashScreen$1;->this$0:Lcl/birdie/transantiagomaster/SplashScreen;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/SplashScreen$1;->this$0:Lcl/birdie/transantiagomaster/SplashScreen;

    const-class v4, Lcl/birdie/transantiagomaster/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/SplashScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    iget-object v2, p0, Lcl/birdie/transantiagomaster/SplashScreen$1;->this$0:Lcl/birdie/transantiagomaster/SplashScreen;

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/SplashScreen;->finish()V

    .line 33
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v3, v2, Lcl/birdie/params/Preferencias;->NumeroEjecuciones:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcl/birdie/params/Preferencias;->NumeroEjecuciones:I

    .line 34
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 38
    iget-object v2, p0, Lcl/birdie/transantiagomaster/SplashScreen$1;->this$0:Lcl/birdie/transantiagomaster/SplashScreen;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/SplashScreen$1;->this$0:Lcl/birdie/transantiagomaster/SplashScreen;

    const-class v5, Lcl/birdie/transantiagomaster/MainActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcl/birdie/transantiagomaster/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 40
    throw v1
.end method
