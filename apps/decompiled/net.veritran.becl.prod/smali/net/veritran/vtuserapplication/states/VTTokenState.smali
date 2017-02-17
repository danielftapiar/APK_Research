.class public Lnet/veritran/vtuserapplication/states/VTTokenState;
.super Ljava/lang/Object;


# static fields
.field public static final VTTOKENSTATE_FORWARD_THROTTLE:I = 0x19

.field public static final VTTOKENSTATE_GENERATION_COUNTER_START_VALUE:Ljava/lang/String; = "0"

.field public static final VTTOKENSTATE_MAX_PW_RETRIES:Ljava/lang/String; = "5"

.field public static final VTTOKENSTATE_VALIDATION_COUNTER_START_VALUE:Ljava/lang/String; = "999999"

.field private static a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lnet/veritran/vtuserapplication/model/VTTokenHelper;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/states/VTTokenState;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    return-object v0
.end method

.method private static a(I)V
    .locals 7

    const/16 v6, 0xcd

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

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x71

    const-string v2, ""

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    invoke-virtual {v0, v6}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "1"

    move v1, v6

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    goto :goto_0

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

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0xd1

    move-object v2, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    const/16 v1, 0xd0

    move-object v2, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    return-void
.end method

.method private static a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V
    .locals 1

    invoke-static {p1, p2, p6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a([I[Ljava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    invoke-virtual {p6, p4}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Lnet/veritran/vtuserapplication/model/Model;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/16 v11, 0x73

    const/16 v6, 0x72

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v6}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v11}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x91

    :try_start_0
    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    :goto_0
    const/16 v0, 0x92

    :try_start_1
    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    invoke-static {v2, v5, v1, v0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->saveVTTokenPassword(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v1, 0xcd

    const-string v2, "1"

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    const/16 v1, 0x71

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

    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTTokenState;->d()V

    return-void

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Lnet/veritran/vtuserapplication/model/Model;JJJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/16 v0, 0x74

    :try_start_0
    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0x75

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v9

    const/16 v1, 0x84

    invoke-static {v9}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;ZZZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xd2

    :try_start_1
    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    :goto_0
    const/4 v10, 0x1

    move-object v0, v9

    move-object v1, v8

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v8, p5

    invoke-static/range {v0 .. v10}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->saveVTTokenData(Ljava/lang/String;Ljava/lang/String;JJJJZ)V

    const/16 v1, 0xce

    const-string v2, "1"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v1, 0x66

    const-string v2, "Not all the parameters are filled out"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method private static a([I[Ljava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    aget-object v2, p1, v0

    invoke-virtual {p2, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTTokenState;->process()I

    return-void
.end method

.method private static b(I)Lnet/veritran/vtuserapplication/states/TokenCounterInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTTokenState$1;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/states/VTTokenState$1;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTTokenState$2;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/states/VTTokenState$2;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/states/VTTokenState;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setAppAdministrativeMode(I)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->vttokenStartUp()V

    return-void
.end method

.method private static c()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/16 v12, 0x71

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    invoke-virtual {v6, v12}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd0

    invoke-virtual {v6, v1}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v1, 0xd1

    invoke-virtual {v6, v1}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :try_start_0
    invoke-static {v0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->checkVTTokenPassword(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTTokenState;->d()V
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-nez v9, :cond_2

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v1, 0x68

    const-string v2, "Password wrong"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x71

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    add-int/lit8 v0, v7, -0x1

    add-int/lit8 v1, v8, 0x1

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

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v1, 0x1a

    const-string v2, "Max number of retries reached!"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    invoke-virtual {v6, v12}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->passwordSalt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v6

    move v1, v12

    move v3, v11

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;ZZZ)V

    const/16 v1, 0xcd

    const-string v2, "2"

    move-object v0, v6

    move v3, v11

    move v4, v10

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTTokenState;->e()V

    return-void
.end method

.method private static c(I)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    const/16 v3, 0x8e

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/16 v4, 0x8d

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v10, 0x1

    :goto_1
    const/16 v4, 0x77

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v4

    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v8

    const/16 v4, 0x76

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x74

    invoke-virtual {v2, v6}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/16 v9, 0x8

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x79

    invoke-virtual {v2, v6}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x7a

    :try_start_0
    invoke-virtual {v2, v6}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->transformTokensToData(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v18, v12, v14

    const/16 v3, 0x80

    :try_start_1
    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v7, v3

    :goto_2
    const-string v15, " "

    invoke-static/range {p0 .. p0}, Lnet/veritran/vtuserapplication/states/VTTokenState;->b(I)Lnet/veritran/vtuserapplication/states/TokenCounterInterface;

    move-result-object v20

    new-instance v3, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;

    invoke-direct {v3, v8}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->validateSuite(Ljava/lang/String;)V

    const-wide/high16 v8, -0x8000000000000000L

    const-wide/32 v12, 0x495c0780

    cmp-long v11, v18, v12

    if-gtz v11, :cond_2

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isTimeStampPresent()Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v2, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v3, 0x63

    const-string v4, "Internal time is misset"

    invoke-direct {v2, v3, v4}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v2, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v3, 0x64

    const-string v4, "Problems trying to parse data in prepareSessionData function"

    invoke-direct {v2, v3, v4}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_1
    move-exception v3

    const/16 v3, 0x19

    move v7, v3

    goto :goto_2

    :cond_2
    const/4 v11, 0x2

    move/from16 v0, p0

    if-ne v0, v11, :cond_6

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isCounterPresent()Z

    move-result v11

    if-eqz v11, :cond_6

    move v11, v7

    :goto_3
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getTimeStep()I

    move-result v7

    const/4 v12, -0x1

    if-eq v7, v12, :cond_3

    const/4 v7, 0x1

    move/from16 v0, p0

    if-ne v0, v7, :cond_7

    :cond_3
    const/4 v7, 0x1

    new-array v7, v7, [J

    const/4 v12, 0x0

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getTimeStep()I

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    div-long v16, v18, v16

    aput-wide v16, v7, v12

    move-wide v12, v8

    move-object v14, v7

    :goto_4
    const/4 v7, 0x0

    move/from16 v17, v7

    move-object v8, v15

    :goto_5
    move/from16 v0, v17

    if-ge v0, v11, :cond_e

    const-string v15, ""

    invoke-interface/range {v20 .. v20}, Lnet/veritran/vtuserapplication/states/TokenCounterInterface;->addCounterValue()J

    const/4 v7, 0x0

    move/from16 v16, v7

    move-object v7, v8

    :goto_6
    array-length v8, v14

    move/from16 v0, v16

    if-ge v0, v8, :cond_12

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->yield()V

    aget-wide v8, v14, v16

    cmp-long v8, v12, v8

    if-gez v8, :cond_11

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v8, v14, v16

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v20 .. v20}, Lnet/veritran/vtuserapplication/states/TokenCounterInterface;->getCounterValue()J

    move-result-wide v8

    invoke-static/range {v3 .. v10}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->generateVTToken(Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;
    :try_end_2
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v8

    const/4 v7, 0x2

    move/from16 v0, p0

    if-ne v0, v7, :cond_b

    const/16 v7, 0x7b

    invoke-virtual {v2, v7}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isTimeStampPresent()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isCounterPresent()Z

    move-result v9

    if-nez v9, :cond_a

    sget-object v9, Lnet/veritran/vtuserapplication/states/VTTokenState;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenLastUsedTime(Ljava/lang/String;Z)V

    :cond_4
    :goto_7
    const/4 v9, 0x2

    move/from16 v0, p0

    if-ne v0, v9, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    :cond_5
    add-int/lit8 v7, v17, 0x1

    move/from16 v17, v7

    goto/16 :goto_5

    :cond_6
    const/4 v7, 0x1

    move v11, v7

    goto/16 :goto_3

    :cond_7
    const/16 v7, 0x8f

    :try_start_3
    invoke-virtual {v2, v7}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v7

    move v12, v7

    :goto_8
    const/16 v7, 0x90

    :try_start_4
    invoke-virtual {v2, v7}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v7

    :goto_9
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getTimeStep()I

    move-result v13

    div-int v13, v12, v13

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getTimeStep()I

    move-result v12

    div-int v14, v7, v12

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isTimeStampPresent()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isCounterPresent()Z

    move-result v7

    if-nez v7, :cond_8

    sget-object v7, Lnet/veritran/vtuserapplication/states/VTTokenState;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenLastUsedTime(Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getTimeStep()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v16, v0

    div-long v8, v8, v16

    :cond_8
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getTimeStep()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v16, v0

    div-long v16, v18, v16

    add-int v7, v13, v14

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [J

    const/4 v12, 0x0

    aput-wide v16, v7, v12

    const/4 v12, 0x1

    :goto_a
    if-gt v12, v13, :cond_9

    int-to-long v0, v12

    move-wide/from16 v22, v0

    sub-long v22, v16, v22

    aput-wide v22, v7, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :catch_2
    move-exception v7

    const/16 v7, 0x78

    move v12, v7

    goto :goto_8

    :catch_3
    move-exception v7

    const/16 v7, 0x1e

    goto :goto_9

    :cond_9
    const/4 v12, 0x1

    :goto_b
    if-gt v12, v14, :cond_13

    add-int v21, v12, v13

    int-to-long v0, v12

    move-wide/from16 v22, v0

    add-long v22, v22, v16

    aput-wide v22, v7, v21

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :catch_4
    move-exception v3

    move-object v8, v3

    const/16 v3, 0x76

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;ZZZ)V

    throw v8

    :cond_a
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isCounterPresent()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface/range {v20 .. v20}, Lnet/veritran/vtuserapplication/states/TokenCounterInterface;->saveCounterValue()V

    goto/16 :goto_7

    :cond_b
    invoke-interface/range {v20 .. v20}, Lnet/veritran/vtuserapplication/states/TokenCounterInterface;->saveCounterValue()V

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isTimeStampPresent()Z

    move-result v7

    if-eqz v7, :cond_c

    const-wide/32 v22, 0x495c0780

    sub-long v22, v18, v22

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTTokenState;->setTokenDataOfflineSynchro(JLnet/veritran/vtuserapplication/model/Model;)V

    :cond_c
    move-object v7, v15

    :cond_d
    :goto_c
    add-int/lit8 v9, v16, 0x1

    move/from16 v16, v9

    move-object v15, v7

    move-object v7, v8

    goto/16 :goto_6

    :cond_e
    packed-switch p0, :pswitch_data_0

    :cond_f
    :goto_d
    return-void

    :pswitch_0
    const/16 v3, 0x7b

    invoke-virtual {v2, v3, v8}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v3, 0x76

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;ZZZ)V

    goto :goto_d

    :pswitch_1
    const-wide/16 v4, 0x0

    move/from16 v0, v17

    if-ne v0, v11, :cond_10

    const/16 v3, 0xd2

    :try_start_5
    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    :cond_10
    :goto_e
    sget-object v3, Lnet/veritran/vtuserapplication/states/VTTokenState;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenValidationWrongCounter(Ljava/lang/String;Z)V

    const/16 v3, 0xd2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    const/16 v3, 0x7b

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    move/from16 v0, v17

    if-lt v0, v11, :cond_f

    new-instance v2, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v3, 0x7

    const-string v4, "Validation error!"

    invoke-direct {v2, v3, v4}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_5
    move-exception v3

    const-wide/16 v4, 0x0

    goto :goto_e

    :cond_11
    move-object v8, v7

    move-object v7, v15

    goto :goto_c

    :cond_12
    move-object v8, v7

    move-object v7, v15

    goto/16 :goto_7

    :cond_13
    move-wide v12, v8

    move-object v14, v7

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static d()V
    .locals 3

    const/16 v2, 0x7e

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "0"

    invoke-static {v1, v0}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "5"

    goto :goto_0
.end method

.method public static dumpVTTokens(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x22

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Token Function Called "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Token Next State "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Token Function Called Result"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Token Password[P,S]"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Token New Password[S]"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Token New Password Confirmation[S]"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Token Serial Number[S]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Token Seed[S] (RegisterManager.VTTOKENSTATE_TOKEN_NEW_SEED)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Token Seed HASHED [S] (RegisterManager.VTTOKENSTATE_TOKEN_ACTUAL_SEED)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Token Challenge"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "OCRA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Token reference"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Token PIN"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Token session info"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Token OTP"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Token Clear Pass?[P]"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Token remainig tries to open"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Token Password set[P]"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Token Activated Number[P]"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Token denied tries to open"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Token required[P]"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Token Max password retries set"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Token Forward throttle"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Token Password validate (Restore)"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Token cod resp VT0013"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Token Data to restore"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Token Verify CRC?"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Token Session data transform?"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Token Validation negative Counter"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "VTTOKENSTATE_TOKEN_DATA_OFFLINE_SYNCHRO"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "VTTOKENSTATE_TOKEN_TOTP_LEFT_INTERVAL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "VTTOKENSTATE_TOKEN_TOTP_RIGHT_INTERVAL"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "VTTOKENSTATE_TOKEN_PASSWORD_STRENGTH"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "VTTOKENSTATE_TOKEN_PASSWORD_WEIGHTS"

    aput-object v2, v0, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    return-void

    :array_0
    .array-data 4
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x84
        0x76
        0x77
        0x78
        0x79
        0x7a
        0x7b
        0x7d
        0xd0
        0xcd
        0xce
        0xd1
        0x7f
        0x7e
        0x80
        0x81
        0x82
        0x83
        0x8d
        0x8e
        0xd2
        0xd3
        0x8f
        0x90
        0x91
        0x92
    .end array-data
.end method

.method public static dumpVTTokens(Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method private static e()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/16 v10, 0x84

    const/16 v9, 0x75

    const/16 v8, 0x74

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0xce

    :try_start_0
    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcd

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x75

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->getVTTokenSeed()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;ZZZ)V

    const/16 v1, 0x84

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->getVTTokenSeed()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;ZZZ)V

    const/16 v1, 0x74

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->getVTTokenSerialNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;ZZZ)V

    const/16 v1, 0xd2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->getVTTokenValidationWrongCounter()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    :cond_0
    const/16 v1, 0xce

    const-string v2, "0"

    move v3, v6

    move v4, v7

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    const-string v1, "0"

    invoke-static {v1}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v1, v10

    move v3, v6

    move v4, v7

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;ZZZ)V

    const-string v2, "0"

    move v1, v9

    move v3, v6

    move v4, v7

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;ZZZ)V

    const-string v2, "0"

    move v1, v8

    move v3, v6

    move v4, v7

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;ZZZ)V

    const/16 v1, 0xd2

    const-string v2, "0"

    move v3, v6

    move v4, v7

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    goto :goto_0
.end method

.method public static getDataOfflineSynchro(J)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->generateVTTokenCRC(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static process()I
    .locals 17

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x6f

    :try_start_0
    const-string v4, "0"

    invoke-virtual {v1, v2, v4}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :try_start_1
    new-instance v2, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v3, 0x1

    const-string v4, "Invalid Function ID."

    invoke-direct {v2, v3, v4}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_0
    move-exception v2

    move-object/from16 v16, v2

    move v2, v8

    move-object/from16 v8, v16

    :goto_0
    invoke-static {v2}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(I)V

    iget v2, v8, Lnet/veritran/vtuserapplication/states/VTStateException;->error:I

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_0

    sget-object v0, Lnet/veritran/vtuserapplication/states/VTTokenState;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setAppAdministrativeMode(I)V

    const/16 v0, -0x1a5

    :cond_0
    iget v2, v8, Lnet/veritran/vtuserapplication/states/VTStateException;->error:I

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_1

    const/16 v0, -0x199

    :cond_1
    iget v2, v8, Lnet/veritran/vtuserapplication/states/VTStateException;->error:I

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_2

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    :try_start_2
    sget-object v0, Lnet/veritran/vtuserapplication/states/VTTokenState;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenHash(Ljava/lang/String;)V

    const/16 v3, 0xcd

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->clearVTTokenData()V

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/model/Model;->vttokenStartUp()V
    :try_end_2
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_2 .. :try_end_2} :catch_6

    :goto_1
    const/16 v0, 0x199

    iput v0, v8, Lnet/veritran/vtuserapplication/states/VTStateException;->error:I

    const/16 v0, -0x199

    :cond_2
    iget v2, v8, Lnet/veritran/vtuserapplication/states/VTStateException;->error:I

    const/16 v3, 0x63

    if-ne v2, v3, :cond_3

    const/16 v0, -0x1c1

    :cond_3
    iget v2, v8, Lnet/veritran/vtuserapplication/states/VTStateException;->error:I

    if-lez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v8, Lnet/veritran/vtuserapplication/states/VTStateException;->error:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    const/16 v3, 0x70

    invoke-virtual {v1, v3, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    :goto_3
    return v0

    :sswitch_0
    :try_start_3
    invoke-static {v1}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Lnet/veritran/vtuserapplication/model/Model;)V

    :cond_4
    :goto_4
    const/16 v2, 0x70

    const-string v3, "000"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {v8}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(I)V
    :try_end_3
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_1
    move-exception v2

    const/16 v2, 0x70

    const-string v3, "102"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_3

    :sswitch_1
    :try_start_4
    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "999999"

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    invoke-static/range {v1 .. v7}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Lnet/veritran/vtuserapplication/model/Model;JJJ)V
    :try_end_4
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    const/16 v2, 0x70

    const-string v3, "005"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_3

    :sswitch_2
    const/4 v2, 0x1

    :try_start_5
    invoke-static {v2}, Lnet/veritran/vtuserapplication/states/VTTokenState;->c(I)V

    goto :goto_4

    :sswitch_3
    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTTokenState;->c()V

    goto :goto_4

    :sswitch_4
    const/16 v2, 0x76

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->checkVTTokenCRC(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v3, 0x67

    const-string v4, "Bad CRC"

    invoke-direct {v2, v3, v4}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v2

    :sswitch_5
    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTTokenState;->c()V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    const/16 v9, 0xce

    invoke-virtual {v1, v9}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v9

    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xcd

    invoke-virtual {v1, v10}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v10

    invoke-virtual {v10}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "2"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    :goto_5
    if-eqz v9, :cond_6

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->getVTTokenSeed()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->getVTTokenSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->getVTTokenCounter()J

    move-result-wide v10

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->getVTTokenValidationCounter()J

    move-result-wide v14

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->getVTTokenLastUsedTime()J

    move-result-wide v12

    const/16 v2, 0x75

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    const/16 v2, 0x74

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V
    :try_end_5
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-wide v2, v10

    move-wide v6, v12

    move-wide v4, v14

    :goto_6
    :try_start_6
    invoke-static {v1}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Lnet/veritran/vtuserapplication/model/Model;)V
    :try_end_6
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz v9, :cond_4

    :try_start_7
    invoke-static/range {v1 .. v7}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Lnet/veritran/vtuserapplication/model/Model;JJJ)V

    goto/16 :goto_4

    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    :cond_6
    const/16 v10, 0x75

    invoke-virtual {v1, v10}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    const/16 v10, 0x74

    invoke-virtual {v1, v10}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    goto :goto_6

    :catch_3
    move-exception v7

    const/16 v2, 0x75

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    const/16 v2, 0x84

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    const/16 v2, 0x74

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    throw v7

    :sswitch_6
    const/4 v2, 0x2

    invoke-static {v2}, Lnet/veritran/vtuserapplication/states/VTTokenState;->c(I)V

    goto/16 :goto_4

    :sswitch_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/32 v4, 0x495c0780

    cmp-long v4, v2, v4

    if-gtz v4, :cond_7

    new-instance v2, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v3, 0x63

    const-string v4, "Internal time is misset"

    invoke-direct {v2, v3, v4}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_7
    const-wide/32 v4, 0x495c0780

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v1}, Lnet/veritran/vtuserapplication/states/VTTokenState;->setTokenDataOfflineSynchro(JLnet/veritran/vtuserapplication/model/Model;)V

    goto/16 :goto_4

    :sswitch_8
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;
    :try_end_7
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v2

    const/16 v3, 0x71

    :try_start_8
    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->passwordSalt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x71

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    invoke-static {v4}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x81

    invoke-virtual {v2, v4, v3}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    :catch_4
    move-exception v2

    :try_start_9
    new-instance v2, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v3, 0x1c

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_9
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :sswitch_9
    const/16 v2, 0x83

    :try_start_a
    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->setVTTokenBackUp(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_1

    :try_start_b
    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTTokenState;->b()V

    goto/16 :goto_4

    :catch_5
    move-exception v2

    new-instance v3, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v4, 0x1c

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in restoreVTTokenData "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v3

    :sswitch_a
    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTTokenState;->b()V
    :try_end_b
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_4

    :cond_8
    const-string v2, "005"

    goto/16 :goto_2

    :catch_6
    move-exception v0

    goto/16 :goto_1

    :catch_7
    move-exception v2

    move-object v8, v2

    move v2, v3

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_1
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0x1e -> :sswitch_8
        0x1f -> :sswitch_9
        0x20 -> :sswitch_a
    .end sparse-switch
.end method

.method public static setTokenDataOfflineSynchro(JLnet/veritran/vtuserapplication/model/Model;)V
    .locals 2

    const/16 v0, 0xd3

    invoke-static {p0, p1}, Lnet/veritran/vtuserapplication/states/VTTokenState;->getDataOfflineSynchro(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    return-void
.end method

.method public static startUp(Lnet/veritran/vtuserapplication/model/VTTokenHelper;)V
    .locals 6

    sput-object p0, Lnet/veritran/vtuserapplication/states/VTTokenState;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    :try_start_0
    sget-object v1, Lnet/veritran/vtuserapplication/states/VTTokenState;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-static {v1}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->setVTTokenHelper(Lnet/veritran/vtuserapplication/model/VTTokenHelper;)V

    sget-object v1, Lnet/veritran/vtuserapplication/states/VTTokenState;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenHash()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xcd

    const-string v2, "0"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTTokenState;->d()V

    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTTokenState;->e()V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xcd

    const-string v2, "1"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    sget-object v1, Lnet/veritran/vtuserapplication/states/VTTokenState;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenSeed(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTTokenState;->e()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xce

    const-string v2, "1"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static testCounters()V
    .locals 2

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lnet/veritran/vtuserapplication/states/VTTokenState;->b(I)Lnet/veritran/vtuserapplication/states/TokenCounterInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/states/VTTokenState;->testCounters(Lnet/veritran/vtuserapplication/model/Model;Lnet/veritran/vtuserapplication/states/TokenCounterInterface;)V

    const/4 v1, 0x2

    invoke-static {v1}, Lnet/veritran/vtuserapplication/states/VTTokenState;->b(I)Lnet/veritran/vtuserapplication/states/TokenCounterInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/states/VTTokenState;->testCounters(Lnet/veritran/vtuserapplication/model/Model;Lnet/veritran/vtuserapplication/states/TokenCounterInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static testCounters(Lnet/veritran/vtuserapplication/model/Model;Lnet/veritran/vtuserapplication/states/TokenCounterInterface;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lnet/veritran/vtuserapplication/states/TokenCounterInterface;->addCounterValue()J

    invoke-interface {p1}, Lnet/veritran/vtuserapplication/states/TokenCounterInterface;->addCounterValue()J

    invoke-interface {p1}, Lnet/veritran/vtuserapplication/states/TokenCounterInterface;->saveCounterValue()V

    invoke-interface {p1}, Lnet/veritran/vtuserapplication/states/TokenCounterInterface;->addCounterValue()J

    invoke-interface {p1}, Lnet/veritran/vtuserapplication/states/TokenCounterInterface;->addCounterValue()J
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static testProcess(Lnet/veritran/vtuserapplication/model/VTTokenHelper;)V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x5

    const/4 v8, 0x0

    const/4 v10, 0x4

    const/4 v3, 0x1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    const/16 v0, 0x8d

    const-string v1, "1"

    invoke-virtual {v6, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    new-array v0, v3, [I

    const/16 v1, 0x6f

    aput v1, v0, v8

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v8

    invoke-static {v0, v1, v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a([I[Ljava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v0, v10, [I

    fill-array-data v0, :array_0

    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "100"

    aput-object v2, v1, v8

    const-string v2, "password"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "PASSWORD"

    aput-object v4, v1, v2

    const-string v2, "1"

    aput-object v2, v1, v12

    invoke-static {v0, v1, v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a([I[Ljava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v0, v10, [I

    fill-array-data v0, :array_1

    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "100"

    aput-object v2, v1, v8

    const-string v2, "123456"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "123456"

    aput-object v4, v1, v2

    const-string v2, "1"

    aput-object v2, v1, v12

    invoke-static {v0, v1, v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a([I[Ljava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/model/Model;->vttokenStartUp()V

    new-array v0, v10, [I

    fill-array-data v0, :array_2

    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "100"

    aput-object v2, v1, v8

    const-string v2, "PASSWORD"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "4"

    aput-object v4, v1, v2

    const-string v2, "0"

    aput-object v2, v1, v12

    invoke-static {v0, v1, v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a([I[Ljava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v0, v10, [I

    fill-array-data v0, :array_3

    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "100"

    aput-object v2, v1, v8

    const-string v2, "123456"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "4"

    aput-object v4, v1, v2

    const-string v2, "5"

    aput-object v2, v1, v12

    invoke-static {v0, v1, v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a([I[Ljava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v0, v10, [I

    fill-array-data v0, :array_4

    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "100"

    aput-object v2, v1, v8

    const-string v2, "seed"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "SERIAL_NUMBER"

    aput-object v4, v1, v2

    const-string v2, "2"

    aput-object v2, v1, v12

    invoke-static {v0, v1, v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a([I[Ljava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v0, v12, [I

    fill-array-data v0, :array_5

    new-array v1, v12, [Ljava/lang/String;

    const-string v2, "100"

    aput-object v2, v1, v8

    const-string v2, "12345678901234567890"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "2"

    aput-object v4, v1, v2

    invoke-static {v0, v1, v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a([I[Ljava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v10, [I

    fill-array-data v1, :array_6

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "00000000"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-6:QN08"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "Plain Challenge Response Q:00000000"

    const/16 v4, 0x7b

    const-string v5, "026136"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v10, [I

    fill-array-data v1, :array_7

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "11111111"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-6:QN08"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "Plain Challenge Response Q:11111111"

    const/16 v4, 0x7b

    const-string v5, "812061"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v10, [I

    fill-array-data v1, :array_8

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "22222222"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-6:QN08"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "Plain Challenge Response Q:22222222"

    const/16 v4, 0x7b

    const-string v5, "428901"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v10, [I

    fill-array-data v1, :array_9

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "33333333"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-6:QN08"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "Plain Challenge Response Q:33333333"

    const/16 v4, 0x7b

    const-string v5, "560288"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v10, [I

    fill-array-data v1, :array_a

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "44444444"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-6:QN08"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "Plain Challenge Response Q:44444444"

    const/16 v4, 0x7b

    const-string v5, "230330"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v10, [I

    fill-array-data v1, :array_b

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "55555555"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-6:QN08"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "Plain Challenge Response Q:55555555"

    const/16 v4, 0x7b

    const-string v5, "520056"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v10, [I

    fill-array-data v1, :array_c

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "66666666"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-6:QN08"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "Plain Challenge Response Q:66666666"

    const/16 v4, 0x7b

    const-string v5, "554743"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v10, [I

    fill-array-data v1, :array_d

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "77777777"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-6:QN08"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "Plain Challenge Response Q:77777777"

    const/16 v4, 0x7b

    const-string v5, "129157"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v10, [I

    fill-array-data v1, :array_e

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "88888888"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-6:QN08"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "Plain Challenge Response Q:88888888"

    const/16 v4, 0x7b

    const-string v5, "054856"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v10, [I

    fill-array-data v1, :array_f

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "99999999"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-6:QN08"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "Plain Challenge Response Q:99999999 "

    const/16 v4, 0x7b

    const-string v5, "076926"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v0, v10, [I

    fill-array-data v0, :array_10

    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "100"

    aput-object v2, v1, v8

    const-string v2, "99999999"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "OCRA-1:HOTP-SHA256-6:QN08"

    aput-object v4, v1, v2

    const-string v2, "3"

    aput-object v2, v1, v12

    invoke-static {v0, v1, v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a([I[Ljava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_11

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "00000000"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "HOTP-SHA1-8:QN08-P:  00000000 "

    const/16 v4, 0x7b

    const-string v5, "53466439"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_12

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "11111111"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "HOTP-SHA1-8:QN08-P:  11111111 "

    const/16 v4, 0x7b

    const-string v5, "73945237"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_13

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "22222222"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "HOTP-SHA1-8:QN08-P:  22222222 "

    const/16 v4, 0x7b

    const-string v5, "99405256"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_14

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "33333333"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "HOTP-SHA1-8:QN08-P:  33333333 "

    const/16 v4, 0x7b

    const-string v5, "50321344"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_15

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "44444444"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "HOTP-SHA1-8:QN08-P:  44444444"

    const/16 v4, 0x7b

    const-string v5, "23074258"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_16

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "55555555"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "HOTP-SHA1-8:QN08-P:  55555555"

    const/16 v4, 0x7b

    const-string v5, "59075924"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_17

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "66666666"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "HOTP-SHA1-8:QN08-P:  66666666"

    const/16 v4, 0x7b

    const-string v5, "81361620"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_18

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "77777777"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "HOTP-SHA1-8:QN08-P:  77777777"

    const/16 v4, 0x7b

    const-string v5, "82484312"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_19

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "88888888"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "HOTP-SHA1-8:QN08-P:  88888888"

    const/16 v4, 0x7b

    const-string v5, "96672108"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_1a

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "99999999"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "HOTP-SHA1-8:QN08-P:  99999999"

    const/16 v4, 0x7b

    const-string v5, "96838064"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_1b

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "00000000"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:C-QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "OCRA-1:HOTP-SHA1-8:C-QN08-P:  00000000 "

    const/16 v4, 0x7b

    const-string v5, "90766849"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_1c

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "11111111"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:C-QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "OCRA-1:HOTP-SHA1-8:C-QN08-P:  11111111 "

    const/16 v4, 0x7b

    const-string v5, "34899413"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_1d

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "22222222"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:C-QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "OCRA-1:HOTP-SHA1-8:C-QN08-P:  22222222 "

    const/16 v4, 0x7b

    const-string v5, "36293740"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_1e

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "33333333"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:C-QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "OCRA-1:HOTP-SHA1-8:C-QN08-P:  33333333 "

    const/16 v4, 0x7b

    const-string v5, "93991471"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_1f

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "44444444"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:C-QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "OCRA-1:HOTP-SHA1-8:C-QN08-P:  44444444"

    const/16 v4, 0x7b

    const-string v5, "25535733"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_20

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "55555555"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:C-QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "OCRA-1:HOTP-SHA1-8:C-QN08-P:  55555555"

    const/16 v4, 0x7b

    const-string v5, "12689904"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_21

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "66666666"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:C-QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "OCRA-1:HOTP-SHA1-8:C-QN08-P:  66666666"

    const/16 v4, 0x7b

    const-string v5, "84690544"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_22

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "77777777"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:C-QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "OCRA-1:HOTP-SHA1-8:C-QN08-P:  77777777"

    const/16 v4, 0x7b

    const-string v5, "66190222"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_23

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "88888888"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:C-QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "OCRA-1:HOTP-SHA1-8:C-QN08-P:  88888888"

    const/16 v4, 0x7b

    const-string v5, "16196036"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    new-array v1, v11, [I

    fill-array-data v1, :array_24

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "99999999"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "OCRA-1:HOTP-SHA1-8:C-QN08-P"

    aput-object v4, v2, v0

    const-string v0, "3"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "OCRA-1:HOTP-SHA1-8:C-QN08-P:  99999999"

    const/16 v4, 0x7b

    const-string v5, "74335211"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    const/16 v0, 0xa

    new-array v9, v0, [Ljava/lang/String;

    const-string v0, "91546535"

    aput-object v0, v9, v8

    const-string v0, "19022945"

    aput-object v0, v9, v3

    const/4 v0, 0x2

    const-string v1, "71309691"

    aput-object v1, v9, v0

    const-string v0, "76281031"

    aput-object v0, v9, v12

    const-string v0, "02058661"

    aput-object v0, v9, v10

    const-string v0, "61589615"

    aput-object v0, v9, v11

    const/4 v0, 0x6

    const-string v1, "46749426"

    aput-object v1, v9, v0

    const/4 v0, 0x7

    const-string v1, "34610176"

    aput-object v1, v9, v0

    const/16 v0, 0x8

    const-string v1, "83721671"

    aput-object v1, v9, v0

    const/16 v0, 0x9

    const-string v1, "42246930"

    aput-object v1, v9, v0

    move v7, v8

    :goto_0
    const/16 v0, 0xa

    if-ge v7, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_25

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "100"

    aput-object v4, v2, v8

    aput-object v0, v2, v3

    const/4 v4, 0x2

    const-string v5, "OCRA-1:HOTP-SHA1-8:QN08-P-S"

    aput-object v5, v2, v4

    const-string v4, "3"

    aput-object v4, v2, v12

    const-string v4, "504;505"

    aput-object v4, v2, v10

    const-string v4, "SessionI"

    aput-object v4, v2, v11

    const/4 v4, 0x6

    const-string v5, "nformation"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "12345678"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OCRA-1:HOTP-SHA1-8:QN08-P-S:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x7b

    aget-object v5, v9, v7

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    new-array v9, v0, [Ljava/lang/String;

    const-string v0, "07072954"

    aput-object v0, v9, v8

    const-string v0, "11908251"

    aput-object v0, v9, v3

    const/4 v0, 0x2

    const-string v1, "53944875"

    aput-object v1, v9, v0

    const-string v0, "99628221"

    aput-object v0, v9, v12

    const-string v0, "99323499"

    aput-object v0, v9, v10

    const-string v0, "71573315"

    aput-object v0, v9, v11

    const/4 v0, 0x6

    const-string v1, "23438602"

    aput-object v1, v9, v0

    const/4 v0, 0x7

    const-string v1, "94180770"

    aput-object v1, v9, v0

    const/16 v0, 0x8

    const-string v1, "81969321"

    aput-object v1, v9, v0

    const/16 v0, 0x9

    const-string v1, "82647745"

    aput-object v1, v9, v0

    move v7, v8

    :goto_1
    const/16 v0, 0xa

    if-ge v7, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_26

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "100"

    aput-object v4, v2, v8

    aput-object v0, v2, v3

    const/4 v4, 0x2

    const-string v5, "OCRA-1:HOTP-SHA1-8:C-QN08-P-S"

    aput-object v5, v2, v4

    const-string v4, "3"

    aput-object v4, v2, v12

    const-string v4, "504;505"

    aput-object v4, v2, v10

    const-string v4, "SessionI"

    aput-object v4, v2, v11

    const/4 v4, 0x6

    const-string v5, "nformation"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "12345678"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OCRA-1:HOTP-SHA1-8:C-QN08-P-S:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x7b

    aget-object v5, v9, v7

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0xa

    new-array v9, v0, [Ljava/lang/String;

    const-string v0, "50469678"

    aput-object v0, v9, v8

    const-string v0, "96185320"

    aput-object v0, v9, v3

    const/4 v0, 0x2

    const-string v1, "66727805"

    aput-object v1, v9, v0

    const-string v0, "79653001"

    aput-object v0, v9, v12

    const-string v0, "74874788"

    aput-object v0, v9, v10

    const-string v0, "61654086"

    aput-object v0, v9, v11

    const/4 v0, 0x6

    const-string v1, "95734215"

    aput-object v1, v9, v0

    const/4 v0, 0x7

    const-string v1, "55811286"

    aput-object v1, v9, v0

    const/16 v0, 0x8

    const-string v1, "29614790"

    aput-object v1, v9, v0

    const/16 v0, 0x9

    const-string v1, "11123327"

    aput-object v1, v9, v0

    move v7, v8

    :goto_2
    const/16 v0, 0xa

    if-ge v7, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_27

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "100"

    aput-object v4, v2, v8

    aput-object v0, v2, v3

    const/4 v4, 0x2

    const-string v5, "OCRA-1:HOTP-SHA1-8:C-QN08-P-S"

    aput-object v5, v2, v4

    const-string v4, "8"

    aput-object v4, v2, v12

    const-string v4, "504;505"

    aput-object v4, v2, v10

    const-string v4, "SessionI"

    aput-object v4, v2, v11

    const/4 v4, 0x6

    const-string v5, "nformation"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "12345678"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    aget-object v5, v9, v7

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Validation  OCRA-1:HOTP-SHA1-8:C-QN08-P-S:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x70

    const-string v5, "000"

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_28

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "100"

    aput-object v0, v2, v8

    const-string v0, "99999999"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v3, "OCRA-1:HOTP-SHA1-8:C-QN08-P"

    aput-object v3, v2, v0

    const-string v0, "8"

    aput-object v0, v2, v12

    const-string v0, "12345678"

    aput-object v0, v2, v10

    const-string v0, "50469678"

    aput-object v0, v2, v11

    const-string v0, "Validation OCRA-1:HOTP-SHA1-8:C-QN08-P:  99999999"

    const/16 v4, 0x70

    const-string v5, "007"

    move v3, v8

    invoke-static/range {v0 .. v6}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a(Ljava/lang/String;[I[Ljava/lang/String;ZILjava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTTokenState;->testCounters()V

    return-void

    :array_0
    .array-data 4
        0x6f
        0x72
        0x73
        0x6e
    .end array-data

    :array_1
    .array-data 4
        0x6f
        0x72
        0x73
        0x6e
    .end array-data

    :array_2
    .array-data 4
        0x6f
        0x71
        0x6e
        0x7d
    .end array-data

    :array_3
    .array-data 4
        0x6f
        0x71
        0x6e
        0xd0
    .end array-data

    :array_4
    .array-data 4
        0x6f
        0x75
        0x74
        0x6e
    .end array-data

    :array_5
    .array-data 4
        0x6f
        0x75
        0x6e
    .end array-data

    :array_6
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
    .end array-data

    :array_7
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
    .end array-data

    :array_8
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
    .end array-data

    :array_9
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
    .end array-data

    :array_a
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
    .end array-data

    :array_b
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
    .end array-data

    :array_c
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
    .end array-data

    :array_d
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
    .end array-data

    :array_e
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
    .end array-data

    :array_f
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
    .end array-data

    :array_10
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
    .end array-data

    :array_11
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_12
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_13
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_14
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_15
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_16
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_17
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_18
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_19
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_1a
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_1b
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_1c
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_1d
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_1e
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_1f
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_20
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_21
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_22
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_23
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_24
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
    .end array-data

    :array_25
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x7a
        0x1f8
        0x1f9
        0x79
    .end array-data

    :array_26
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x7a
        0x1f8
        0x1f9
        0x79
    .end array-data

    :array_27
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x7a
        0x1f8
        0x1f9
        0x79
        0x7b
    .end array-data

    :array_28
    .array-data 4
        0x6f
        0x76
        0x77
        0x6e
        0x79
        0x7b
    .end array-data
.end method
