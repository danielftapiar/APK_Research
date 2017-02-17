.class public Lcl/santander/santanderCL/data/MatrizConsultaInversiones;
.super Ljava/lang/Object;
.source "MatrizConsultaInversiones.java"


# instance fields
.field private inversionesDepositos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizConsultaInversiones;->inversionesDepositos:Ljava/util/ArrayList;

    .line 15
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 5
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-eqz p1, :cond_0

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcl/santander/santanderCL/data/MatrizConsultaInversiones;->inversionesDepositos:Ljava/util/ArrayList;

    .line 20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 35
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 22
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p1, v0}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    .line 23
    .local v1, "info":Ljava/lang/Object;
    if-eqz v1, :cond_2

    instance-of v3, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_2

    .line 25
    :try_start_0
    new-instance v2, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "info":Ljava/lang/Object;
    invoke-direct {v2, v1}, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    .line 26
    .local v2, "item":Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;
    iget-object v3, p0, Lcl/santander/santanderCL/data/MatrizConsultaInversiones;->inversionesDepositos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .end local v2    # "item":Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public add(Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;)V
    .locals 1
    .param p1, "value"    # Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;

    .prologue
    .line 45
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizConsultaInversiones;->inversionesDepositos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public get(I)Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizConsultaInversiones;->inversionesDepositos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;

    return-object v0
.end method

.method public getDepositos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizConsultaInversiones;->inversionesDepositos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizConsultaInversiones;->inversionesDepositos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
