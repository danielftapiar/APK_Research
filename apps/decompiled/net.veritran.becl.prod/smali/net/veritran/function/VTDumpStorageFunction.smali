.class public Lnet/veritran/function/VTDumpStorageFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/function/IVTFunction;


# instance fields
.field private a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/function/VTDumpStorageFunction;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnet/veritran/function/VTDumpStorageFunction;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addDump(Lnet/veritran/function/model/Dump;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/VTDumpStorageFunction;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public execute()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lnet/veritran/function/VTDumpStorageFunction;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    iget-object v0, p0, Lnet/veritran/function/VTDumpStorageFunction;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/Dump;

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getOutput()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getOutput()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->isClean()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getInput()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getInput()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->isEval()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getInput()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v3, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v4

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getOutput()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0, v3}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getInput()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getOutput()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getOutput()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->isClean()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getOutput()Ljava/lang/String;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0, v10}, Lnet/veritran/vtuserapplication/model/Model;->cleanAllRegisters([I)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getOutput()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getArray()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getArray()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->isClean()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getArray()Ljava/lang/String;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0, v10}, Lnet/veritran/vtuserapplication/model/Model;->cleanAllArrays([I)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getArray()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lnet/veritran/vtuserapplication/model/Model;->cleanArray(I)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getArray()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getArray()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getInput()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getInput()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :try_start_0
    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getArray()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v3, v7

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v3, -0x1

    const/4 v4, 0x1

    aget-object v4, v7, v4

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v3

    move v5, v6

    :goto_3
    const/4 v3, 0x2

    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    new-instance v9, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v9, v8}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    if-eqz v5, :cond_b

    :cond_8
    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->isMarked()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_9
    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->isEval()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getInput()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    invoke-virtual {v3, v8}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRowSelected()I

    move-result v4

    invoke-virtual {v3, v4, v7, v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->setValue(IILjava/lang/String;)V

    :goto_5
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/model/Model;->addArray(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_a
    const/4 v3, 0x1

    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v4, v3

    move v5, v2

    goto :goto_3

    :cond_b
    move v3, v2

    :goto_6
    if-ge v3, v4, :cond_9

    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getInput()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_d
    invoke-virtual {v3, v4, v7, v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->setValue(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getImage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getImage()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->isClean()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lnet/veritran/function/model/Dump;->getImage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->cleanPersistentImages()V

    goto/16 :goto_2

    :cond_f
    return-void
.end method
