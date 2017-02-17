.class public Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;
.super Ljava/lang/Object;
.source "Transf_Terceros_BancosTipoCuentaResponse.java"


# instance fields
.field bancos:Lcl/santander/santanderCL/data/MatrizBancos;

.field tipoCuenta:Lcl/santander/santanderCL/data/MatrizTipoCuenta;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcl/santander/santanderCL/data/MatrizBancos;

    invoke-direct {v0}, Lcl/santander/santanderCL/data/MatrizBancos;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    .line 17
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0001"

    const-string v3, "Banco de Chile / Edwards-Citi"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 18
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0009"

    const-string v3, "Banco Internacional"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 19
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0012"

    const-string v3, "Banco Estado"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 20
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0014"

    const-string v3, "Scotiabank"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 21
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0016"

    const-string v3, "Banco Cr\u00e9dito e Inversiones"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 22
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0027"

    const-string v3, "Corpbanca"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 23
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0028"

    const-string v3, "Banco BICE"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 24
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0031"

    const-string v3, "HSBC Bank"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 25
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0035"

    const-string v3, "Banco Santander"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 26
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0037"

    const-string v3, "Banco Santander Banefe"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 27
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0039"

    const-string v3, "Banco Ita\u00fa"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 28
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0049"

    const-string v3, "Banco Security"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 29
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0051"

    const-string v3, "Banco Falabella"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 30
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0053"

    const-string v3, "Banco Ripley"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 31
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0054"

    const-string v3, "Rabobank"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 32
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0055"

    const-string v3, "Banco Consorcio"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 33
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0057"

    const-string v3, "Banco Paris"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 34
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0504"

    const-string v3, "Banco BBVA"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 35
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemBanco;

    const-string v2, "0507"

    const-string v3, "Banco del Desarrollo"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemBanco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizBancos;->add(Lcl/santander/santanderCL/data/response/ItemBanco;)V

    .line 38
    new-instance v0, Lcl/santander/santanderCL/data/MatrizTipoCuenta;

    invoke-direct {v0}, Lcl/santander/santanderCL/data/MatrizTipoCuenta;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->tipoCuenta:Lcl/santander/santanderCL/data/MatrizTipoCuenta;

    .line 39
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->tipoCuenta:Lcl/santander/santanderCL/data/MatrizTipoCuenta;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemTipoCuenta;

    const-string v2, "1"

    const-string v3, "Cuenta Corriente"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemTipoCuenta;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizTipoCuenta;->add(Lcl/santander/santanderCL/data/response/ItemTipoCuenta;)V

    .line 40
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->tipoCuenta:Lcl/santander/santanderCL/data/MatrizTipoCuenta;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemTipoCuenta;

    const-string v2, "2"

    const-string v3, "Cuenta Vista"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemTipoCuenta;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizTipoCuenta;->add(Lcl/santander/santanderCL/data/response/ItemTipoCuenta;)V

    .line 41
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->tipoCuenta:Lcl/santander/santanderCL/data/MatrizTipoCuenta;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemTipoCuenta;

    const-string v2, "3"

    const-string v3, "Chequera Electr\u00f3nica"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemTipoCuenta;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizTipoCuenta;->add(Lcl/santander/santanderCL/data/response/ItemTipoCuenta;)V

    .line 42
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->tipoCuenta:Lcl/santander/santanderCL/data/MatrizTipoCuenta;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemTipoCuenta;

    const-string v2, "4"

    const-string v3, "Cuenta de Ahorro"

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/ItemTipoCuenta;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizTipoCuenta;->add(Lcl/santander/santanderCL/data/response/ItemTipoCuenta;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getBancos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemBanco;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->bancos:Lcl/santander/santanderCL/data/MatrizBancos;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizBancos;->getBancos()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTipoCuenta()Ljava/util/ArrayList;
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
    .line 50
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->tipoCuenta:Lcl/santander/santanderCL/data/MatrizTipoCuenta;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizTipoCuenta;->getTipoCuentas()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
