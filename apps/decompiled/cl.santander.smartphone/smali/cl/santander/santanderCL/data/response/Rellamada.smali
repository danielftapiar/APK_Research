.class public Lcl/santander/santanderCL/data/response/Rellamada;
.super Ljava/lang/Object;
.source "Rellamada.java"


# instance fields
.field idRecall:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 2
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-eqz p1, :cond_0

    .line 18
    const-string v1, "RELLAMADA"

    invoke-virtual {p1, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    .local v0, "root":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 20
    const-string v1, "ID-RECALL"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "root":Ljava/lang/Object;
    invoke-static {v1, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/Rellamada;->idRecall:Ljava/lang/String;

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public getIdRecall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/Rellamada;->idRecall:Ljava/lang/String;

    return-object v0
.end method

.method public setIdRecall(Ljava/lang/String;)V
    .locals 0
    .param p1, "idRecall"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/Rellamada;->idRecall:Ljava/lang/String;

    .line 32
    return-void
.end method
