.class public Lcl/santander/santanderCL/data/response/ItemChequeAsociado;
.super Ljava/lang/Object;
.source "ItemChequeAsociado.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field banco:Ljava/lang/String;

.field btieneImagen:Z

.field cuenta:Ljava/lang/String;

.field fecha:Ljava/lang/String;

.field montoDocumento:Ljava/lang/String;

.field serieDocumento:Ljava/lang/String;

.field tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;

.field tipoDocto:Ljava/lang/String;

.field tipoDoctoScreen:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->fecha:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->montoDocumento:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->serieDocumento:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->cuenta:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->banco:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipoDocto:Ljava/lang/String;

    .line 30
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;->BOLETA:Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipoDoctoScreen:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 6
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-eqz p1, :cond_1

    .line 58
    const-string v3, "FECHAMOVTO"

    invoke-static {v3, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->fecha:Ljava/lang/String;

    .line 60
    :try_start_0
    iget-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->fecha:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->fecha:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    iget-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->fecha:Ljava/lang/String;

    const-string v4, "yyyy-MM-dd"

    const-string v5, "dd/MM/yyyy"

    invoke-static {v3, v4, v5}, Lcl/santander/santanderCL/utils/Utils;->parseFecha(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->fecha:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    const-string v3, "MONTODOCUM"

    invoke-static {v3, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->montoDocumento:Ljava/lang/String;

    .line 69
    const-string v3, "SERIEDOCUM"

    invoke-static {v3, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->serieDocumento:Ljava/lang/String;

    .line 70
    const-string v3, "CUENTACORRIENTE"

    invoke-static {v3, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->cuenta:Ljava/lang/String;

    .line 71
    const-string v3, "DESCRIPCIONBANCO"

    invoke-static {v3, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->banco:Ljava/lang/String;

    .line 72
    const-string v3, "TIPODOCTO"

    invoke-static {v3, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipoDocto:Ljava/lang/String;

    .line 73
    sget-object v3, Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;->SIN_TIPO:Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;

    iput-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;

    .line 74
    iget-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipoDocto:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 76
    :try_start_1
    iget-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipoDocto:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 79
    .local v2, "iTipo":I
    sparse-switch v2, :sswitch_data_0

    .line 111
    .end local v2    # "iTipo":I
    :cond_1
    :goto_1
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "-"

    iput-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->fecha:Ljava/lang/String;

    goto :goto_0

    .line 86
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v2    # "iTipo":I
    :sswitch_0
    :try_start_2
    const-string v3, "Cheque"

    iput-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipoDoctoScreen:Ljava/lang/String;

    .line 87
    sget-object v3, Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;->CHEQUE:Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;

    iput-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;

    .line 88
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->btieneImagen:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 102
    .end local v2    # "iTipo":I
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;->SIN_TIPO:Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;

    iput-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;

    goto :goto_1

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "iTipo":I
    :sswitch_1
    :try_start_3
    const-string v3, "Boleta Dep\u00f3sito"

    iput-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipoDoctoScreen:Ljava/lang/String;

    .line 96
    sget-object v3, Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;->BOLETA:Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;

    iput-object v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;

    .line 97
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->btieneImagen:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x6 -> :sswitch_1
        0x9 -> :sswitch_1
        0xb -> :sswitch_0
        0x1e -> :sswitch_1
        0x1f -> :sswitch_1
        0x21 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public getBanco()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->banco:Ljava/lang/String;

    return-object v0
.end method

.method public getCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->cuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getCuentaScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->cuenta:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->parseNumeroCuenta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFecha()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->fecha:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoDocumento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->montoDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoDocumentoScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->montoDocumento:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerieDocumento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->serieDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public getTipo()Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;

    return-object v0
.end method

.method public getTipoDocto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipoDocto:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoDoctoScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipoDoctoScreen:Ljava/lang/String;

    return-object v0
.end method

.method public setBanco(Ljava/lang/String;)V
    .locals 0
    .param p1, "banco"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->banco:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setCuenta(Ljava/lang/String;)V
    .locals 0
    .param p1, "cuenta"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->cuenta:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setFecha(Ljava/lang/String;)V
    .locals 0
    .param p1, "fecha"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->fecha:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setMontoDocumento(Ljava/lang/String;)V
    .locals 0
    .param p1, "montoDocumento"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->montoDocumento:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setSerieDocumento(Ljava/lang/String;)V
    .locals 0
    .param p1, "serieDocumento"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->serieDocumento:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTipo(Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;)V
    .locals 0
    .param p1, "tipo"    # Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;

    .prologue
    .line 52
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;

    .line 53
    return-void
.end method

.method public setTipoDocto(Ljava/lang/String;)V
    .locals 0
    .param p1, "tipoDocto"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipoDocto:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setTipoDoctoScreen(Ljava/lang/String;)V
    .locals 0
    .param p1, "descripcion"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->tipoDoctoScreen:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public tieneImagen()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->btieneImagen:Z

    return v0
.end method
