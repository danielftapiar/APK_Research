.class public Lcl/santander/santanderCL/data/response/ItemPago;
.super Ljava/lang/Object;
.source "ItemPago.java"


# instance fields
.field codNor:Ljava/lang/String;

.field fecha:Ljava/lang/String;

.field hora:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 1
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-eqz p1, :cond_0

    .line 16
    const-string v0, "CODNOR"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPago;->codNor:Ljava/lang/String;

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public getCodNor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPago;->codNor:Ljava/lang/String;

    return-object v0
.end method

.method public getFecha()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPago;->fecha:Ljava/lang/String;

    return-object v0
.end method

.method public getHora()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPago;->hora:Ljava/lang/String;

    return-object v0
.end method

.method public setFecha(Ljava/lang/String;)V
    .locals 0
    .param p1, "fecha"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemPago;->fecha:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setHora(Ljava/lang/String;)V
    .locals 0
    .param p1, "hora"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemPago;->hora:Ljava/lang/String;

    .line 48
    return-void
.end method
