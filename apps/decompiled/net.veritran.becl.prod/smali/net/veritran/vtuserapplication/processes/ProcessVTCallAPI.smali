.class public Lnet/veritran/vtuserapplication/processes/ProcessVTCallAPI;
.super Ljava/lang/Object;


# instance fields
.field private a:Lnet/veritran/function/VTCallAPIFunction;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/veritran/function/VTCallAPIFunction;

    invoke-direct {v0}, Lnet/veritran/function/VTCallAPIFunction;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTCallAPI;->a:Lnet/veritran/function/VTCallAPIFunction;

    const-string v0, "ProcessVTCallAPI"

    const-string v1, "new VTCallAPIFunction()"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;->getApiId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;->getFunctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;->getCallAPIItems()Ljava/util/List;

    move-result-object v0

    const-string v1, "ProcessVTCallAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callAPIItems:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPIItem;

    const-string v1, "ProcessVTCallAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " callAPIItem:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPIItem;->getRegisterId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v5}, Lnet/veritran/function/parsers/ElementParser;->internalParse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPIItem;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, v5}, Lnet/veritran/function/parsers/ElementParser;->internalParse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->debugRegisters()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTCallAPI;->a:Lnet/veritran/function/VTCallAPIFunction;

    invoke-virtual {v0}, Lnet/veritran/function/VTCallAPIFunction;->execute()V
    :try_end_0
    .catch Lnet/veritran/function/exception/VTFunctionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
