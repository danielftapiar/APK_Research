.class public Lcom/prey/activities/CheckPasswordActivity$VersionTask;
.super Landroid/os/AsyncTask;
.source "CheckPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/activities/CheckPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VersionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private googlePlayVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/prey/activities/CheckPasswordActivity;


# direct methods
.method public constructor <init>(Lcom/prey/activities/CheckPasswordActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/prey/activities/CheckPasswordActivity;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 485
    const-string v0, ""

    iput-object v0, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->googlePlayVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "inputObj"    # [Ljava/lang/Object;

    .prologue
    .line 493
    const-string v0, "VersionTask doInBackground"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 494
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v0

    iget-object v1, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v1}, Lcom/prey/activities/CheckPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prey/net/PreyWebServices;->googlePlayVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->googlePlayVersion:Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v0}, Lcom/prey/activities/CheckPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prey/PreyConfig;->registerC2dm()V

    .line 496
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 480
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 11
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 501
    const-string v9, "VersionTask onPostExecute"

    invoke-static {v9}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 502
    iget-object v9, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->googlePlayVersion:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 503
    iget-object v9, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v9}, Lcom/prey/activities/CheckPasswordActivity;->getVersionName()Ljava/lang/String;

    move-result-object v7

    .line 504
    .local v7, "versionName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "googlePlayVersion:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->googlePlayVersion:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " versionName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 505
    new-instance v6, Lcom/prey/util/Version;

    iget-object v9, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->googlePlayVersion:Ljava/lang/String;

    invoke-direct {v6, v9}, Lcom/prey/util/Version;-><init>(Ljava/lang/String;)V

    .line 506
    .local v6, "versionGoggle":Lcom/prey/util/Version;
    new-instance v8, Lcom/prey/util/Version;

    invoke-direct {v8, v7}, Lcom/prey/util/Version;-><init>(Ljava/lang/String;)V

    .line 508
    .local v8, "versionPackage":Lcom/prey/util/Version;
    invoke-virtual {v6, v8}, Lcom/prey/util/Version;->compareTo(Lcom/prey/util/Version;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 509
    iget-object v9, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v9}, Lcom/prey/activities/CheckPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09007a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 510
    .local v5, "title":Ljava/lang/String;
    iget-object v9, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    const v10, 0x7f09004a

    invoke-virtual {v9, v10}, Lcom/prey/activities/CheckPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "ccontinue":Ljava/lang/String;
    iget-object v9, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    const v10, 0x7f090050

    invoke-virtual {v9, v10}, Lcom/prey/activities/CheckPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "download":Ljava/lang/String;
    iget-object v9, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v9}, Lcom/prey/activities/CheckPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090087

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 513
    .local v4, "message":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    iget-object v9, v9, Lcom/prey/activities/CheckPasswordActivity;->activity:Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 514
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 515
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 516
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 517
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 518
    const/4 v9, -0x1

    new-instance v10, Lcom/prey/activities/CheckPasswordActivity$VersionTask$1;

    invoke-direct {v10, p0}, Lcom/prey/activities/CheckPasswordActivity$VersionTask$1;-><init>(Lcom/prey/activities/CheckPasswordActivity$VersionTask;)V

    invoke-virtual {v2, v9, v1, v10}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 524
    const/4 v9, -0x2

    new-instance v10, Lcom/prey/activities/CheckPasswordActivity$VersionTask$2;

    invoke-direct {v10, p0}, Lcom/prey/activities/CheckPasswordActivity$VersionTask$2;-><init>(Lcom/prey/activities/CheckPasswordActivity$VersionTask;)V

    invoke-virtual {v2, v9, v3, v10}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 536
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 539
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "ccontinue":Ljava/lang/String;
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    .end local v3    # "download":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "versionGoggle":Lcom/prey/util/Version;
    .end local v7    # "versionName":Ljava/lang/String;
    .end local v8    # "versionPackage":Lcom/prey/util/Version;
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 488
    const-string v0, ""

    iput-object v0, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->googlePlayVersion:Ljava/lang/String;

    .line 489
    return-void
.end method
