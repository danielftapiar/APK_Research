.class public Lnet/veritran/function/VTBranchFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/function/IVTFunction;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/veritran/function/VTBranchFunction;->a:Ljava/lang/String;

    iput-object v0, p0, Lnet/veritran/function/VTBranchFunction;->b:Ljava/lang/String;

    iput-object v0, p0, Lnet/veritran/function/VTBranchFunction;->c:Ljava/lang/String;

    iput-object v0, p0, Lnet/veritran/function/VTBranchFunction;->d:Ljava/util/Vector;

    iput-object p1, p0, Lnet/veritran/function/VTBranchFunction;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/veritran/function/VTBranchFunction;->b:Ljava/lang/String;

    iput-object p3, p0, Lnet/veritran/function/VTBranchFunction;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnet/veritran/function/VTBranchFunction;->d:Ljava/util/Vector;

    return-void
.end method

.method private a(Lnet/veritran/function/model/Condition;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lnet/veritran/function/VTBranchFunction;->a:Ljava/lang/String;

    sget-object v3, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v2, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p1}, Lnet/veritran/function/model/Condition;->getEvaluatedValueAsDouble()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    invoke-virtual {p1}, Lnet/veritran/function/model/Condition;->getOperation()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    new-instance v0, Lnet/veritran/function/exception/VTFunctionParserInvalidTypeException;

    const-string v2, "P011"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VTBranchFunction#evaluateNumeric. Tipo Operador: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/veritran/function/model/Condition;->getOperation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", no es valido o no esta sopotado por el parser."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/function/exception/VTFunctionParserInvalidTypeException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v2, Lnet/veritran/function/exception/VTFunctionParserNumberFormatException;

    const-string v3, "P012"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VTFunctionException#evaluateNumeric. Error parseando Double. Valores: INPUT="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lnet/veritran/function/VTBranchFunction;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". VALUE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lnet/veritran/function/model/Condition;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4, v0}, Lnet/veritran/function/exception/VTFunctionParserNumberFormatException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :sswitch_0
    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_1
    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_3
    cmpg-double v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_4
    cmpl-double v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_5
    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
        0x46 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public addCondition(Lnet/veritran/function/model/Condition;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/VTBranchFunction;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public execute()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lnet/veritran/function/VTBranchFunction;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lnet/veritran/function/VTBranchFunction;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/Condition;

    invoke-virtual {v0}, Lnet/veritran/function/model/Condition;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    new-instance v1, Lnet/veritran/function/exception/VTFunctionParserInvalidTypeException;

    const-string v3, "P010"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VTBranchFunction#evaluateCondition. Tipo Operacion: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/veritran/function/model/Condition;->getType()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", no es valido o no esta sopotado por el parser."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lnet/veritran/function/exception/VTFunctionParserInvalidTypeException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    :sswitch_0
    iget-object v3, p0, Lnet/veritran/function/VTBranchFunction;->a:Ljava/lang/String;

    sget-object v5, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v3, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/veritran/function/model/Condition;->getValue()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v5, v6}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lnet/veritran/function/model/Condition;->getOperation()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    new-instance v1, Lnet/veritran/function/exception/VTFunctionParserInvalidTypeException;

    const-string v3, "P011"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VTBranchFunction#evaluateString. Tipo Operador: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/veritran/function/model/Condition;->getOperation()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", no es valido o no esta sopotado por el parser."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lnet/veritran/function/exception/VTFunctionParserInvalidTypeException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    :sswitch_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_2

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/function/VTBranchFunction;->b:Ljava/lang/String;

    invoke-static {v2}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Lnet/veritran/function/model/Condition;->getResult()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    :goto_2
    return-void

    :sswitch_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_1

    :sswitch_3
    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    move v3, v2

    goto :goto_1

    :sswitch_4
    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    move v3, v2

    goto :goto_1

    :sswitch_5
    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    move v3, v2

    goto :goto_1

    :sswitch_6
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    move v3, v2

    goto :goto_1

    :sswitch_7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_1

    :sswitch_8
    invoke-direct {p0, v0}, Lnet/veritran/function/VTBranchFunction;->a(Lnet/veritran/function/model/Condition;)Z

    move-result v3

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/VTBranchFunction;->b:Ljava/lang/String;

    invoke-static {v1}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lnet/veritran/function/VTBranchFunction;->c:Ljava/lang/String;

    sget-object v3, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v2, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x4e -> :sswitch_8
        0x53 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
        0x32 -> :sswitch_5
        0x3c -> :sswitch_6
        0x46 -> :sswitch_7
    .end sparse-switch
.end method
