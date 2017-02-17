.class public Lnet/veritran/becl/prod/VTSpecialStartActivity;
.super Landroid/app/Activity;
.source "VTSpecialStartActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    invoke-virtual {v2, p0}, Lnet/veritran/VTUserApplicationSmart;->processGenericLaunchInitialization(Landroid/app/Activity;)V

    .line 14
    const/4 v0, 0x0

    .line 16
    .local v0, "startActivityIntent":Landroid/content/Intent;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-static {}, Lnet/veritran/becl/prod/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->activityPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".VTCommonActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "startActivityIntent":Landroid/content/Intent;
    .local v1, "startActivityIntent":Landroid/content/Intent;
    move-object v0, v1

    .line 20
    .end local v1    # "startActivityIntent":Landroid/content/Intent;
    .restart local v0    # "startActivityIntent":Landroid/content/Intent;
    :goto_0
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0}, Lnet/veritran/becl/prod/VTSpecialStartActivity;->startActivity(Landroid/content/Intent;)V

    .line 23
    invoke-virtual {p0}, Lnet/veritran/becl/prod/VTSpecialStartActivity;->finish()V

    .line 25
    return-void

    .line 18
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 30
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 42
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 36
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/veritran/VTUserApplicationSmart;->processGenericLaunchInitialization(Landroid/app/Activity;)V

    .line 37
    return-void
.end method
