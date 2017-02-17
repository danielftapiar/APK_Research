.class public Lcl/santander/santanderCL/data/MatrizDepositos;
.super Ljava/lang/Object;
.source "MatrizDepositos.java"


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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizDepositos;->movimientos:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V
    .locals 17
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "divisa"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-eqz p1, :cond_0

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/santanderCL/data/MatrizDepositos;->movimientos:Ljava/util/ArrayList;

    .line 23
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v1

    if-lt v13, v1, :cond_1

    .line 38
    .end local v13    # "i":I
    :cond_0
    return-void

    .line 25
    .restart local v13    # "i":I
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v14

    .line 26
    .local v14, "info":Ljava/lang/Object;
    if-eqz v14, :cond_2

    instance-of v1, v14, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v1, :cond_2

    .line 28
    :try_start_0
    new-instance v15, Lcl/santander/santanderCL/data/response/ItemDeposito;

    check-cast v14, Lorg/ksoap2/serialization/SoapObject;

    .end local v14    # "info":Ljava/lang/Object;
    invoke-direct {v15, v14}, Lcl/santander/santanderCL/data/response/ItemDeposito;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    .line 29
    .local v15, "item":Lcl/santander/santanderCL/data/response/ItemDeposito;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/santanderCL/data/MatrizDepositos;->movimientos:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemDeposito;->getFechaOperacion()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemDeposito;->getImporte()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemDeposito;->getDescripcion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemDeposito;->getTipoMovimiento()Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    move-result-object v5

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemDeposito;->getNumeroMovimiento()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemDeposito;->getReferencia()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemDeposito;->getObservaciones()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemDeposito;->tieneCheques()Z

    move-result v9

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemDeposito;->tieneBoleta()Z

    move-result v11

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/response/ItemDeposito;->getNumPapeleta()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v12}, Lcl/santander/santanderCL/data/response/ItemMovimiento;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .end local v15    # "item":Lcl/santander/santanderCL/data/response/ItemDeposito;
    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public add(Lcl/santander/santanderCL/data/response/ItemMovimiento;)V
    .locals 1
    .param p1, "value"    # Lcl/santander/santanderCL/data/response/ItemMovimiento;

    .prologue
    .line 48
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizDepositos;->movimientos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public get(I)Lcl/santander/santanderCL/data/response/ItemMovimiento;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizDepositos;->movimientos:Ljava/util/ArrayList;

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
    .line 44
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizDepositos;->movimientos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizDepositos;->movimientos:Ljava/util/ArrayList;

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
    .line 53
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizDepositos;->movimientos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
