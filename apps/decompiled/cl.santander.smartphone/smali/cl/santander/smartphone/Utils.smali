.class public Lcl/santander/smartphone/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS:[I = null

.field public static final AB_HOME:I = 0x1

.field public static final AB_LOGO:I = 0x0

.field public static final AB_UP:I = 0x2

.field public static final ALERTACTIVE_ITEM:I = 0x6

.field public static final BANKING:I = 0x1

.field public static final BANKINGSAVINGS_ITEM:I = 0x0

.field public static final BANKINGSAVINGS_LIST:I = 0x1

.field public static final BORROWINGS_ITEM:I = 0x4

.field public static final BORROWINGS_LIST:I = 0x5

.field public static final CREDITCARDS_ITEM:I = 0x2

.field public static final CREDITCARDS_LIST:I = 0x3

.field public static final DESCONEXION:I = -0x3

.field public static final DIVISA_CHILENA:I = 0x0

.field public static final EXIT:I = -0x14

.field public static GPS_MENU:Z = false

.field public static HOCKEY:I = 0x0

.field public static final HOCKEY_DESHABILITADO:I = 0x0

.field public static final HOCKEY_HABILITADO:I = 0x1

.field public static final LOCALIZADOR:I = 0x6

.field public static final ONE_BUTTON:I = 0x1

.field public static final TWO_BUTTON:I = 0x2

.field public static deleteChar:Z

.field public static firstTime:Z

.field private static lastActualText:Ljava/lang/String;

.field public static secondTime:Z

.field public static tf_black:Landroid/graphics/Typeface;

.field public static tf_bold:Landroid/graphics/Typeface;

.field public static tf_normal:Landroid/graphics/Typeface;


# direct methods
.method static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS()[I
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcl/santander/smartphone/Utils;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->values()[Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_AHORRO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_CORRIENTE:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_CORRIENTE_DOLARES:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_VISTA:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->DEPOSITO_PLAZO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->LINEA_CREDITO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->LINEA_CREDITO_DOLARES:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->TARJETA_CREDITO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcl/santander/smartphone/Utils;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lcl/santander/smartphone/Utils;->GPS_MENU:Z

    .line 66
    sput-boolean v1, Lcl/santander/smartphone/Utils;->firstTime:Z

    .line 67
    sput-boolean v1, Lcl/santander/smartphone/Utils;->secondTime:Z

    .line 68
    sput-boolean v0, Lcl/santander/smartphone/Utils;->deleteChar:Z

    .line 87
    sput v0, Lcl/santander/smartphone/Utils;->HOCKEY:I

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HAPP_checkCrashes(Landroid/app/Activity;)V
    .locals 9
    .param p0, "fa"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 967
    :try_start_0
    invoke-static {p0}, Lcl/santander/smartphone/Utils;->isNetworkAvailable(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    :catch_0
    move-exception v6

    .line 979
    .local v6, "e":Ljava/lang/Exception;
    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 981
    .local v4, "s":[Ljava/lang/String;
    new-instance v7, Lcl/santander/smartphone/Utils$6;

    invoke-direct {v7, p0}, Lcl/santander/smartphone/Utils$6;-><init>(Landroid/app/Activity;)V

    .line 989
    .local v7, "run":Ljava/lang/Runnable;
    const v0, 0x7f05015a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f050146

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Runnable;

    aput-object v7, v5, v8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 991
    .end local v4    # "s":[Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "run":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 972
    :cond_0
    :try_start_1
    const-string v0, "ede25d65772861fe7faf7461f3c978dc"

    invoke-static {p0, v0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static HAPP_checkUpdates(Landroid/app/Activity;)V
    .locals 9
    .param p0, "fa"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 933
    :try_start_0
    invoke-static {p0}, Lcl/santander/smartphone/Utils;->isNetworkAvailable(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :catch_0
    move-exception v6

    .line 943
    .local v6, "e":Ljava/lang/Exception;
    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 945
    .local v4, "s":[Ljava/lang/String;
    new-instance v7, Lcl/santander/smartphone/Utils$5;

    invoke-direct {v7, p0}, Lcl/santander/smartphone/Utils$5;-><init>(Landroid/app/Activity;)V

    .line 953
    .local v7, "run":Ljava/lang/Runnable;
    const v0, 0x7f05015a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f050146

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Runnable;

    aput-object v7, v5, v8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 955
    .end local v4    # "s":[Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "run":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 938
    :cond_0
    :try_start_1
    const-string v0, "ede25d65772861fe7faf7461f3c978dc"

    invoke-static {p0, v0}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static addNumberAccount2(Landroid/text/Editable;I)Ljava/lang/String;
    .locals 12
    .param p0, "actualText"    # Landroid/text/Editable;
    .param p1, "maxLength"    # I

    .prologue
    const/16 v11, 0xb

    const/4 v10, 0x7

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 405
    sget-boolean v5, Lcl/santander/smartphone/Utils;->deleteChar:Z

    if-eqz v5, :cond_7

    .line 408
    sput-boolean v8, Lcl/santander/smartphone/Utils;->deleteChar:Z

    .line 410
    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "newNumber":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 414
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 415
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 416
    :cond_0
    :goto_0
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 419
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 421
    .local v1, "number":J
    const-wide/16 v5, 0xa

    cmp-long v5, v1, v5

    if-gez v5, :cond_2

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0.0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcl/santander/smartphone/Utils;->lastActualText:Ljava/lang/String;

    .line 424
    sget-object v5, Lcl/santander/smartphone/Utils;->lastActualText:Ljava/lang/String;

    .line 543
    .end local v0    # "newNumber":Ljava/lang/String;
    .end local v1    # "number":J
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    return-object v5

    .line 417
    .restart local v0    # "newNumber":Ljava/lang/String;
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 426
    .restart local v1    # "number":J
    :cond_2
    const-wide/16 v5, 0x64

    cmp-long v5, v1, v5

    if-gez v5, :cond_3

    .line 428
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcl/santander/smartphone/Utils;->lastActualText:Ljava/lang/String;

    .line 429
    sget-object v5, Lcl/santander/smartphone/Utils;->lastActualText:Ljava/lang/String;

    goto :goto_1

    .line 433
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-le v5, v9, :cond_4

    .line 436
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    add-int/lit8 v5, v5, -0x3

    const-string v6, ","

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-le v5, v10, :cond_5

    .line 442
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    add-int/lit8 v5, v5, -0x7

    const-string v6, ","

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-le v5, v11, :cond_6

    .line 448
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    add-int/lit8 v5, v5, -0xb

    const-string v6, ","

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    const-string v6, "."

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcl/santander/smartphone/Utils;->lastActualText:Ljava/lang/String;

    .line 452
    sget-object v5, Lcl/santander/smartphone/Utils;->lastActualText:Ljava/lang/String;

    goto :goto_1

    .line 461
    .end local v0    # "newNumber":Ljava/lang/String;
    .end local v1    # "number":J
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcl/santander/smartphone/Utils;->lastActualText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 465
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 466
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 467
    .local v4, "sb1":Ljava/lang/StringBuffer;
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_8

    .line 468
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 470
    :cond_8
    :goto_2
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_9

    .line 474
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-le v5, p1, :cond_a

    .line 477
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 478
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcl/santander/smartphone/Utils;->lastActualText:Ljava/lang/String;

    .line 479
    sget-object v5, Lcl/santander/smartphone/Utils;->lastActualText:Ljava/lang/String;

    goto/16 :goto_1

    .line 471
    :cond_9
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 484
    :cond_a
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_b

    .line 485
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 487
    :cond_b
    :goto_3
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_c

    .line 490
    const/4 v5, 0x1

    invoke-virtual {v3, v8, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 491
    .restart local v0    # "newNumber":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 492
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 496
    .restart local v1    # "number":J
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v3, v8, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 497
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 501
    const-wide/16 v5, 0xa

    cmp-long v5, v1, v5

    if-gez v5, :cond_d

    .line 503
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0.0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcl/santander/smartphone/Utils;->lastActualText:Ljava/lang/String;

    .line 504
    sget-object v5, Lcl/santander/smartphone/Utils;->lastActualText:Ljava/lang/String;

    goto/16 :goto_1

    .line 488
    .end local v0    # "newNumber":Ljava/lang/String;
    .end local v1    # "number":J
    :cond_c
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 506
    .restart local v0    # "newNumber":Ljava/lang/String;
    .restart local v1    # "number":J
    :cond_d
    const-wide/16 v5, 0x64

    cmp-long v5, v1, v5

    if-gez v5, :cond_e

    .line 508
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcl/santander/smartphone/Utils;->lastActualText:Ljava/lang/String;

    .line 509
    sget-object v5, Lcl/santander/smartphone/Utils;->lastActualText:Ljava/lang/String;

    goto/16 :goto_1

    .line 515
    :cond_e
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-le v5, v9, :cond_f

    .line 518
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    add-int/lit8 v5, v5, -0x3

    const-string v6, ","

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    :cond_f
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-le v5, v10, :cond_10

    .line 524
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    add-int/lit8 v5, v5, -0x7

    const-string v6, ","

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 527
    :cond_10
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-le v5, v11, :cond_11

    .line 530
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    add-int/lit8 v5, v5, -0xb

    const-string v6, ","

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    :cond_11
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    const-string v6, "."

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcl/santander/smartphone/Utils;->lastActualText:Ljava/lang/String;

    .line 535
    sget-object v5, Lcl/santander/smartphone/Utils;->lastActualText:Ljava/lang/String;

    goto/16 :goto_1

    .line 543
    .end local v0    # "newNumber":Ljava/lang/String;
    .end local v1    # "number":J
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "sb1":Ljava/lang/StringBuffer;
    :cond_12
    sget-object v5, Lcl/santander/smartphone/Utils;->lastActualText:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public static checkEmail(Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 804
    if-nez p0, :cond_0

    .line 805
    const/4 v0, 0x0

    .line 807
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static checkIfNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 811
    if-nez p0, :cond_0

    .line 820
    :goto_0
    return v1

    .line 814
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    const/4 v1, 0x1

    goto :goto_0

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static checkNombre(Landroid/text/Editable;)Ljava/lang/String;
    .locals 3
    .param p0, "editable"    # Landroid/text/Editable;

    .prologue
    .line 1050
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1056
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 1059
    .local v0, "aux":C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    .line 1060
    :cond_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0xe1

    if-eq v0, v2, :cond_3

    const/16 v2, 0xe9

    if-eq v0, v2, :cond_3

    .line 1061
    const/16 v2, 0xed

    if-eq v0, v2, :cond_3

    const/16 v2, 0xf3

    if-eq v0, v2, :cond_3

    const/16 v2, 0xfa

    if-eq v0, v2, :cond_3

    const/16 v2, 0xc1

    if-eq v0, v2, :cond_3

    .line 1062
    const/16 v2, 0xc9

    if-eq v0, v2, :cond_3

    const/16 v2, 0xcd

    if-eq v0, v2, :cond_3

    const/16 v2, 0xd3

    if-eq v0, v2, :cond_3

    const/16 v2, 0xda

    if-eq v0, v2, :cond_3

    .line 1063
    const/16 v2, 0xfc

    if-eq v0, v2, :cond_3

    const/16 v2, 0xdc

    if-eq v0, v2, :cond_3

    const/16 v2, 0xf1

    if-eq v0, v2, :cond_3

    const/16 v2, 0xd1

    if-eq v0, v2, :cond_3

    .line 1064
    const/16 v2, 0x2b

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_3

    .line 1065
    const/16 v2, 0x3b

    if-eq v0, v2, :cond_3

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_3

    const/16 v2, 0xbf

    if-eq v0, v2, :cond_3

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_3

    .line 1066
    const/16 v2, 0xa1

    if-eq v0, v2, :cond_3

    const/16 v2, 0x21

    if-eq v0, v2, :cond_3

    const/16 v2, 0x24

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_3

    .line 1067
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_3

    const/16 v2, 0x27

    if-eq v0, v2, :cond_3

    const/16 v2, 0x26

    if-eq v0, v2, :cond_3

    const/16 v2, 0x20

    if-eq v0, v2, :cond_3

    .line 1074
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1079
    .end local v0    # "aux":C
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static checkRut(Landroid/text/Editable;)Ljava/lang/String;
    .locals 5
    .param p0, "editable"    # Landroid/text/Editable;

    .prologue
    .line 1000
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1003
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1009
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1010
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x6b

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x4b

    if-ne v3, v4, :cond_2

    .line 1017
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 1018
    .local v1, "k":C
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1024
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1027
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1029
    :catch_1
    move-exception v3

    goto :goto_0

    .line 1034
    .end local v1    # "k":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static copy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lde/viktorreiser/toolbox/widget/SectionListItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lde/viktorreiser/toolbox/widget/SectionListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "iTEMS":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/viktorreiser/toolbox/widget/SectionListItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v0, "aux":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/viktorreiser/toolbox/widget/SectionListItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 603
    return-object v0

    .line 601
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/viktorreiser/toolbox/widget/SectionListItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static downloadImage(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 197
    const/4 v2, 0x0

    .line 198
    .local v2, "image":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 200
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 202
    .local v4, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 206
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    .line 207
    .local v3, "is":Ljava/io/InputStream;
    const-string v5, "src name"

    invoke-static {v3, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 214
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static formatDay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "day"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 103
    .end local p0    # "day":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "day":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static formatearEstrellaOferta(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6
    .param p0, "tv_estrella_1"    # Landroid/widget/TextView;
    .param p1, "tv_estrella_2"    # Landroid/widget/TextView;
    .param p2, "tv_estrella_3"    # Landroid/widget/TextView;
    .param p3, "descOferta"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 886
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Gratis"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 889
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 890
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 891
    const-string v2, "$0"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    :goto_0
    return-void

    .line 893
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 895
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 896
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 897
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 899
    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 900
    .local v0, "nbs":I
    invoke-virtual {p3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 903
    .end local v0    # "nbs":I
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 905
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 906
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 907
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 909
    const-string v2, "x"

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 910
    .local v1, "x":I
    invoke-virtual {p3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 916
    .end local v1    # "x":I
    :cond_2
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 917
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 918
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 919
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static varargs getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;
    .locals 9
    .param p0, "fa"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "butonsNumber"    # I
    .param p4, "buttonText"    # [Ljava/lang/String;
    .param p5, "listeners"    # [Ljava/lang/Runnable;

    .prologue
    .line 223
    new-instance v2, Landroid/app/Dialog;

    const v7, 0x7f0b0059

    invoke-direct {v2, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 225
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 226
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 229
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 232
    .local v4, "layout":Landroid/view/View;
    const/4 v7, 0x1

    if-ne p3, v7, :cond_1

    .line 233
    const v7, 0x7f030014

    .line 234
    const/4 v8, 0x0

    .line 233
    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 236
    const v7, 0x7f06002f

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 237
    .local v0, "bot1":Landroid/widget/Button;
    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 238
    sget-object v7, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 239
    new-instance v7, Lcl/santander/smartphone/Utils$1;

    invoke-direct {v7, p5, v2}, Lcl/santander/smartphone/Utils$1;-><init>([Ljava/lang/Runnable;Landroid/app/Dialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    .end local v0    # "bot1":Landroid/widget/Button;
    :cond_0
    :goto_0
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 291
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 292
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 300
    const v7, 0x7f06002d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 301
    .local v6, "tv_title":Landroid/widget/TextView;
    sget-object v7, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 302
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    const v7, 0x7f06002e

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 305
    .local v5, "tv_description":Landroid/widget/TextView;
    sget-object v7, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 306
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    new-instance v7, Lcl/santander/smartphone/Utils$4;

    invoke-direct {v7, p0}, Lcl/santander/smartphone/Utils$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 318
    return-object v2

    .line 252
    .end local v5    # "tv_description":Landroid/widget/TextView;
    .end local v6    # "tv_title":Landroid/widget/TextView;
    :cond_1
    const/4 v7, 0x2

    if-ne p3, v7, :cond_0

    .line 253
    const v7, 0x7f030015

    .line 254
    const/4 v8, 0x0

    .line 253
    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 255
    const v7, 0x7f06002f

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 256
    .restart local v0    # "bot1":Landroid/widget/Button;
    const v7, 0x7f060030

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 258
    .local v1, "bot2":Landroid/widget/Button;
    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const/4 v7, 0x1

    aget-object v7, p4, v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 261
    sget-object v7, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 262
    sget-object v7, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 264
    new-instance v7, Lcl/santander/smartphone/Utils$2;

    invoke-direct {v7, p5, v2}, Lcl/santander/smartphone/Utils$2;-><init>([Ljava/lang/Runnable;Landroid/app/Dialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    new-instance v7, Lcl/santander/smartphone/Utils$3;

    invoke-direct {v7, p5, v2}, Lcl/santander/smartphone/Utils$3;-><init>([Ljava/lang/Runnable;Landroid/app/Dialog;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static getDisplayNameForMonth(I)Ljava/lang/String;
    .locals 1
    .param p0, "month"    # I

    .prologue
    .line 642
    packed-switch p0, :pswitch_data_0

    .line 671
    const-string v0, ""

    :goto_0
    return-object v0

    .line 645
    :pswitch_0
    const-string v0, "ENERO"

    goto :goto_0

    .line 647
    :pswitch_1
    const-string v0, "FEBRERO"

    goto :goto_0

    .line 649
    :pswitch_2
    const-string v0, "MARZO"

    goto :goto_0

    .line 651
    :pswitch_3
    const-string v0, "ABRIL"

    goto :goto_0

    .line 653
    :pswitch_4
    const-string v0, "MAYO"

    goto :goto_0

    .line 655
    :pswitch_5
    const-string v0, "JUNIO"

    goto :goto_0

    .line 657
    :pswitch_6
    const-string v0, "JULIO"

    goto :goto_0

    .line 659
    :pswitch_7
    const-string v0, "AGOSTO"

    goto :goto_0

    .line 661
    :pswitch_8
    const-string v0, "SEPTIEMBRE"

    goto :goto_0

    .line 663
    :pswitch_9
    const-string v0, "OCTUBRE"

    goto :goto_0

    .line 665
    :pswitch_a
    const-string v0, "NOVIEMBRE"

    goto :goto_0

    .line 667
    :pswitch_b
    const-string v0, "DICIEMBRE"

    goto :goto_0

    .line 642
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getFilterProducts(Lcl/santander/santanderCL/data/MatrizProductos;I)Lcl/santander/santanderCL/data/MatrizProductos;
    .locals 4
    .param p0, "productosOrigen"    # Lcl/santander/santanderCL/data/MatrizProductos;
    .param p1, "filtro"    # I

    .prologue
    .line 683
    new-instance v1, Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v1}, Lcl/santander/santanderCL/data/MatrizProductos;-><init>()V

    .line 684
    .local v1, "productosFiltrados":Lcl/santander/santanderCL/data/MatrizProductos;
    packed-switch p1, :pswitch_data_0

    .line 702
    :cond_0
    return-object v1

    .line 687
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 689
    invoke-virtual {p0, v0}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 692
    invoke-virtual {p0}, Lcl/santander/santanderCL/data/MatrizProductos;->getSelected()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 693
    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->setSelected(I)V

    .line 695
    :cond_1
    invoke-virtual {p0, v0}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->add(Lcl/santander/santanderCL/data/response/ItemProducto;)V

    .line 687
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 684
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getFontbyID(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "_id"    # Ljava/lang/String;

    .prologue
    .line 607
    const-string v0, "bold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 608
    sget-object v0, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    .line 611
    :goto_0
    return-object v0

    .line 609
    :cond_0
    const-string v0, "black"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 610
    sget-object v0, Lcl/santander/smartphone/Utils;->tf_black:Landroid/graphics/Typeface;

    goto :goto_0

    .line 611
    :cond_1
    sget-object v0, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static getScreenRatio(Landroid/app/Activity;)I
    .locals 2
    .param p0, "fa"    # Landroid/app/Activity;

    .prologue
    .line 798
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 799
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 800
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v1
.end method

.method public static getTipoProductoString(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;)Ljava/lang/String;
    .locals 3
    .param p0, "sfa"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .param p1, "tipo"    # Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    .prologue
    .line 743
    const-string v0, ""

    .line 745
    .local v0, "tipoString":Ljava/lang/String;
    invoke-static {}, Lcl/santander/smartphone/Utils;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS()[I

    move-result-object v1

    invoke-virtual {p1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 773
    :goto_0
    return-object v0

    .line 748
    :pswitch_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 749
    goto :goto_0

    .line 751
    :pswitch_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 752
    goto :goto_0

    .line 754
    :pswitch_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 755
    goto :goto_0

    .line 757
    :pswitch_3
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05012c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 758
    goto :goto_0

    .line 760
    :pswitch_4
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 761
    goto :goto_0

    .line 763
    :pswitch_5
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 764
    goto :goto_0

    .line 766
    :pswitch_6
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 767
    goto :goto_0

    .line 769
    :pswitch_7
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 745
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static isNetworkAvailable(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "fa"    # Landroid/app/Activity;

    .prologue
    .line 785
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 786
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 787
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadFonts(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 327
    const-string v1, "fonts/Roboto-Bold.ttf"

    .line 326
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 330
    const-string v1, "fonts/Roboto-Regular.ttf"

    .line 329
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 333
    const-string v1, "fonts/Roboto-Black.ttf"

    .line 332
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcl/santander/smartphone/Utils;->tf_black:Landroid/graphics/Typeface;

    .line 334
    return-void
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "numero"    # Ljava/lang/String;

    .prologue
    .line 115
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 117
    .local v1, "md":Ljava/security/MessageDigest;
    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 119
    .local v2, "md5":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "md5":[B
    :goto_0
    return-object v3

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static overrideFonts(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 615
    if-eqz p1, :cond_0

    .line 616
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v2, p1

    .line 617
    check-cast v2, Landroid/view/ViewGroup;

    .line 618
    .local v2, "vg":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 632
    .end local v1    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_0
    :goto_1
    return-void

    .line 619
    .restart local v1    # "i":I
    .restart local v2    # "vg":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 620
    .local v0, "child":Landroid/view/View;
    invoke-static {p0, v0}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 618
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_2
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 623
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcl/santander/smartphone/Utils;->getFontbyID(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 625
    :cond_3
    instance-of v3, p1, Landroid/widget/Button;

    if-eqz v3, :cond_4

    .line 626
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcl/santander/smartphone/Utils;->getFontbyID(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 628
    :cond_4
    instance-of v3, p1, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 629
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcl/santander/smartphone/Utils;->getFontbyID(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1
.end method

.method public static reesCalarDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "dp"    # I

    .prologue
    .line 859
    if-nez p0, :cond_0

    .line 860
    const/4 v4, 0x0

    .line 869
    .end local p0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v4

    .line 863
    .restart local p0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 865
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    int-to-float v4, p2

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 867
    .local v3, "px":I
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 868
    .local v1, "dr":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    invoke-static {v1, v3, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 869
    .local v0, "bitmapOrig":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static reesCalarPOI(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 833
    if-nez p0, :cond_0

    .line 834
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 843
    .end local p0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v4

    .line 837
    .restart local p0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 839
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v4, 0x42200000    # 40.0f

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 841
    .local v3, "px":I
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 842
    .local v1, "dr":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    invoke-static {v1, v3, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 843
    .local v0, "bitmapOrig":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V
    .locals 2
    .param p0, "tipo"    # I
    .param p1, "bar"    # Lcom/actionbarsherlock/app/ActionBar;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 152
    packed-switch p0, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 156
    :pswitch_0
    invoke-virtual {p1, v1}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 159
    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 160
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 161
    invoke-virtual {p1, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 162
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {p1, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_0

    .line 167
    :pswitch_1
    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 168
    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 171
    invoke-virtual {p1, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 176
    :pswitch_2
    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 177
    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 180
    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static trunk_md5(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "valores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 138
    return-object v2

    .line 134
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v4, -0x8

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "aux":Ljava/lang/String;
    invoke-static {v0}, Lcl/santander/smartphone/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static unificarProductos()Lcl/santander/santanderCL/data/MatrizProductos;
    .locals 7

    .prologue
    .line 713
    new-instance v3, Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v3}, Lcl/santander/santanderCL/data/MatrizProductos;-><init>()V

    .line 715
    .local v3, "productosDestino":Lcl/santander/santanderCL/data/MatrizProductos;
    sget-object v5, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/MatrizProductos;

    .line 716
    .local v0, "cuentas":Lcl/santander/santanderCL/data/MatrizProductos;
    sget-object v5, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/santander/santanderCL/data/MatrizProductos;

    .line 717
    .local v4, "tarjetas":Lcl/santander/santanderCL/data/MatrizProductos;
    sget-object v5, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/santander/santanderCL/data/MatrizProductos;

    .line 720
    .local v2, "lineascredito":Lcl/santander/santanderCL/data/MatrizProductos;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 725
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 728
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v4}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v5

    if-lt v1, v5, :cond_2

    .line 731
    return-object v3

    .line 721
    :cond_0
    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcl/santander/santanderCL/data/MatrizProductos;->add(Lcl/santander/santanderCL/data/response/ItemProducto;)V

    .line 720
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    :cond_1
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcl/santander/santanderCL/data/MatrizProductos;->add(Lcl/santander/santanderCL/data/response/ItemProducto;)V

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 729
    :cond_2
    invoke-virtual {v4, v1}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcl/santander/santanderCL/data/MatrizProductos;->add(Lcl/santander/santanderCL/data/response/ItemProducto;)V

    .line 728
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static validationAmount(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 5
    .param p0, "amount"    # Ljava/lang/String;
    .param p1, "biggerthan"    # Z
    .param p2, "compareString"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2d

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 560
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 563
    .local v0, "sb":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_4

    .line 565
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    .line 566
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 568
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 591
    :cond_1
    :goto_0
    return v1

    .line 571
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 572
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    move v1, v2

    .line 575
    goto :goto_0

    .line 581
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_5

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 584
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 587
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 588
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_6
    move v1, v2

    .line 591
    goto :goto_0
.end method
