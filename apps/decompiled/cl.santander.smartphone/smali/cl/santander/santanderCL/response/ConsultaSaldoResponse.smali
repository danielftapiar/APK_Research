.class public Lcl/santander/santanderCL/response/ConsultaSaldoResponse;
.super Ljava/lang/Object;
.source "ConsultaSaldoResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/data/response/ResponseBase;


# instance fields
.field private escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

.field private info:Lcl/santander/santanderCL/data/response/Info;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDivisa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->getPedivisa_r1()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getMondoDisponible()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->getPedisp_r1()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMondoDisponibleScreen()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 71
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->getPesaltot_s_r1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->getPedisp_s_r1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->getPedisp_r1()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->getPedivisa_r1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->getPedisp_r1()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->getPedivisa_r1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumeroCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->getPectacli_r1()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumeroCuentaScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->getPectacli_r1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->parseNumeroCuenta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSaldoTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->getPesaltot_r1()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSaldoTotalScreen()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 91
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->getPesaltot_s_r1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->getPesaltot_r1()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->getPedivisa_r1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->getPesaltot_r1()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->getPedivisa_r1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 4
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 21
    if-eqz p1, :cond_1

    .line 22
    const-string v2, "OUTPUT"

    invoke-virtual {p1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    .local v1, "root":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 26
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    const-string v3, "INFO"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, "aux":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 28
    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 33
    :cond_0
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "root":Ljava/lang/Object;
    const-string v2, "ESCALARES"

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 36
    new-instance v2, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;

    .line 41
    :cond_1
    return-void
.end method

.method public setInfo(Lcl/santander/santanderCL/data/response/Info;)V
    .locals 0
    .param p1, "info"    # Lcl/santander/santanderCL/data/response/Info;

    .prologue
    .line 49
    iput-object p1, p0, Lcl/santander/santanderCL/response/ConsultaSaldoResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 50
    return-void
.end method
