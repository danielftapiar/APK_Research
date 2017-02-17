.class public Lcl/santander/santanderCL/data/MatrizFondosMutuos;
.super Ljava/lang/Object;
.source "MatrizFondosMutuos.java"


# instance fields
.field inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$GRUPO;)V
    .locals 12
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "grupo"    # Lcl/santander/santanderCL/utils/Constant$GRUPO;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-eqz p1, :cond_2

    .line 18
    new-instance v0, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcl/santander/santanderCL/data/MatrizInversiones;-><init>(I)V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizFondosMutuos;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    .line 19
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizFondosMutuos;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v0, p2}, Lcl/santander/santanderCL/data/MatrizInversiones;->setGrupo(Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    .line 20
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v0

    if-lt v8, v0, :cond_0

    .line 35
    .end local v8    # "i":I
    :goto_1
    return-void

    .line 22
    .restart local v8    # "i":I
    :cond_0
    invoke-virtual {p1, v8}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v9

    .line 23
    .local v9, "info":Ljava/lang/Object;
    if-eqz v9, :cond_1

    instance-of v0, v9, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v0, :cond_1

    .line 25
    new-instance v10, Lcl/santander/santanderCL/data/response/ItemFondo;

    check-cast v9, Lorg/ksoap2/serialization/SoapObject;

    .end local v9    # "info":Ljava/lang/Object;
    invoke-direct {v10, v9}, Lcl/santander/santanderCL/data/response/ItemFondo;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    .line 27
    .local v10, "item":Lcl/santander/santanderCL/data/response/ItemFondo;
    iget-object v11, p0, Lcl/santander/santanderCL/data/MatrizFondosMutuos;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    new-instance v0, Lcl/santander/santanderCL/data/response/ItemInversion;

    const-string v1, "Fondo Mutuo"

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v10}, Lcl/santander/santanderCL/data/response/ItemFondo;->getSaldo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcl/santander/santanderCL/data/response/ItemFondo;->getMoneda()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcl/santander/santanderCL/data/response/ItemFondo;->getGlosaFondo()Ljava/lang/String;

    move-result-object v6

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcl/santander/santanderCL/data/response/ItemInversion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    invoke-virtual {v11, v0}, Lcl/santander/santanderCL/data/MatrizInversiones;->add(Lcl/santander/santanderCL/data/response/ItemInversion;)V

    .line 20
    .end local v10    # "item":Lcl/santander/santanderCL/data/response/ItemFondo;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 33
    .end local v8    # "i":I
    :cond_2
    new-instance v0, Lcl/santander/santanderCL/data/MatrizInversiones;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcl/santander/santanderCL/data/MatrizInversiones;-><init>(I)V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizFondosMutuos;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    goto :goto_1
.end method


# virtual methods
.method public add(Lcl/santander/santanderCL/data/response/ItemInversion;)V
    .locals 1
    .param p1, "value"    # Lcl/santander/santanderCL/data/response/ItemInversion;

    .prologue
    .line 48
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizFondosMutuos;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v0, p1}, Lcl/santander/santanderCL/data/MatrizInversiones;->add(Lcl/santander/santanderCL/data/response/ItemInversion;)V

    .line 49
    return-void
.end method

.method public get(I)Lcl/santander/santanderCL/data/response/ItemInversion;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizFondosMutuos;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v0, p1}, Lcl/santander/santanderCL/data/MatrizInversiones;->get(I)Lcl/santander/santanderCL/data/response/ItemInversion;

    move-result-object v0

    return-object v0
.end method

.method public getFondosMutuos()Ljava/util/ArrayList;
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
    .line 44
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizFondosMutuos;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizInversiones;->getInversiones()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getInversiones()Lcl/santander/santanderCL/data/MatrizInversiones;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizFondosMutuos;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizFondosMutuos;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizFondosMutuos;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizInversiones;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizFondosMutuos;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizInversiones;->size()I

    move-result v0

    return v0
.end method
