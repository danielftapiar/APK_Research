.class public Lcl/santander/santanderCL/data/MatrizPOI;
.super Ljava/lang/Object;
.source "MatrizPOI.java"


# instance fields
.field pois:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemPOI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizPOI;->pois:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;DD)V
    .locals 11
    .param p1, "root"    # Ljava/util/Vector;
    .param p2, "lat"    # D
    .param p4, "lng"    # D

    .prologue
    const-wide/16 v9, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-eqz p1, :cond_0

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcl/santander/santanderCL/data/MatrizPOI;->pois:Ljava/util/ArrayList;

    .line 26
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v7, v2, :cond_1

    .line 44
    .end local v7    # "i":I
    :cond_0
    return-void

    .line 27
    .restart local v7    # "i":I
    :cond_1
    invoke-virtual {p1, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 28
    .local v8, "info":Ljava/lang/Object;
    if-eqz v8, :cond_2

    instance-of v2, v8, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v2, :cond_2

    .line 30
    :try_start_0
    new-instance v1, Lcl/santander/santanderCL/data/response/ItemImperdible;

    .line 31
    move-object v0, v8

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object v2, v0

    move-wide v3, p2

    move-wide v5, p4

    .line 30
    invoke-direct/range {v1 .. v6}, Lcl/santander/santanderCL/data/response/ItemImperdible;-><init>(Lorg/ksoap2/serialization/SoapObject;DD)V

    .line 33
    .local v1, "item":Lcl/santander/santanderCL/data/response/ItemImperdible;
    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getLat()D

    move-result-wide v2

    cmpl-double v2, v2, v9

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getLng()D

    move-result-wide v2

    cmpl-double v2, v2, v9

    if-eqz v2, :cond_2

    .line 34
    iget-object v2, p0, Lcl/santander/santanderCL/data/MatrizPOI;->pois:Ljava/util/ArrayList;

    new-instance v3, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-direct {v3, v1}, Lcl/santander/santanderCL/data/response/ItemPOI;-><init>(Lcl/santander/santanderCL/data/response/ItemImperdible;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v1    # "item":Lcl/santander/santanderCL/data/response/ItemImperdible;
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 36
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 6
    .param p1, "root"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-eqz p1, :cond_0

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcl/santander/santanderCL/data/MatrizPOI;->pois:Ljava/util/ArrayList;

    .line 52
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 66
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 53
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    .line 54
    .local v2, "info":Ljava/lang/Object;
    if-eqz v2, :cond_2

    instance-of v4, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_2

    .line 56
    :try_start_0
    new-instance v3, Lcl/santander/santanderCL/data/response/ItemSucursal;

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "info":Ljava/lang/Object;
    invoke-direct {v3, v2}, Lcl/santander/santanderCL/data/response/ItemSucursal;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    .line 57
    .local v3, "item":Lcl/santander/santanderCL/data/response/ItemSucursal;
    iget-object v4, p0, Lcl/santander/santanderCL/data/MatrizPOI;->pois:Ljava/util/ArrayList;

    new-instance v5, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-direct {v5, v3}, Lcl/santander/santanderCL/data/response/ItemPOI;-><init>(Lcl/santander/santanderCL/data/response/ItemSucursal;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v3    # "item":Lcl/santander/santanderCL/data/response/ItemSucursal;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
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
.method public add(Lcl/santander/santanderCL/data/response/ItemPOI;)V
    .locals 1
    .param p1, "value"    # Lcl/santander/santanderCL/data/response/ItemPOI;

    .prologue
    .line 77
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizPOI;->pois:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public get(I)Lcl/santander/santanderCL/data/response/ItemPOI;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizPOI;->pois:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemPOI;

    return-object v0
.end method

.method public getPOIS()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemPOI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizPOI;->pois:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizPOI;->pois:Ljava/util/ArrayList;

    .line 72
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizPOI;->pois:Ljava/util/ArrayList;

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
    .line 82
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizPOI;->pois:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
