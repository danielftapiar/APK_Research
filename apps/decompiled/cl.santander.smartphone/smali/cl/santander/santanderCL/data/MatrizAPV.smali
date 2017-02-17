.class public Lcl/santander/santanderCL/data/MatrizAPV;
.super Ljava/lang/Object;
.source "MatrizAPV.java"


# instance fields
.field inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$GRUPO;)V
    .locals 13
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "grupo"    # Lcl/santander/santanderCL/utils/Constant$GRUPO;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-eqz p1, :cond_0

    .line 19
    new-instance v0, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcl/santander/santanderCL/data/MatrizInversiones;-><init>(I)V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizAPV;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    .line 21
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v0

    if-lt v9, v0, :cond_1

    .line 35
    .end local v9    # "i":I
    :cond_0
    return-void

    .line 22
    .restart local v9    # "i":I
    :cond_1
    invoke-virtual {p1, v9}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v10

    .line 23
    .local v10, "info":Ljava/lang/Object;
    if-eqz v10, :cond_2

    instance-of v0, v10, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v0, :cond_2

    .line 25
    :try_start_0
    new-instance v11, Lcl/santander/santanderCL/data/response/ItemAPV;

    check-cast v10, Lorg/ksoap2/serialization/SoapObject;

    .end local v10    # "info":Ljava/lang/Object;
    invoke-direct {v11, v10}, Lcl/santander/santanderCL/data/response/ItemAPV;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    .line 27
    .local v11, "item":Lcl/santander/santanderCL/data/response/ItemAPV;
    iget-object v12, p0, Lcl/santander/santanderCL/data/MatrizAPV;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    new-instance v0, Lcl/santander/santanderCL/data/response/ItemInversion;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DESC_PRODUCTO:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v11}, Lcl/santander/santanderCL/data/response/ItemAPV;->getTipoCuenta()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcl/santander/santanderCL/data/response/ItemAPV;->getSaldoPesos()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-virtual {v11}, Lcl/santander/santanderCL/data/response/ItemAPV;->getDescFondo()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_APV:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-direct/range {v0 .. v7}, Lcl/santander/santanderCL/data/response/ItemInversion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    invoke-virtual {v12, v0}, Lcl/santander/santanderCL/data/MatrizInversiones;->add(Lcl/santander/santanderCL/data/response/ItemInversion;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .end local v11    # "item":Lcl/santander/santanderCL/data/response/ItemAPV;
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 29
    :catch_0
    move-exception v8

    .line 30
    .local v8, "ex":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ItemAPV:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public add(Lcl/santander/santanderCL/data/response/ItemInversion;)V
    .locals 1
    .param p1, "value"    # Lcl/santander/santanderCL/data/response/ItemInversion;

    .prologue
    .line 47
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizAPV;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v0, p1}, Lcl/santander/santanderCL/data/MatrizInversiones;->add(Lcl/santander/santanderCL/data/response/ItemInversion;)V

    .line 48
    return-void
.end method

.method public get(I)Lcl/santander/santanderCL/data/response/ItemInversion;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizAPV;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v0, p1}, Lcl/santander/santanderCL/data/MatrizInversiones;->get(I)Lcl/santander/santanderCL/data/response/ItemInversion;

    move-result-object v0

    return-object v0
.end method

.method public getAPV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemInversion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizAPV;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizInversiones;->getInversiones()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getInversiones()Lcl/santander/santanderCL/data/MatrizInversiones;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizAPV;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizAPV;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

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
    .line 52
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizAPV;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizInversiones;->size()I

    move-result v0

    return v0
.end method
