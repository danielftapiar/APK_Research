.class public Lnet/veritran/vtuserapplication/processes/ProcessVTServiceConfigurationUpdate;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ProcessVTServiceConfigurationUpdate"

    const-string v1, "ProcessVTServiceProcessVTServiceConfigurationUpdate "

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getVTServiceImplementation()Lnet/veritran/vtuserapplication/processes/VTServiceInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/veritran/vtuserapplication/processes/VTServiceInterface;->execute(Lnet/veritran/vtuserapplication/processes/ProcessVTServiceConfigurationUpdate;)V

    return-void
.end method

.method public processBackground()V
    .locals 2

    const-string v0, "ProcessVTServiceConfigurationUpdate"

    const-string v1, "ProcessVTServiceConfigurationUpdate::doInBackground "

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->gotoState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "ProcessVTServiceConfigurationUpdate"

    const-string v1, "Catched exception empty (fortify)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processEnd()V
    .locals 2

    const-string v0, "ProcessVTServiceConfigurationUpdate"

    const-string v1, "SendTransactionTask::onPostExecute "

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
