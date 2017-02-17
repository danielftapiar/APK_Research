.class public Lnet/veritran/vtuserapplication/states/VTLocalPassword;
.super Ljava/lang/Object;


# static fields
.field public static final ERR001:Ljava/lang/String; = "Invalid Function ID."

.field public static final ERR002:Ljava/lang/String; = "ConfigurationManager not set."

.field public static final ERR003:Ljava/lang/String; = "Error trying to save data"

.field public static final ERR004:Ljava/lang/String; = "Error trying to parse a string to number"

.field public static final ERR005:Ljava/lang/String; = "General exception"

.field public static final ERR006:Ljava/lang/String; = "Challenge > than 128 bytes "

.field public static final ERR007:Ljava/lang/String; = "Next State is not a valid state."

.field public static final ERR010:Ljava/lang/String; = "Max number of retries reached!"

.field public static final ERR011:Ljava/lang/String; = "CRC error"

.field public static final ERR012:Ljava/lang/String; = "Data to process is empty. Nothing to encrypt/decrypt!"

.field public static final ERR024:Ljava/lang/String; = "Password strength is weak"

.field public static final ERR101:Ljava/lang/String; = "Passwords does not match"

.field public static final ERR102:Ljava/lang/String; = "Not all the parameters are filled out"

.field public static final ERR103:Ljava/lang/String; = "Bad CRC"

.field public static final ERR104:Ljava/lang/String; = "Password wrong"

.field public static final VTLOCALPASSWD_MAX_PW_RETRIES:Ljava/lang/String; = "5"

