.class public Lcl/santander/santanderCL/data/MatrizMovLineasCredito;
.super Ljava/lang/Object;
.source "MatrizMovLineasCredito.java"


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
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizMovLineasCredito;->movimientos:Ljava/util/ArrayList;

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V
    .locals 18
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "divisa"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-eqz p1, :cond_0

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/santanderCL/data/MatrizMovLineasCredito;->movimientos:Ljava/util/ArrayList;

    .line 25
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v1

    if-lt v14, v1, :cond_1

    .line 42
    .end local v14    # "i":I
    :cond_0
    return-void

    .line 27
    .restart local v14    # "i":I
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v15

    .line 28
    .local v15, "info":Ljava/lang/Object;
    if-eqz v15, :cond_2

    instance-of v1, v15, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v1, :cond_2

    .line 31
    :try_start_0
    new-instance v16, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;

    check-cast v15, Lorg/ksoap2/serialization/SoapObject;

    .end local v15    # "info":Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    .line 32
    .local v16, "item":Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;
    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->getFecha()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->getNumeroMovimiento()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/santanderCL/data/MatrizMovLineasCredito;->movimientos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->getFecha()Ljava/util/Date;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->getImporte()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->getDescripcion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->getTipo()Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->getNumeroMovimiento()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->getReferencia()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v12}, Lcl/santander/santanderCL/data/response/ItemMovimiento;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v16    # "item":Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;
    :cond_2
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 35
    :catch_0
    move-exception v13

    .line 36
    .local v13, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parseo Mov Linea Cr\u017ddito:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public add(Lcl/santander/santanderCL/data/response/ItemMovimiento;)V
    .locals 1
    .param p1, "value"    # Lcl/santander/santanderCL/data/response/ItemMovimiento;

    .prologue
    .line 50
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizMovLineasCredito;->movimientos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public get(I)Lcl/santander/santanderCL/data/response/ItemMovimiento;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizMovLineasCredito;->movimientos:Ljava/util/ArrayList;

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
    .line 46
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizMovLineasCredito;->movimientos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizMovLineasCredito;->movimientos:Ljava/util/ArrayList;

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
    .line 55
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizMovLineasCredito;->movimientos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
