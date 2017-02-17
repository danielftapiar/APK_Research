.class public Lcl/santander/santanderCL/response/PagoSuscripcionResponse;
.super Ljava/lang/Object;
.source "PagoSuscripcionResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field cttcgo:Ljava/lang/String;

.field datid01:Ljava/lang/String;

.field descripcion:Ljava/lang/String;

.field fecha:Ljava/lang/String;

.field hora:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field item:Lcl/santander/santanderCL/data/response/ItemPago;

.field mail:Ljava/lang/String;

.field monto:Ljava/lang/String;

.field nombreCliente:Ljava/lang/String;

.field nomcnv:Ljava/lang/String;

.field nrFolio:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "-"

    iput-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->nombreCliente:Ljava/lang/String;

    .line 15
    const-string v0, "-"

    iput-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->mail:Ljava/lang/String;

    .line 16
    const-string v0, "-"

    iput-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->fecha:Ljava/lang/String;

    .line 17
    const-string v0, "-"

    iput-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->hora:Ljava/lang/String;

    .line 18
    const-string v0, "-"

    iput-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->nrFolio:Ljava/lang/String;

    .line 19
    const-string v0, "-"

    iput-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->cttcgo:Ljava/lang/String;

    .line 20
    const-string v0, "-"

    iput-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->monto:Ljava/lang/String;

    .line 21
    const-string v0, "-"

    iput-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->nomcnv:Ljava/lang/String;

    .line 22
    const-string v0, "-"

    iput-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->descripcion:Ljava/lang/String;

    .line 23
    const-string v0, "-"

    iput-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->datid01:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getCodNor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->item:Lcl/santander/santanderCL/data/response/ItemPago;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->item:Lcl/santander/santanderCL/data/response/ItemPago;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemPago;->getCodNor()Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-"

    goto :goto_0
.end method

.method public getDatid01()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->datid01:Ljava/lang/String;

    return-object v0
.end method

.method public getDescripcion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public getFecha()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->fecha:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->fecha:Ljava/lang/String;

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-"

    goto :goto_0
.end method

.method public getHora()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->hora:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->hora:Ljava/lang/String;

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-"

    goto :goto_0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->mail:Ljava/lang/String;

    return-object v0
.end method

.method public getMonto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->monto:Ljava/lang/String;

    return-object v0
.end method

.method public getNombreCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->nombreCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getNomcnv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->nomcnv:Ljava/lang/String;

    return-object v0
.end method

.method public getNrFolio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->nrFolio:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 5
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 32
    if-eqz p1, :cond_2

    .line 33
    const-string v3, "OUTPUT"

    invoke-virtual {p1, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 36
    .local v2, "root":Ljava/lang/Object;
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 37
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v4, "INFO"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "aux":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 39
    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    :cond_0
    move-object v3, v2

    .line 43
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v4, "ESCALARES"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 46
    const-string v4, "FECHA-PAGO"

    move-object v3, v0

    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v4, v3}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->fecha:Ljava/lang/String;

    .line 47
    const-string v3, "HORA-PAGO"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-static {v3, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->hora:Ljava/lang/String;

    .line 51
    :cond_1
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "root":Ljava/lang/Object;
    const-string v3, "MATRICES"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 54
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    const-string v3, "MatrizPagoDeuda"

    invoke-virtual {v0, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 56
    new-instance v1, Lcl/santander/santanderCL/data/MatrizPago;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v1, v0}, Lcl/santander/santanderCL/data/MatrizPago;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    .line 57
    .local v1, "pagos":Lcl/santander/santanderCL/data/MatrizPago;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizPago;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 58
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcl/santander/santanderCL/data/MatrizPago;->get(I)Lcl/santander/santanderCL/data/response/ItemPago;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->item:Lcl/santander/santanderCL/data/response/ItemPago;

    .line 59
    iget-object v3, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->item:Lcl/santander/santanderCL/data/response/ItemPago;

    iget-object v4, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->fecha:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcl/santander/santanderCL/data/response/ItemPago;->setFecha(Ljava/lang/String;)V

    .line 60
    iget-object v3, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->item:Lcl/santander/santanderCL/data/response/ItemPago;

    iget-object v4, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->hora:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcl/santander/santanderCL/data/response/ItemPago;->setHora(Ljava/lang/String;)V

    .line 73
    .end local v1    # "pagos":Lcl/santander/santanderCL/data/MatrizPago;
    :cond_2
    return-void
.end method

.method public setCttcgo(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->cttcgo:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setDatid01(Ljava/lang/String;)V
    .locals 0
    .param p1, "datid01"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->datid01:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setDescripcion(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->descripcion:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setMail(Ljava/lang/String;)V
    .locals 0
    .param p1, "mail"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->mail:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setMonto(Ljava/lang/String;)V
    .locals 0
    .param p1, "monto"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->monto:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setNombreCliente(Ljava/lang/String;)V
    .locals 0
    .param p1, "nombreCliente"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->nombreCliente:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setNomcnv(Ljava/lang/String;)V
    .locals 0
    .param p1, "nomcnv"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->nomcnv:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setNrFolio(Ljava/lang/String;)V
    .locals 0
    .param p1, "nrFolio"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->nrFolio:Ljava/lang/String;

    .line 101
    return-void
.end method
