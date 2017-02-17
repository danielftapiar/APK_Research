.class public Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
.super Ljava/lang/Object;
.source "ItemDetalleSuscripcion.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field codStatus:Ljava/lang/String;

.field coordenada1:Ljava/lang/String;

.field coordenada2:Ljava/lang/String;

.field coordenada3:Ljava/lang/String;

.field descStatus:Ljava/lang/String;

.field descripcion:Ljava/lang/String;

.field empresa:Ljava/lang/String;

.field fechaPago:Ljava/lang/String;

.field fechaVencimiento:Ljava/lang/String;

.field idCliente:Ljava/lang/String;

.field idDocumento:Ljava/lang/String;

.field monto:Ljava/lang/String;

.field nroFolio:Ljava/lang/String;

.field numCVN:Ljava/lang/String;

.field segmento:Ljava/lang/String;

.field tipoDocumento:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 2
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    .line 44
    const-string v0, "IDCLIENTE"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->idCliente:Ljava/lang/String;

    .line 45
    const-string v0, "IDDOCUMENTO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->idDocumento:Ljava/lang/String;

    .line 46
    const-string v0, "MONTO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->monto:Ljava/lang/String;

    .line 47
    const-string v0, "FECHAVENCIMIENTO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->fechaVencimiento:Ljava/lang/String;

    .line 48
    const-string v0, "NROFOLIO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->nroFolio:Ljava/lang/String;

    .line 49
    const-string v0, "CODSTATUS"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->codStatus:Ljava/lang/String;

    .line 50
    const-string v0, "DESCSTATUS"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->descStatus:Ljava/lang/String;

    .line 51
    const-string v0, "TIPODOCUMENTO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->tipoDocumento:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "dd/MM/yyyy"

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->parseFecha(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->fechaPago:Ljava/lang/String;

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public estaPagada()Z
    .locals 3

    .prologue
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==============> codStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->codStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "resp":Z
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->codStatus:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->codStatus:Ljava/lang/String;

    const-string v2, "PAGADO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const/4 v0, 0x1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->codStatus:Ljava/lang/String;

    const-string v2, "C2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCodStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->codStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->coordenada1:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->coordenada2:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->coordenada3:Ljava/lang/String;

    return-object v0
.end method

.method public getDescStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->descStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getDescripcion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public getEmpresa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->empresa:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaPago()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->fechaPago:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaVencimiento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->fechaVencimiento:Ljava/lang/String;

    return-object v0
.end method

.method public getIdCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->idCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getIdDocumento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->idDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public getMensaje()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->codStatus:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->codStatus:Ljava/lang/String;

    const-string v1, "PAGADO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "Estimado Cliente, la deuda que est\u00e1 consultando se encuentra pagada."

    .line 130
    :goto_0
    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->codStatus:Ljava/lang/String;

    const-string v1, "C2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const-string v0, "Estimado Cliente, no existe deuda asociada a este n\u00famero de servicio."

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->codStatus:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    const-string v0, "Estimado Cliente, en estos momentos no es posible atenderlo. Por favor, vuelva a intentarlo m\u00e1s tarde."

    goto :goto_0

    .line 130
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getMonto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->monto:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->monto:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNroFolio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->nroFolio:Ljava/lang/String;

    return-object v0
.end method

.method public getNumCVN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->numCVN:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->segmento:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoDocumento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->tipoDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public setCoordenada1(Ljava/lang/String;)V
    .locals 0
    .param p1, "coordenada1"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->coordenada1:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setCoordenada2(Ljava/lang/String;)V
    .locals 0
    .param p1, "coordenada2"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->coordenada2:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setCoordenada3(Ljava/lang/String;)V
    .locals 0
    .param p1, "coordenada3"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->coordenada3:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setDescripcion(Ljava/lang/String;)V
    .locals 0
    .param p1, "descripcion"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->descripcion:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setEmpresa(Ljava/lang/String;)V
    .locals 0
    .param p1, "empresa"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->empresa:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setNumCVN(Ljava/lang/String;)V
    .locals 0
    .param p1, "numCVN"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->numCVN:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setSegmento(Ljava/lang/String;)V
    .locals 0
    .param p1, "segmento"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->segmento:Ljava/lang/String;

    .line 99
    return-void
.end method
