.class public Lcl/santander/santanderCL/data/MatrizInicioTransf;
.super Ljava/lang/Object;
.source "MatrizInicioTransf.java"


# instance fields
.field inicio:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemInicioTransf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 5
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    if-eqz p1, :cond_2

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcl/santander/santanderCL/data/MatrizInicioTransf;->inicio:Ljava/util/ArrayList;

    .line 14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 32
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 16
    .restart local v0    # "i":I
    :cond_0
    invoke-virtual {p1, v0}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    .line 17
    .local v1, "info":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_1

    .line 19
    :try_start_0
    new-instance v2, Lcl/santander/santanderCL/data/response/ItemInicioTransf;

    .line 20
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .line 19
    .end local v1    # "info":Ljava/lang/Object;
    invoke-direct {v2, v1}, Lcl/santander/santanderCL/data/response/ItemInicioTransf;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    .line 21
    .local v2, "item":Lcl/santander/santanderCL/data/response/ItemInicioTransf;
    iget-object v3, p0, Lcl/santander/santanderCL/data/MatrizInicioTransf;->inicio:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .end local v2    # "item":Lcl/santander/santanderCL/data/response/ItemInicioTransf;
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    .end local v0    # "i":I
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcl/santander/santanderCL/data/MatrizInicioTransf;->inicio:Ljava/util/ArrayList;

    goto :goto_1

    .line 23
    .restart local v0    # "i":I
    :catch_0
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public add(Lcl/santander/santanderCL/data/response/ItemInicioTransf;)V
    .locals 1
    .param p1, "value"    # Lcl/santander/santanderCL/data/response/ItemInicioTransf;

    .prologue
    .line 41
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizInicioTransf;->inicio:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public get(I)Lcl/santander/santanderCL/data/response/ItemInicioTransf;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizInicioTransf;->inicio:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemInicioTransf;

    return-object v0
.end method

.method public getTransferencias()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemInicioTransf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizInicioTransf;->inicio:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizInicioTransf;->inicio:Ljava/util/ArrayList;

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
    .line 46
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizInicioTransf;->inicio:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
