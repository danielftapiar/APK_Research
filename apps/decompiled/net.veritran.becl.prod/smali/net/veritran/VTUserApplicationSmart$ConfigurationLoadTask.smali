.class Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;
.super Landroid/os/AsyncTask;
.source "VTUserApplicationSmart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/VTUserApplicationSmart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigurationLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field act:Lnet/veritran/VTCommonActivity;

.field dialogId:Ljava/lang/String;

.field initializing:Z

.field maxProgress:I

.field showPleaseWait:Z

.field final synthetic this$0:Lnet/veritran/VTUserApplicationSmart;


# direct methods
.method public constructor <init>(Lnet/veritran/VTUserApplicationSmart;Lnet/veritran/VTAbstractActivity;)V
    .locals 2
    .param p2, "activ"    # Lnet/veritran/VTAbstractActivity;

    .prologue
    .line 2478
    iput-object p1, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->this$0:Lnet/veritran/VTUserApplicationSmart;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->showPleaseWait:Z

    .line 2470
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->dialogId:Ljava/lang/String;

    .line 2473
    const/16 v0, 0x64

    iput v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->maxProgress:I

    .line 2474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->initializing:Z

    .line 2479
    check-cast p2, Lnet/veritran/VTCommonActivity;

    .end local p2    # "activ":Lnet/veritran/VTAbstractActivity;
    iput-object p2, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->act:Lnet/veritran/VTCommonActivity;

    .line 2480
    const-string v0, "VTUserApplicationSmart"

    const-string v1, "ConfigurationLoadTask"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    return-void
.end method

.method public constructor <init>(Lnet/veritran/VTUserApplicationSmart;Lnet/veritran/VTAbstractActivity;Z)V
    .locals 2
    .param p2, "activ"    # Lnet/veritran/VTAbstractActivity;
    .param p3, "showPleaseWait"    # Z

    .prologue
    .line 2484
    iput-object p1, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->this$0:Lnet/veritran/VTUserApplicationSmart;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->showPleaseWait:Z

    .line 2470
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->dialogId:Ljava/lang/String;

    .line 2473
    const/16 v0, 0x64

    iput v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->maxProgress:I

    .line 2474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->initializing:Z

    .line 2485
    iput-boolean p3, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->showPleaseWait:Z

    .line 2486
    check-cast p2, Lnet/veritran/VTCommonActivity;

    .end local p2    # "activ":Lnet/veritran/VTAbstractActivity;
    iput-object p2, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->act:Lnet/veritran/VTCommonActivity;

    .line 2487
    const-string v0, "VTUserApplicationSmart"

    const-string v1, "ConfigurationLoadTask"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2466
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 2566
    const-string v0, "VTUserApplicationSmart"

    const-string v1, "ConfigurationLoadTask::doInBackground"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2568
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->this$0:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v0, p0}, Lnet/veritran/VTUserApplicationSmart;->getConfiguration(Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;)V

    .line 2569
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2466
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 2573
    const-string v0, "VTUserApplicationSmart"

    const-string v1, "ConfigurationLoadTask::onPostExecute"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2578
    iget-boolean v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->showPleaseWait:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->dialogId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2580
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->this$0:Lnet/veritran/VTUserApplicationSmart;

    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->dialogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->closeMessage(Ljava/lang/String;)V

    .line 2581
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->dialogId:Ljava/lang/String;

    .line 2584
    :cond_0
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->this$0:Lnet/veritran/VTUserApplicationSmart;

    const-string v1, "Post descargar configuracion"

    # invokes: Lnet/veritran/VTUserApplicationSmart;->logMemory(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->access$400(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;)V

    .line 2587
    return-void
.end method

.method protected onPreExecute()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 2492
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2495
    iget-boolean v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->showPleaseWait:Z

    if-eqz v0, :cond_0

    .line 2498
    # getter for: Lnet/veritran/VTUserApplicationSmart;->resourcesLoader:Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->access$500()Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;

    move-result-object v0

    const-string v1, ""

    const-string v5, "appDownloadingConfiguration"

    invoke-virtual {v0, v1, v5}, Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2501
    .local v2, "msgDownloadingLocation":Ljava/lang/String;
    # getter for: Lnet/veritran/VTUserApplicationSmart;->resourcesLoader:Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->access$500()Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;

    move-result-object v0

    const-string v1, ""

    const-string v5, "appPleaseWait"

    invoke-virtual {v0, v1, v5}, Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2503
    .local v3, "msgPleaseWait":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/vtuserapplication/utils/VTRandom;->getInstance()Lnet/veritran/vtuserapplication/utils/VTRandom;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/VTRandom;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->dialogId:Ljava/lang/String;

    .line 2505
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->this$0:Lnet/veritran/VTUserApplicationSmart;

    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->dialogId:Ljava/lang/String;

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lnet/veritran/VTUserApplicationSmart;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 2519
    .end local v2    # "msgDownloadingLocation":Ljava/lang/String;
    .end local v3    # "msgPleaseWait":Ljava/lang/String;
    :cond_0
    # getter for: Lnet/veritran/VTUserApplicationSmart;->resourcesLoader:Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->access$500()Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;

    move-result-object v0

    const-string v1, ""

    const-string v4, "appSplashInitializing"

    invoke-virtual {v0, v1, v4}, Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2521
    .local v7, "msgInitializing":Ljava/lang/String;
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->act:Lnet/veritran/VTCommonActivity;

    invoke-virtual {v0, v7}, Lnet/veritran/VTCommonActivity;->setProgressMessage(Ljava/lang/String;)V

    .line 2532
    const-string v0, "VTUserApplicationSmart"

    const-string v1, "ModelSetupTask::onPreExecute"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x0

    .line 2537
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 2539
    iget-boolean v2, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->initializing:Z

    if-eqz v2, :cond_0

    .line 2541
    iput-boolean v5, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->initializing:Z

    .line 2544
    # getter for: Lnet/veritran/VTUserApplicationSmart;->resourcesLoader:Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->access$500()Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;

    move-result-object v2

    const-string v3, ""

    const-string v4, "appSplashDownloadingContent"

    invoke-virtual {v2, v3, v4}, Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2545
    .local v0, "msgDownloadingContent":Ljava/lang/String;
    iget-object v2, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->act:Lnet/veritran/VTCommonActivity;

    invoke-virtual {v2, v0}, Lnet/veritran/VTCommonActivity;->setProgressMessage(Ljava/lang/String;)V

    .line 2547
    .end local v0    # "msgDownloadingContent":Ljava/lang/String;
    :cond_0
    aget-object v2, p1, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->maxProgress:I

    div-int v1, v2, v3

    .line 2548
    .local v1, "percentage":I
    if-gez v1, :cond_1

    .line 2549
    const/4 v1, 0x0

    .line 2551
    :cond_1
    iget-object v2, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->act:Lnet/veritran/VTCommonActivity;

    invoke-virtual {v2, v1}, Lnet/veritran/VTCommonActivity;->setProgressPercentage(I)V

    .line 2552
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2466
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 2556
    iput p1, p0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->maxProgress:I

    .line 2557
    return-void
.end method

.method public updateProgress(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 2561
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->publishProgress([Ljava/lang/Object;)V

    .line 2562
    return-void
.end method
