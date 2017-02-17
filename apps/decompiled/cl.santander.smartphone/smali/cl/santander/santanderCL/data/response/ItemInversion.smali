.class public Lcl/santander/santanderCL/data/response/ItemInversion;
.super Ljava/lang/Object;
.source "ItemInversion.java"


# instance fields
.field ccc:Ljava/lang/String;

.field descripcion:Ljava/lang/String;

.field grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

.field moneda:Ljava/lang/String;

.field producto:Ljava/lang/String;

.field saldo:Ljava/lang/String;

.field saldoDisponible:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$GRUPO;)V
    .locals 0
    .param p1, "producto"    # Ljava/lang/String;
    .param p2, "ccc"    # Ljava/lang/String;
    .param p3, "saldo"    # Ljava/lang/String;
    .param p4, "saldoCentral"    # Ljava/lang/String;
    .param p5, "moneda"    # Ljava/lang/String;
    .param p6, "descripcion"    # Ljava/lang/String;
    .param p7, "grupo"    # Lcl/santander/santanderCL/utils/Constant$GRUPO;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcl/santander/santanderCL/data/response/ItemInversion;->ccc:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcl/santander/santanderCL/data/response/ItemInversion;->saldo:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcl/santander/santanderCL/data/response/ItemInversion;->saldoDisponible:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcl/santander/santanderCL/data/response/ItemInversion;->moneda:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcl/santander/santanderCL/data/response/ItemInversion;->descripcion:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemInversion;->producto:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcl/santander/santanderCL/data/response/ItemInversion;->grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    .line 28
    return-void
.end method


# virtual methods
.method public getCcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInversion;->ccc:Ljava/lang/String;

    return-object v0
.end method

.method public getDescripcion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInversion;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInversion;->grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    return-object v0
.end method

.method public getMoneda()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInversion;->moneda:Ljava/lang/String;

    return-object v0
.end method

.method public getProducto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInversion;->producto:Ljava/lang/String;

    return-object v0
.end method

.method public getSaldo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInversion;->saldo:Ljava/lang/String;

    return-object v0
.end method

.method public getSaldoCentral()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInversion;->saldoDisponible:Ljava/lang/String;

    return-object v0
.end method
