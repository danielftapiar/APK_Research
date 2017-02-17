.class public Lcl/santander/santanderCL/data/MatrizInversiones;
.super Ljava/lang/Object;
.source "MatrizInversiones.java"


# instance fields
.field grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

.field inversiones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemInversion;",
            ">;"
        }
    .end annotation
.end field

.field totalInversiones:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizInversiones;->inversiones:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacidad"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizInversiones;->inversiones:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public add(Lcl/santander/santanderCL/data/response/ItemInversion;)V
    .locals 1
    .param p1, "value"    # Lcl/santander/santanderCL/data/response/ItemInversion;

    .prologue
    .line 32
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizInversiones;->inversiones:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public get(I)Lcl/santander/santanderCL/data/response/ItemInversion;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizInversiones;->inversiones:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemInversion;

    return-object v0
.end method

.method public getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizInversiones;->grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    return-object v0
.end method

.method public getInversiones()Ljava/util/ArrayList;
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
    .line 27
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizInversiones;->inversiones:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalInversiones()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, ""

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizInversiones;->inversiones:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGrupo(Lcl/santander/santanderCL/utils/Constant$GRUPO;)V
    .locals 0
    .param p1, "grupo"    # Lcl/santander/santanderCL/utils/Constant$GRUPO;

    .prologue
    .line 59
    iput-object p1, p0, Lcl/santander/santanderCL/data/MatrizInversiones;->grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    .line 60
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizInversiones;->inversiones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
