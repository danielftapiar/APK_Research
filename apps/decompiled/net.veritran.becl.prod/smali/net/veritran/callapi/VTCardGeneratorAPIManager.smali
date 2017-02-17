.class public Lnet/veritran/callapi/VTCardGeneratorAPIManager;
.super Ljava/lang/Object;


# static fields
.field public static final ERR_BUILDING_CARD:Ljava/lang/String; = "004"

.field public static final ERR_GENERATING_DATA:Ljava/lang/String; = "003"

.field public static final ERR_GENERIC:Ljava/lang/String; = "001"

.field public static final ERR_INVALID_PARAMS:Ljava/lang/String; = "002"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process()V
    .locals 10

    const/16 v9, 0x70

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v7

    const/16 v0, 0x6f

    :try_start_0
    const-string v1, "0"

    invoke-virtual {v7, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x6e

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/16 v0, 0x70

    const-string v1, "000"

    invoke-virtual {v7, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;
    :try_end_0
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    const/16 v1, 0x136

    :try_start_1
    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/veritran/callapi/VTCardGeneratorAPIManager;->toInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x138

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/veritran/callapi/VTCardGeneratorAPIManager;->toInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x137

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/veritran/callapi/VTCardGeneratorAPIManager;->toInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x139

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/veritran/callapi/VTCardGeneratorAPIManager;->toInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    :try_start_2
    new-instance v5, Lnet/veritran/callapi/function/CardDataGeneration;

    invoke-direct {v5}, Lnet/veritran/callapi/function/CardDataGeneration;-><init>()V
    :try_end_2
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v5, v1, v2, v3, v4}, Lnet/veritran/callapi/function/CardDataGeneration;->generateCardData(IIII)Lnet/veritran/callapi/model/CardData;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x13a

    :try_start_4
    invoke-virtual {v1}, Lnet/veritran/callapi/model/CardData;->getCardNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v2, 0x13b

    invoke-virtual {v1}, Lnet/veritran/callapi/model/CardData;->getCardNumberFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v2, 0x13c

    invoke-virtual {v1}, Lnet/veritran/callapi/model/CardData;->getDueDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v2, 0x13d

    invoke-virtual {v1}, Lnet/veritran/callapi/model/CardData;->getDueDateFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v2, 0x13e

    invoke-virtual {v1}, Lnet/veritran/callapi/model/CardData;->getSecurityCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    const/16 v1, 0x70

    const-string v2, "002"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    new-instance v0, Lnet/veritran/callapi/exception/VTCallAPIException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lnet/veritran/callapi/exception/VTCallAPIException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    const-string v0, "001"

    invoke-virtual {v7, v9, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v1

    const/16 v1, 0x70

    :try_start_5
    const-string v2, "003"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    new-instance v0, Lnet/veritran/callapi/exception/VTCallAPIException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lnet/veritran/callapi/exception/VTCallAPIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v1, 0x70

    const-string v2, "004"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    new-instance v0, Lnet/veritran/callapi/exception/VTCallAPIException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lnet/veritran/callapi/exception/VTCallAPIException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;
    :try_end_5
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v8

    const/16 v0, 0x146

    :try_start_6
    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x136

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x145

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x138

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x137

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x139

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v6

    :try_start_7
    new-instance v0, Lnet/veritran/callapi/function/CardDataGeneration;

    invoke-direct {v0}, Lnet/veritran/callapi/function/CardDataGeneration;-><init>()V
    :try_end_7
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    invoke-virtual/range {v0 .. v6}, Lnet/veritran/callapi/function/CardDataGeneration;->generateCardDataVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/callapi/model/CardData;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x13a

    :try_start_9
    invoke-virtual {v0}, Lnet/veritran/callapi/model/CardData;->getCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v1, 0x13b

    invoke-virtual {v0}, Lnet/veritran/callapi/model/CardData;->getCardNumberFormatted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v1, 0x13c

    invoke-virtual {v0}, Lnet/veritran/callapi/model/CardData;->getDueDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v1, 0x13d

    invoke-virtual {v0}, Lnet/veritran/callapi/model/CardData;->getDueDateFormatted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v1, 0x13e

    invoke-virtual {v0}, Lnet/veritran/callapi/model/CardData;->getSecurityCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const/16 v0, 0x70

    const-string v1, "002"

    invoke-virtual {v8, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    new-instance v0, Lnet/veritran/callapi/exception/VTCallAPIException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lnet/veritran/callapi/exception/VTCallAPIException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v0

    const/16 v0, 0x70

    const-string v1, "003"

    invoke-virtual {v8, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    new-instance v0, Lnet/veritran/callapi/exception/VTCallAPIException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lnet/veritran/callapi/exception/VTCallAPIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x70

    const-string v1, "004"

    invoke-virtual {v8, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    new-instance v0, Lnet/veritran/callapi/exception/VTCallAPIException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lnet/veritran/callapi/exception/VTCallAPIException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
