.class public Lcl/santander/santanderCL/data/MatrizCuentasAhorro;
.super Ljava/lang/Object;
.source "MatrizCuentasAhorro.java"


# static fields
.field private static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$TIPO_MOVIMIENTO:[I


# instance fields
.field private movimientos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemMovimiento;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$TIPO_MOVIMIENTO()[I
    .locals 3

    .prologue
    .line 10
    sget-object v0, Lcl/santander/santanderCL/data/MatrizCuentasAhorro;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$TIPO_MOVIMIENTO:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->values()[Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->ABONO:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->CARGO:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->SECCION:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->SIN_TIPO:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcl/santander/santanderCL/data/MatrizCuentasAhorro;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$TIPO_MOVIMIENTO:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizCuentasAhorro;->movimientos:Ljava/util/ArrayList;

    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V
    .locals 17
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "divisa"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-eqz p1, :cond_0

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/santanderCL/data/MatrizCuentasAhorro;->movimientos:Ljava/util/ArrayList;

    .line 21
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v1

    if-lt v13, v1, :cond_1

    .line 48
    .end local v13    # "i":I
    :cond_0
    return-void

    .line 23
    .restart local v13    # "i":I
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v14

    .line 24
    .local v14, "info":Ljava/lang/Object;
    if-eqz v14, :cond_2

    instance-of v1, v14, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v1, :cond_2

    .line 26
    :try_start_0
    new-instance v15, Lcl/santander/santanderCL/data/response/ItemAhorro;

    check-cast v14, Lorg/ksoap2/serialization/SoapObject;

    .end local v14    # "info":Ljava/lang/Object;
    invoke-direct {v15, v14}, Lcl/santander/santanderCL/data/response/ItemAhorro;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    .line 28
    .local v15, "item":Lcl/santander/santanderCL/data/response/ItemAhorro;
    invoke-static {}, Lcl/santander/santanderCL/data/MatrizCuentasAhorro;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$TIPO_MOVIMIENTO()[I

    move-result-object v1

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemAhorro;->getTipoMovimiento()Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 21
    .end local v15    # "item":Lcl/santander/santanderCL/data/response/ItemAhorro;
    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 31
    .restart local v15    # "item":Lcl/santander/santanderCL/data/response/ItemAhorro;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/santanderCL/data/MatrizCuentasAhorro;->movimientos:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemAhorro;->getFecha()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemAhorro;->getCargo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemAhorro;->getDescripcion()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->ABONO:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v12}, Lcl/santander/santanderCL/data/response/ItemMovimiento;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 41
    .end local v15    # "item":Lcl/santander/santanderCL/data/response/ItemAhorro;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 35
    .restart local v15    # "item":Lcl/santander/santanderCL/data/response/ItemAhorro;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/santanderCL/data/MatrizCuentasAhorro;->movimientos:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemAhorro;->getFecha()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemAhorro;->getAbono()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemAhorro;->getDescripcion()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->CARGO:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v12}, Lcl/santander/santanderCL/data/response/ItemMovimiento;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public add(Lcl/santander/santanderCL/data/response/ItemMovimiento;)V
    .locals 1
    .param p1, "value"    # Lcl/santander/santanderCL/data/response/ItemMovimiento;

    .prologue
    .line 58
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizCuentasAhorro;->movimientos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public get(I)Lcl/santander/santanderCL/data/response/ItemMovimiento;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizCuentasAhorro;->movimientos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemMovimiento;

    return-object v0
.end method

.method public getMovimientos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemMovimiento;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizCuentasAhorro;->movimientos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizCuentasAhorro;->movimientos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizCuentasAhorro;->movimientos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