.field private static a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x12f

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12c

    const-string v2, ""

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    const/16 v1, 0xdf

    const-string v2, "1"

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lnet/veritran/vtuserapplication/model/Model;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/16 v11, 0x12e

    const/16 v6, 0x12d

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "VTLocalPassword"

    const-string v1, "setPassword()"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v0, "VTLocalPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPassword():aux1="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v0, "VTLocalPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPassword():aux2="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x131

    :try_start_0
    invoke-virtual {p0, v2}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "VTLocalPassword"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setPassword():strength="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    :goto_0
    const/16 v0, 0x132

    :try_start_1
    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :try_start_2
    const-string v1, "VTLocalPassword"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setPassword():passWeights="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    invoke-static {v5, v7, v2, v0}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->saveVTLocalPassword(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v1, 0xdf

    const-string v2, "1"

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    const/16 v1, 0x12c

    move-object v0, p0

    move-object v2, v7

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    const-string v7, ""

    move-object v5, p0

    move v8, v4

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v10}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    const-string v7, ""

    move-object v5, p0

    move v6, v11

    move v8, v4

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v10}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    invoke-static {p0}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->c(Lnet/veritran/vtuserapplication/model/Model;)V

    const-string v0, "VTLocalPassword"

    const-string v1, "setPassword():end"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    const-string v2, "VTLocalPassword"

    const-string v8, "Catched exception empty (fortify)"

    invoke-static {v2, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_2
    const-string v1, "VTLocalPassword"

    const-string v8, "Catched exception empty (fortify)"

    invoke-static {v1, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private static a(Lnet/veritran/vtuserapplication/model/Model;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v1, 0xe1

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    const/16 v1, 0xe0

    move-object v0, p0

    move-object v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    return-void
.end method

.method private static b(Lnet/veritran/vtuserapplication/model/Model;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/16 v11, 0x12c

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v0, "VTLocalPassword"

    const-string v1, "verifyPassword()"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VTLocalPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "verifyPassword():aux1="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xe0

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v1, "VTLocalPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "verifyPassword():remainingTries="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xe1

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v1, "VTLocalPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "verifyPassword():wrongAttempts="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->checkVTTokenPassword(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {p0}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->c(Lnet/veritran/vtuserapplication/model/Model;)V
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-nez v8, :cond_2

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v1, 0x68

    const-string v2, "Password wrong"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    const/16 v1, 0x12c

    :try_start_1
    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    add-int/lit8 v0, v6, -0x1

    add-int/lit8 v1, v7, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a(Lnet/veritran/vtuserapplication/model/Model;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v1, 0xa

    const-string v2, "Max number of retries reached!"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    invoke-virtual {p0, v11}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->passwordSalt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v1, v11

    move v3, v10

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;ZZZ)V

    const/16 v1, 0xdf

    const-string v2, "2"

    move-object v0, p0

    move v3, v10

    move v4, v9

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    invoke-static {p0}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->d(Lnet/veritran/vtuserapplication/model/Model;)V

    return-void
.end method

.method private static c(Lnet/veritran/vtuserapplication/model/Model;)V
    .locals 2

    const/16 v1, 0x130

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "0"

    invoke-static {p0, v1, v0}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a(Lnet/veritran/vtuserapplication/model/Model;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "5"

    goto :goto_0
.end method

.method public static checkVTTokenPassword(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v1, 0x66

    const-string v2, "Not all the parameters are filled out"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->getLocalPassword()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->passwordSalt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static clearOptionalArrays()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ConfigurationManager not set."

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    const/16 v0, 0x134

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "VTLocalPassword"

    const-string v1, "No array extra to clear"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, ";"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->string2array(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    if-nez v0, :cond_3

    const-string v0, "VTLocalPassword"

    const-string v1, "No valid array extra to clear"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    :try_start_0
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lnet/veritran/vtuserapplication/model/Model;->cleanArray(I)V

    const-string v4, "VTLocalPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Token cleared: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v3, "VTLocalPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid array to clear: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static clearOptionalTokens()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ConfigurationManager not set."

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    const/16 v0, 0x133

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "VTLocalPassword"

    const-string v1, "No token extra to clear"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, ";"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->string2array(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    if-nez v0, :cond_3

    const-string v0, "VTLocalPassword"

    const-string v1, "No valid token extra to clear"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    :try_start_0
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    const-string v4, "VTLocalPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Token cleared: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v3, "VTLocalPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid token to clear: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static clearVTTokenData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ConfigurationManager not set."

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->setLocalPassword(Ljava/lang/String;)V

    sget-object v0, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->setLocalPasswordSalt(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Lnet/veritran/vtuserapplication/model/Model;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/16 v0, 0xdf

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    return-void
.end method

.method public static passwordSalt(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v5, 0x0

    const/16 v4, 0x10

    const-string v0, "VTLocalPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "passwordSalt("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/VTRandom;->getNewInstance()Lnet/veritran/vtuserapplication/utils/VTRandom;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/VTRandom;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VTLocalPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "passwordSalt("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): salt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "VTLocalPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "passwordSalt("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): salt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_1

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "VTLocalPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "passwordSalt("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): final salt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VTLocalPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "passwordSalt("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): digest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    invoke-static {p0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->setLocalPasswordSalt(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v1, "VTLocalPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "passwordSalt("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v0, v4}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const-string v0, "VTLocalPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "passwordSalt("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): digest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    invoke-static {p0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->getLocalPasswordSalt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VTLocalPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "passwordSalt("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): final salt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static process()V
    .locals 9

    const/4 v1, 0x0

    const/16 v8, 0x70

    const-string v0, "VTLocalPassword"

    const-string v2, "process"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v7

    const/16 v0, 0x6f

    :try_start_0
    const-string v2, "0"

    invoke-virtual {v7, v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x6e

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "VTLocalPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "function:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v2, 0x1

    const-string v3, "Invalid Function ID."

    invoke-direct {v0, v2, v3}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v1

    invoke-static {v0}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a(I)V

    iget v0, v6, Lnet/veritran/vtuserapplication/states/VTStateException;->error:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0xdf

    :try_start_1
    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->clearVTTokenData()V

    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->clearOptionalTokens()V

    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->clearOptionalArrays()V

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->vtlocalpasswordStartUp()V
    :try_end_1
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_0
    iget v0, v6, Lnet/veritran/vtuserapplication/states/VTStateException;->error:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v6, Lnet/veritran/vtuserapplication/states/VTStateException;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v7, v8, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    :goto_2
    return-void

    :sswitch_0
    :try_start_2
    invoke-static {v7}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a(Lnet/veritran/vtuserapplication/model/Model;)V

    :goto_3
    const/16 v0, 0x70

    const-string v2, "000"

    invoke-virtual {v7, v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {v1}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a(I)V
    :try_end_2
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v0, "102"

    invoke-virtual {v7, v8, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_2

    :sswitch_1
    :try_start_3
    invoke-static {v7}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->b(Lnet/veritran/vtuserapplication/model/Model;)V
    :try_end_3
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v0, "005"

    invoke-virtual {v7, v8, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_2

    :sswitch_2
    :try_start_4
    invoke-static {v7}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->b(Lnet/veritran/vtuserapplication/model/Model;)V
    :try_end_4
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-static {v7}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a(Lnet/veritran/vtuserapplication/model/Model;)V
    :try_end_5
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_4
    move-exception v0

    const-string v0, "VTLocalPassword"

    const-string v1, "Catched exception empty (fortify)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "005"

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public static saveVTLocalPassword(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const-string v0, "VTLocalPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveVTLocalPassword("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ConfigurationManager not set."

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v1, 0x65

    const-string v2, "Passwords does not match"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "VTLocalPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveVTLocalPassword("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): pass are equals"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p2, :cond_2

    new-instance v0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;

    invoke-direct {v0, p0, p3}, Lnet/veritran/vtuserapplication/utils/Passwordmeter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->getScore()I

    move-result v0

    if-ge v0, p2, :cond_2

    const-string v0, "VTLocalPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveVTLocalPassword("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): pass not strong enough"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v1, 0x18

    const-string v2, "Password strength is weak"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->passwordSalt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VTLocalPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveVTLocalPassword("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): pass crypted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->setLocalPassword(Ljava/lang/String;)V

    const-string v1, "VTLocalPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveVTLocalPassword("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): pass stored"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static startUp(Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;)V
    .locals 6

    sput-object p0, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    :try_start_0
    sget-object v1, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->getLocalPassword()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xdf

    const-string v2, "0"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    invoke-static {v0}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->c(Lnet/veritran/vtuserapplication/model/Model;)V

    invoke-static {v0}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->d(Lnet/veritran/vtuserapplication/model/Model;)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xdf

    const-string v2, "1"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "VTLocalPassword"

    const-string v1, "Catched exception empty (fortify)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
