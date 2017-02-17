.class public Lcl/santander/santanderCL/data/MatrizTipoCuenta;
.super Ljava/lang/Object;
.source "MatrizTipoCuenta.java"


# instance fields
.field tipoCuenta:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemTipoCuenta;",
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

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizTipoCuenta;->tipoCuenta:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public add(Lcl/santander/santanderCL/data/response/ItemTipoCuenta;)V
    .locals 1
    .param p1, "value"    # Lcl/santander/santanderCL/data/response/ItemTipoCuenta;

    .prologue
    .line 23
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizTipoCuenta;->tipoCuenta:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public get(I)Lcl/santander/santanderCL/data/response/ItemTipoCuenta;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizTipoCuenta;->tipoCuenta:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemTipoCuenta;

    return-object v0
.end method

.method public getTipoCuentas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemTipoCuenta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizTipoCuenta;->tipoCuenta:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizTipoCuenta;->tipoCuenta:Ljava/util/ArrayList;

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
    .line 28
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizTipoCuenta;->tipoCuenta:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
