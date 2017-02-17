.class public Lcl/santander/santanderCL/data/MatrizSucursales;
.super Ljava/lang/Object;
.source "MatrizSucursales.java"


# instance fields
.field sucursales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemSucursal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 6
    .param p1, "root"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-eqz p1, :cond_0

    .line 21
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcl/santander/santanderCL/data/MatrizSucursales;->sucursales:Ljava/util/ArrayList;

    .line 23
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 37
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 24
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    .line 25
    .local v2, "info":Ljava/lang/Object;
    if-eqz v2, :cond_2

    instance-of v4, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_2

    .line 27
    :try_start_0
    new-instance v3, Lcl/santander/santanderCL/data/response/ItemSucursal;

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "info":Ljava/lang/Object;
    invoke-direct {v3, v2}, Lcl/santander/santanderCL/data/response/ItemSucursal;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    .line 28
    .local v3, "item":Lcl/santander/santanderCL/data/response/ItemSucursal;
    iget-object v4, p0, Lcl/santander/santanderCL/data/MatrizSucursales;->sucursales:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .end local v3    # "item":Lcl/santander/santanderCL/data/response/ItemSucursal;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ItemSucursal:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public add(Lcl/santander/santanderCL/data/response/ItemSucursal;)V
    .locals 1
    .param p1, "value"    # Lcl/santander/santanderCL/data/response/ItemSucursal;

    .prologue
    .line 46
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizSucursales;->sucursales:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public get(I)Lcl/santander/santanderCL/data/response/ItemSucursal;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizSucursales;->sucursales:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemSucursal;

    return-object v0
.end method

.method public getSucursales()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemSucursal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizSucursales;->sucursales:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizSucursales;->sucursales:Ljava/util/ArrayList;

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
    .line 51
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizSucursales;->sucursales:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
