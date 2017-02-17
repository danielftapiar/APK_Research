.class public Lnet/veritran/android/implementation/AndroidVTServiceConfigurationUpdateImplementationTask;
.super Landroid/os/AsyncTask;
.source "AndroidVTServiceConfigurationUpdateImplementationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private dialogId:Ljava/lang/String;

.field vts:Lnet/veritran/vtuserapplication/processes/ProcessVTServiceConfigurationUpdate;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/processes/ProcessVTServiceConfigurationUpdate;)V
    .locals 1
    .param p1, "vts"    # Lnet/veritran/vtuserapplication/processes/ProcessVTServiceConfigurationUpdate;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/android/implementation/AndroidVTServiceConfigurationUpdateImplementationTask;->dialogId:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lnet/veritran/android/implementation/AndroidVTServiceConfigurationUpdateImplementationTask;->vts:Lnet/veritran/vtuserapplication/processes/ProcessVTServiceConfigurationUpdate;

    .line 24
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/veritran/android/implementation/AndroidVTServiceConfigurationUpdateImplementationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 29
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidVTServiceConfigurationUpdateImplementationTask;->vts:Lnet/veritran/vtuserapplication/processes/ProcessVTServiceConfigurationUpdate;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/processes/ProcessVTServiceConfigurationUpdate;->processBackground()V

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/veritran/android/implementation/AndroidVTServiceConfigurationUpdateImplementationTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidVTServiceConfigurationUpdateImplementationTask;->dialogId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/android/implementation/AndroidVTServiceConfigurationUpdateImplementationTask;->dialogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->closeMessage(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/android/implementation/AndroidVTServiceConfigurationUpdateImplementationTask;->dialogId:Ljava/lang/String;

    .line 44
    :cond_0
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidVTServiceConfigurationUpdateImplementationTask;->vts:Lnet/veritran/vtuserapplication/processes/ProcessVTServiceConfigurationUpdate;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/processes/ProcessVTServiceConfigurationUpdate;->processEnd()V

    .line 45
    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 50
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getResourcesLoader()Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    move-result-object v0

    const-string v1, ""

    const-string v5, "appPleaseWait"

    invoke-interface {v0, v1, v5}, Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "msgPleaseWait":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getResourcesLoader()Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    move-result-object v0

    const-string v1, ""

    const-string v5, "appDownloadingConfiguration"

    invoke-interface {v0, v1, v5}, Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "msgDownloadingLocation":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/vtuserapplication/utils/VTRandom;->getInstance()Lnet/veritran/vtuserapplication/utils/VTRandom;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/VTRandom;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/android/implementation/AndroidVTServiceConfigurationUpdateImplementationTask;->dialogId:Ljava/lang/String;

    .line 55
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/android/implementation/AndroidVTServiceConfigurationUpdateImplementationTask;->dialogId:Ljava/lang/String;

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lnet/veritran/VTUserApplicationSmart;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 61
    return-void
.end method
