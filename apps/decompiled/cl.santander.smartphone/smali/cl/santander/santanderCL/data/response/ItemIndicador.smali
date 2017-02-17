.class public Lcl/santander/santanderCL/data/response/ItemIndicador;
.super Ljava/lang/Object;
.source "ItemIndicador.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field fecha:Ljava/util/Date;

.field indicador:Ljava/lang/String;

.field valor:Ljava/lang/String;

.field variacion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fecha"    # Ljava/util/Date;
    .param p2, "indicador"    # Ljava/lang/String;
    .param p3, "valor"    # Ljava/lang/String;
    .param p4, "variacion"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->fecha:Ljava/util/Date;

    .line 55
    iput-object p2, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->indicador:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->valor:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->variacion:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$TIPO_INDICADOR_ECONOMICO;Ljava/util/Date;)V
    .locals 4
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "tipo"    # Lcl/santander/santanderCL/utils/Constant$TIPO_INDICADOR_ECONOMICO;
    .param p3, "fecha"    # Ljava/util/Date;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-eqz p1, :cond_0

    .line 25
    iput-object p3, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->fecha:Ljava/util/Date;

    .line 26
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_INDICADOR_ECONOMICO;->ALZA:Lcl/santander/santanderCL/utils/Constant$TIPO_INDICADOR_ECONOMICO;

    if-ne p2, v1, :cond_1

    .line 27
    const-string v1, "NEMOALZA"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->indicador:Ljava/lang/String;

    .line 29
    :try_start_0
    const-string v1, "PRECIOALZA"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->quitarFormato(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->valor:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    const-string v1, "VARALZA"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->variacion:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->variacion:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->variacion:Ljava/lang/String;

    const-string v2, "."

    const-string v3, ","

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->variacion:Ljava/lang/String;

    .line 50
    :cond_0
    :goto_1
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Indicador PRECIOBAJA"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string v1, "NEMOBAJA"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->indicador:Ljava/lang/String;

    .line 39
    :try_start_1
    const-string v1, "PRECIOBAJA"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->quitarFormato(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->valor:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    :goto_2
    const-string v1, "VARBAJA"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->variacion:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->variacion:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->variacion:Ljava/lang/String;

    const-string v2, "."

    const-string v3, ","

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->variacion:Ljava/lang/String;

    goto :goto_1

    .line 40
    :catch_1
    move-exception v0

    .line 41
    .restart local v0    # "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Indicador PRECIOBAJA"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public getFecha()Ljava/util/Date;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->fecha:Ljava/util/Date;

    return-object v0
.end method

.method public getIndicador()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->indicador:Ljava/lang/String;

    return-object v0
.end method

.method public getValor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->valor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->valor:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->valor:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->valor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->valor:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVariacion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->variacion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->variacion:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->variacion:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemIndicador;->variacion:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-"

    goto :goto_0
.end method
