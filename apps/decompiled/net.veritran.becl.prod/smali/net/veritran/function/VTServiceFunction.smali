.class public Lnet/veritran/function/VTServiceFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/function/IVTFunction;


# instance fields
.field private a:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

.field private b:Lnet/veritran/vtuserapplication/model/Model;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    iput-object p1, p0, Lnet/veritran/function/VTServiceFunction;->a:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    const/4 v10, 0x0

    const/16 v9, 0xc9

    const/16 v8, 0xc8

    const/16 v7, 0xa

    const/4 v6, 0x0

    iget-object v0, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    const-string v1, ""

    invoke-virtual {v0, v7, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    const-string v1, ""

    invoke-virtual {v0, v8, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    const-string v1, ""

    invoke-virtual {v0, v9, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->cleanAllMessageBuffers()V

    iget-object v0, p0, Lnet/veritran/function/VTServiceFunction;->a:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->getInputRegisters()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/VTServiceFunction;->a:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->getServiceCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTSERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "servicecode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    invoke-virtual {v2, v6, v1}, Lnet/veritran/vtuserapplication/model/Model;->addMessageBuffer(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceRegister;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceRegister;->getRegisterId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceRegister;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "VTSERVICE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reg:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {v0, v10}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "VTSERVICE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "value postparsing:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "VTSERVICE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "value patched:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "test"

    const-string v3, "VTSERVICE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Register "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value to send is NULL; patched to \'test\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    invoke-virtual {v3, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addMessageBuffer(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lnet/veritran/function/VTServiceFunction;->a:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->getIsAsync()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/function/VTServiceFunction$1;

    invoke-direct {v1, p0}, Lnet/veritran/function/VTServiceFunction$1;-><init>(Lnet/veritran/function/VTServiceFunction;)V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v0, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->sendTransaction()V

    iget-object v0, p0, Lnet/veritran/function/VTServiceFunction;->a:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->getIsAsync()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "VTSERVICE"

    const-string v1, "checkErrors"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VTSERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "m.getRegister(10):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    invoke-virtual {v2, v7}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VTSERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "m.getRegister(200):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    invoke-virtual {v2, v8}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VTSERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "m.getRegister(201):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    invoke-virtual {v2, v9}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    invoke-virtual {v0, v7}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v1

    new-instance v1, Lnet/veritran/function/exception/VTFunctionException;

    iget-object v2, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v0, v2}, Lnet/veritran/function/exception/VTFunctionException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v0, "VTSERVICE"

    const-string v1, "checkErrors no DH errors"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    invoke-virtual {v0, v8}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v1, ""

    iget-object v0, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    invoke-virtual {v0, v9}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    :goto_1
    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    new-instance v1, Lnet/veritran/function/exception/VTFunctionException;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2, v0}, Lnet/veritran/function/exception/VTFunctionException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v0, Lnet/veritran/function/exception/VTFunctionException;

    const-string v1, "ZZZ"

    iget-object v2, p0, Lnet/veritran/function/VTServiceFunction;->b:Lnet/veritran/vtuserapplication/model/Model;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v6, v1, v2}, Lnet/veritran/function/exception/VTFunctionException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object v0, v1

    goto :goto_1
.end method

.method public getDataModel()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/VTServiceFunction;->a:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    return-object v0
.end method
