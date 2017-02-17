.class public Lcl/santander/santanderCL/data/MatrizAccionesCompra;
.super Ljava/lang/Object;
.source "MatrizAccionesCompra.java"


# instance fields
.field acciones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemAccionCompra;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizAccionesCompra;->acciones:Ljava/util/ArrayList;

    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 6
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-eqz p1, :cond_2

    .line 21
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcl/santander/santanderCL/data/MatrizAccionesCompra;->acciones:Ljava/util/ArrayList;

    .line 23
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 39
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 24
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    .line 25
    .local v2, "info":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v4, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_1

    .line 27
    :try_start_0
    new-instance v3, Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "info":Ljava/lang/Object;
    invoke-direct {v3, v2}, Lcl/santander/santanderCL/data/response/ItemAccionCompra;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    .line 28
    .local v3, "item":Lcl/santander/santanderCL/data/response/ItemAccionCompra;
    iget-object v4, p0, Lcl/santander/santanderCL/data/MatrizAccionesCompra;->acciones:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .end local v3    # "item":Lcl/santander/santanderCL/data/response/ItemAccionCompra;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ItemAccionCompra:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 36
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "i":I
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcl/santander/santanderCL/data/MatrizAccionesCompra;->acciones:Ljava/util/ArrayList;

    goto :goto_1
.end method


# virtual methods
.method public add(Lcl/santander/santanderCL/data/response/ItemAccionCompra;)V
    .locals 1
    .param p1, "value"    # Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    .prologue
    .line 50
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizAccionesCompra;->acciones:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public get(I)Lcl/santander/santanderCL/data/response/ItemAccionCompra;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizAccionesCompra;->acciones:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    return-object v0
.end method

.method public getAccionesCompra()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemAccionCompra;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizAccionesCompra;->acciones:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizAccionesCompra;->acciones:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizAccionesCompra;->acciones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
