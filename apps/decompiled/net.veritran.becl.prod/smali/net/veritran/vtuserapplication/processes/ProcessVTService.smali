.class public Lnet/veritran/vtuserapplication/processes/ProcessVTService;
.super Ljava/lang/Object;


# instance fields
.field private a:Lnet/veritran/function/exception/VTFunctionException;

.field public func:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ProcessVTService"

    const-string v1, "ProcessVTService (default VTCommonActivity)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->func:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    return-void
.end method


# virtual methods
.method public checkForException()V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->func:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->getIsAsync()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->a:Lnet/veritran/function/exception/VTFunctionException;

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->a:Lnet/veritran/function/exception/VTFunctionException;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->nofityFunctionException(Lnet/veritran/function/exception/VTFunctionException;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto :goto_0
.end method

.method public execute()V
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getVTServiceImplementation()Lnet/veritran/vtuserapplication/processes/VTServiceInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/veritran/vtuserapplication/processes/VTServiceInterface;->execute(Lnet/veritran/vtuserapplication/processes/ProcessVTService;)V

    return-void
.end method

.method public processBackground()V
    .locals 3

    const-string v0, "ProcessVTService"

    const-string v1, "ProcessVTService::processBackground "

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ProcessVTService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IsAsync: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->func:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->getIsAsync()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->func:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->getIsAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->waitUntilProcessAvailable()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->func:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->getAsyncNext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/processes/ProcessVTService$1;

    invoke-direct {v1, p0}, Lnet/veritran/vtuserapplication/processes/ProcessVTService$1;-><init>(Lnet/veritran/vtuserapplication/processes/ProcessVTService;)V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public processEnd()V
    .locals 2

    const-string v0, "ProcessVTService"

    const-string v1, "SendTransactionTask::onPostExecute "

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->checkForException()V

    return-void
.end method

.method public setVTException(Lnet/veritran/function/exception/VTFunctionException;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->a:Lnet/veritran/function/exception/VTFunctionException;

    return-void
.end method
