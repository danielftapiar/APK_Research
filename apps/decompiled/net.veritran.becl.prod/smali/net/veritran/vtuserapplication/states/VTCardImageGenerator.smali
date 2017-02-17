.class public Lnet/veritran/vtuserapplication/states/VTCardImageGenerator;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process()V
    .locals 11

    const/16 v10, 0x70

    const-string v0, "VTCardImageGenerator"

    const-string v1, "process"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v7

    const/16 v0, 0x6e

    :try_start_0
    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "VTCardImageGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "function:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x1

    const-string v2, "ERR001"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :catch_0
    move-exception v0

    const-string v0, "001"

    invoke-virtual {v7, v10, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    :try_start_1
    const-string v0, "VTCardImageGenerator"

    const-string v1, "generateCardImage()"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    const/16 v0, 0x13b

    invoke-virtual {v3, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13d

    invoke-virtual {v3, v1}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13e

    invoke-virtual {v3, v2}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x13f

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v8

    const/16 v4, 0x140

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x15a

    invoke-virtual {v3, v5}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x15b

    invoke-virtual {v3, v6}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    const/high16 v6, 0x42c80000    # 100.0f

    :try_start_2
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    :goto_1
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/ui/UIFactory;->generateCardImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;F)V

    const-string v0, "VTCardImageGenerator"

    const-string v1, "generateCardImage():end"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v0, 0x70

    :try_start_4
    const-string v1, "000"

    invoke-virtual {v7, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V
    :try_end_4
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "102"

    invoke-virtual {v7, v10, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v3

    :try_start_5
    const-string v3, "VTCardImageGenerator"

    const-string v9, "Cannot parse float cardDataNamePercentLength so it will use the default value"

    invoke-static {v3, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_6
    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ERR002"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_6
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    move-exception v0

    const-string v0, "005"

    invoke-virtual {v7, v10, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static resolveTemplate()Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    const-string v0, "070"

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    const/16 v2, 0x142

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VTCardImageGenerator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "selectedCode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    const/16 v3, 0x141

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VTCardImageGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "list="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VTCardImageGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "needle="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    const-string v4, "VTCardImageGenerator"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startIndex="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ";"

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VTCardImageGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selectedTemplate="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "VTCardImageGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selectedTemplate="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
