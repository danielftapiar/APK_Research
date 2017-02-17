.class Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;
.super Landroid/os/AsyncTask;
.source "VTUserApplicationSmart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/VTUserApplicationSmart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelSetupTask"
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
.field act:Lnet/veritran/VTCommonActivity;

.field final synthetic this$0:Lnet/veritran/VTUserApplicationSmart;


# direct methods
.method public constructor <init>(Lnet/veritran/VTUserApplicationSmart;Lnet/veritran/VTAbstractActivity;)V
    .locals 2
    .param p2, "activ"    # Lnet/veritran/VTAbstractActivity;

    .prologue
    .line 2342
    iput-object p1, p0, Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;->this$0:Lnet/veritran/VTUserApplicationSmart;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2343
    check-cast p2, Lnet/veritran/VTCommonActivity;

    .end local p2    # "activ":Lnet/veritran/VTAbstractActivity;
    iput-object p2, p0, Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;->act:Lnet/veritran/VTCommonActivity;

    .line 2344
    const-string v0, "VTUserApplicationSmart"

    const-string v1, "ModelSetupTask"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2337
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 2369
    const-string v1, "VTUserApplicationSmart"

    const-string v2, "ModelSetupTask::doInBackground"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    :try_start_0
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;->this$0:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->setupModel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2392
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 2375
    :catch_0
    move-exception v0

    .line 2376
    .local v0, "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 2377
    const-string v1, "VTUserApplicationSmart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    :cond_1
    # getter for: Lnet/veritran/VTUserApplicationSmart;->application:Lnet/veritran/VTUserApplicationSmart;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->access$600()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    iget-boolean v1, v1, Lnet/veritran/VTUserApplicationSmart;->applicationNeedToUpdate:Z

    if-eqz v1, :cond_2

    .line 2382
    # getter for: Lnet/veritran/VTUserApplicationSmart;->resourcesLoader:Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->access$500()Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;

    move-result-object v1

    const-string v2, ""

    const-string v3, "sys0009"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2387
    :cond_2
    if-eqz v0, :cond_0

    .line 2388
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2337
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 2396
    const-string v1, "VTUserApplicationSmart"

    const-string v2, "ModelSetupTask::onPostExecute"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2407
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2409
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;->this$0:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2411
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2413
    const-string v1, "Ok"

    new-instance v2, Lnet/veritran/VTUserApplicationSmart$ModelSetupTask$1;

    invoke-direct {v2, p0}, Lnet/veritran/VTUserApplicationSmart$ModelSetupTask$1;-><init>(Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2453
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2461
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 2457
    :cond_0
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;->this$0:Lnet/veritran/VTUserApplicationSmart;

    const-string v2, "Previo cargar configuracion"

    # invokes: Lnet/veritran/VTUserApplicationSmart;->logMemory(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lnet/veritran/VTUserApplicationSmart;->access$400(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;)V

    .line 2459
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;->this$0:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->downloadXMLConfiguration()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 2349
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2355
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;->this$0:Lnet/veritran/VTUserApplicationSmart;

    const-string v2, "Previo iniciar"

    # invokes: Lnet/veritran/VTUserApplicationSmart;->logMemory(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lnet/veritran/VTUserApplicationSmart;->access$400(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;)V

    .line 2358
    # getter for: Lnet/veritran/VTUserApplicationSmart;->resourcesLoader:Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->access$500()Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;

    move-result-object v1

    const-string v2, ""

    const-string v3, "appSplashInitializing"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2359
    .local v0, "msgInitializing":Ljava/lang/String;
    const-string v1, "VTUserApplicationSmart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msgInitializing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;->act:Lnet/veritran/VTCommonActivity;

    invoke-virtual {v1, v0}, Lnet/veritran/VTCommonActivity;->setProgressMessage(Ljava/lang/String;)V

    .line 2364
    const-string v1, "VTUserApplicationSmart"

    const-string v2, "ModelSetupTask::onPreExecute"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    return-void
.end method
