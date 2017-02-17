.class public Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;
.super Landroid/os/AsyncTask;
.source "AndroidVTServiceImplementationTask.java"


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

.field vts:Lnet/veritran/vtuserapplication/processes/ProcessVTService;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/processes/ProcessVTService;)V
    .locals 1
    .param p1, "vts"    # Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->dialogId:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->vts:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    .line 25
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 30
    new-instance v1, Lnet/veritran/function/VTServiceFunction;

    iget-object v2, p0, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->vts:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    iget-object v2, v2, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->func:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-direct {v1, v2}, Lnet/veritran/function/VTServiceFunction;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;)V

    .line 32
    .local v1, "vstf":Lnet/veritran/function/VTServiceFunction;
    :try_start_0
    invoke-virtual {v1}, Lnet/veritran/function/VTServiceFunction;->execute()V
    :try_end_0
    .catch Lnet/veritran/function/exception/VTFunctionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    iget-object v2, p0, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->vts:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->processBackground()V

    .line 37
    const/4 v2, 0x0

    return-object v2

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lnet/veritran/function/exception/VTFunctionException;
    iget-object v2, p0, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->vts:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    invoke-virtual {v2, v0}, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->setVTException(Lnet/veritran/function/exception/VTFunctionException;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->vts:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    iget-object v0, v0, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->func:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->getIsAsync()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->dialogId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->dialogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->closeMessage(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->dialogId:Ljava/lang/String;

    .line 52
    :cond_0
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->vts:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->processEnd()V

    .line 53
    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 58
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->vts:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    iget-object v0, v0, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->func:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->getIsAsync()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getResourcesLoader()Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    move-result-object v0

    const-string v1, ""

    const-string v5, "appPleaseWait"

    invoke-interface {v0, v1, v5}, Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "msgPleaseWait":Ljava/lang/String;
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->vts:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    iget-object v0, v0, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->func:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "message":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/vtuserapplication/utils/VTRandom;->getInstance()Lnet/veritran/vtuserapplication/utils/VTRandom;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/VTRandom;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->dialogId:Ljava/lang/String;

    .line 64
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->dialogId:Ljava/lang/String;

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lnet/veritran/VTUserApplicationSmart;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 72
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "msgPleaseWait":Ljava/lang/String;
    :cond_0
    return-void
.end method
