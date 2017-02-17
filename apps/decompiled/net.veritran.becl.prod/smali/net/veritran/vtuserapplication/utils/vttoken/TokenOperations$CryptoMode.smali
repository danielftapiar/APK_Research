.class public Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CryptoMode"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->a:I

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->b:Ljava/lang/String;

    return-void
.end method

.method private a()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/16 v4, 0x3b

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isTimeStampPresent()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getDataInput()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getDataInput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/16 v0, 0x3c

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getDataInput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v0, "TokenOperations"

    const-string v1, "Catched exception empty (fortify)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing TimeStamp data. Invalid Suite ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const/16 v1, 0x30

    if-le v0, v1, :cond_5

    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :sswitch_1
    if-le v0, v4, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :sswitch_2
    if-le v0, v4, :cond_4

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    mul-int/lit8 v0, v0, 0x3c

    goto/16 :goto_0

    :cond_5
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x48 -> :sswitch_0
        0x4d -> :sswitch_2
        0x53 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->b:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChallengeFormat()C
    .locals 2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getDataInput()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x51

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x20

    goto :goto_0
.end method

.method public getChallengeLength()I
    .locals 3

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getDataInput()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x51

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x51

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCryptoFunctionName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getFullCryptoFunctionName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataInput()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->b:Ljava/lang/String;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->b:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullCryptoFunctionName()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x3a

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->b:Ljava/lang/String;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionDigit()I
    .locals 2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getFullCryptoFunctionName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHashFunctionName()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2d

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getFullCryptoFunctionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStep()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->a:I

    return v0
.end method

.method public isChallengePresent()Z
    .locals 2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getDataInput()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCounterPresent()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getDataInput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPINPresent()Z
    .locals 2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getDataInput()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSessionPresent()Z
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getDataInput()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const/16 v0, 0x3e8

    :cond_0
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getDataInput()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_1

    if-ge v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeStampPresent()Z
    .locals 2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getDataInput()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showInfo()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->b:Ljava/lang/String;

    return-object v0
.end method

.method public validateSuite(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HOTP-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OCRA-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TOTP-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VRTR-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Suite. ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HOTP-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isCounterPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isChallengePresent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isPINPresent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isSessionPresent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isTimeStampPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Suite. (HOTP must contain ONLY counter (C))["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OCRA-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isChallengePresent()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Suite. (OCRA must contain challenge (Q))["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TOTP-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isTimeStampPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isCounterPresent()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isChallengePresent()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isPINPresent()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isSessionPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Suite. (TOTP must contain ONLY TimeStamp (T))["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getCryptoFunctionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HOTP-SHA1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Suite not supported (Illegal cryptofunction)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getFunctionDigit()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getFunctionDigit()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Suite not supported (Illegal function digit)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isChallengePresent()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getChallengeLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Suite Challenge len doesn\'t match with the Challenge len"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getChallengeFormat()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Challenge is not  valid Challenge["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Suite ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v0, "0123456789"

    invoke-static {p1, v0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Challenge is not numeric! Challenge["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Suite ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Challenge is not hexa! Challenge["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Suite ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :sswitch_2
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isTimeStampPresent()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->a()I

    move-result v0

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->a:I

    :cond_b
    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_2
        0x48 -> :sswitch_1
        0x4e -> :sswitch_0
    .end sparse-switch
.end method
