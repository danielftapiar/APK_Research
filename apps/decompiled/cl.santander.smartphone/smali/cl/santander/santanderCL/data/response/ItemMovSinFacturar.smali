.class public Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;
.super Ljava/lang/Object;
.source "ItemMovSinFacturar.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field ciudad:Ljava/lang/String;

.field comercio:Ljava/lang/String;

.field descripcion:Ljava/lang/String;

.field descripcionRubro:Ljava/lang/String;

.field dfecha:Ljava/util/Date;

.field fecha:Ljava/lang/String;

.field importe:Ljava/lang/String;

.field indicadorDebeHaber:Ljava/lang/String;

.field tipoBen:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 2
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-eqz p1, :cond_0

    .line 26
    const-string v0, "Descripcion"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->descripcion:Ljava/lang/String;

    .line 27
    const-string v0, "Comercio"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->comercio:Ljava/lang/String;

    .line 28
    const-string v0, "Importe"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->importe:Ljava/lang/String;

    .line 29
    const-string v0, "DescripcionRubro"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->descripcionRubro:Ljava/lang/String;

    .line 30
    const-string v0, "Ciudad"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->ciudad:Ljava/lang/String;

    .line 31
    const-string v0, "TipoBen"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->tipoBen:Ljava/lang/String;

    .line 32
    const-string v0, "Fecha"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->fecha:Ljava/lang/String;

    .line 35
    :try_start_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->fecha:Ljava/lang/String;

    const-string v1, "dd/MM/yyyy"

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->convertToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->dfecha:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    const-string v0, "IndicadorDebeHaber"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->indicadorDebeHaber:Ljava/lang/String;

    .line 43
    :cond_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getCiudad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->ciudad:Ljava/lang/String;

    return-object v0
.end method

.method public getComercio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->comercio:Ljava/lang/String;

    return-object v0
.end method

.method public getDescripcion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public getDescripcionRubro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->descripcionRubro:Ljava/lang/String;

    return-object v0
.end method

.method public getFecha()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->fecha:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaScreen()Ljava/util/Date;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->dfecha:Ljava/util/Date;

    return-object v0
.end method

.method public getImporte()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->importe:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicadorDebeHaber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->indicadorDebeHaber:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoBen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->tipoBen:Ljava/lang/String;

    return-object v0
.end method

.method public setCiudad(Ljava/lang/String;)V
    .locals 0
    .param p1, "ciudad"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->ciudad:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setComercio(Ljava/lang/String;)V
    .locals 0
    .param p1, "comercio"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->comercio:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setDescripcion(Ljava/lang/String;)V
    .locals 0
    .param p1, "descripcion"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->descripcion:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setDescripcionRubro(Ljava/lang/String;)V
    .locals 0
    .param p1, "descripcionRubro"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->descripcionRubro:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setFecha(Ljava/lang/String;)V
    .locals 0
    .param p1, "fecha"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->fecha:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setImporte(Ljava/lang/String;)V
    .locals 0
    .param p1, "importe"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->importe:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setIndicadorDebeHaber(Ljava/lang/String;)V
    .locals 0
    .param p1, "indicadorDebeHaber"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->indicadorDebeHaber:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setTipoBen(Ljava/lang/String;)V
    .locals 0
    .param p1, "tipoBen"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->tipoBen:Ljava/lang/String;

    .line 102
    return-void
.end method
