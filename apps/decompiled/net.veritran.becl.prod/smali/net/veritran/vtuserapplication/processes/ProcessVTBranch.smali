.class public Lnet/veritran/vtuserapplication/processes/ProcessVTBranch;
.super Ljava/lang/Object;


# instance fields
.field private a:Lnet/veritran/function/VTBranchFunction;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;)V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;->getInput()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;->getOutput()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnet/veritran/function/VTBranchFunction;

    invoke-direct {v3, v0, v1, v2}, Lnet/veritran/function/VTBranchFunction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTBranch;->a:Lnet/veritran/function/VTBranchFunction;

    const-string v3, "ProcessVTBranch"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "new VTBranchFunction("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;->getConditions()Ljava/util/List;

    move-result-object v0

    const-string v1, "ProcessVTBranch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "conditions:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->getOperation()Ljava/lang/String;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->getOperation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "N"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x4e

    :goto_2
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "ProcessVTBranch"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Condition c = new Condition("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lnet/veritran/function/model/Condition;

    invoke-direct {v5, v2, v1, v4, v0}, Lnet/veritran/function/model/Condition;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTBranch;->a:Lnet/veritran/function/VTBranchFunction;

    invoke-virtual {v0, v5}, Lnet/veritran/function/VTBranchFunction;->addCondition(Lnet/veritran/function/model/Condition;)V

    goto/16 :goto_0

    :cond_0
    const-string v2, "NE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x46

    move v2, v1

    goto :goto_1

    :cond_1
    const-string v2, "LT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x1e

    move v2, v1

    goto :goto_1

    :cond_2
    const-string v2, "GT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x14

    move v2, v1

    goto/16 :goto_1

    :cond_3
    const-string v2, "LE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v1, 0x28

    move v2, v1

    goto/16 :goto_1

    :cond_4
    const-string v2, "GE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v1, 0x32

    move v2, v1

    goto/16 :goto_1

    :cond_5
    const-string v2, "IN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x3c

    move v2, v1

    goto/16 :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid operation for Branch Condition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v1, 0x53

    goto/16 :goto_2

    :cond_8
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

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->debugRegisters()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTBranch;->a:Lnet/veritran/function/VTBranchFunction;

    invoke-virtual {v0}, Lnet/veritran/function/VTBranchFunction;->execute()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    return-void
.end method
