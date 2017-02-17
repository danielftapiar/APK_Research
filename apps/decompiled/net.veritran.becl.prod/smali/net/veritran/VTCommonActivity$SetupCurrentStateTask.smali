.class Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;
.super Landroid/os/AsyncTask;
.source "VTCommonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/VTCommonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupCurrentStateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTCommonActivity;


# direct methods
.method private constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/veritran/VTCommonActivity;Lnet/veritran/VTCommonActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/veritran/VTCommonActivity;
    .param p2, "x1"    # Lnet/veritran/VTCommonActivity$1;

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;-><init>(Lnet/veritran/VTCommonActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 387
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 390
    :goto_0
    iget-object v1, p0, Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;->this$0:Lnet/veritran/VTCommonActivity;

    # getter for: Lnet/veritran/VTCommonActivity;->enableSecretScreen:Z
    invoke-static {v1}, Lnet/veritran/VTCommonActivity;->access$000(Lnet/veritran/VTCommonActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;->this$0:Lnet/veritran/VTCommonActivity;

    # getter for: Lnet/veritran/VTCommonActivity;->isInitPattern:Z
    invoke-static {v1}, Lnet/veritran/VTCommonActivity;->access$100(Lnet/veritran/VTCommonActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    :try_start_0
    iget-object v1, p0, Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;->this$0:Lnet/veritran/VTCommonActivity;

    const/4 v2, 0x0

    # setter for: Lnet/veritran/VTCommonActivity;->isInitPattern:Z
    invoke-static {v1, v2}, Lnet/veritran/VTCommonActivity;->access$102(Lnet/veritran/VTCommonActivity;Z)Z

    .line 394
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "VTCommonActivity"

    const-string v2, "Empty catch for Fortify"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 387
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 404
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;->this$0:Lnet/veritran/VTCommonActivity;

    # getter for: Lnet/veritran/VTCommonActivity;->isMatchPattern:Z
    invoke-static {v0}, Lnet/veritran/VTCommonActivity;->access$200(Lnet/veritran/VTCommonActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-virtual {v0}, Lnet/veritran/VTCommonActivity;->initContentView()V

    .line 406
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;->this$0:Lnet/veritran/VTCommonActivity;

    const-string v1, "default"

    # invokes: Lnet/veritran/VTCommonActivity;->populateList(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lnet/veritran/VTCommonActivity;->access$300(Lnet/veritran/VTCommonActivity;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;->this$0:Lnet/veritran/VTCommonActivity;

    const/4 v1, 0x0

    # setter for: Lnet/veritran/VTCommonActivity;->enableSecretScreen:Z
    invoke-static {v0, v1}, Lnet/veritran/VTCommonActivity;->access$002(Lnet/veritran/VTCommonActivity;Z)Z

    .line 411
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;->this$0:Lnet/veritran/VTCommonActivity;

    # invokes: Lnet/veritran/VTCommonActivity;->executeRetrieveFromBundle()V
    invoke-static {v0}, Lnet/veritran/VTCommonActivity;->access$400(Lnet/veritran/VTCommonActivity;)V

    .line 413
    :cond_0
    return-void
.end method
