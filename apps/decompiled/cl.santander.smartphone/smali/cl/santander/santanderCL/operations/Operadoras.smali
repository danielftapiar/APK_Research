.class public Lcl/santander/santanderCL/operations/Operadoras;
.super Ljava/lang/Object;
.source "Operadoras.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field resp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemOperadora;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/Operadoras;->resp:Ljava/util/ArrayList;

    .line 16
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Operadoras;->resp:Ljava/util/ArrayList;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemOperadora;

    const-string v2, "Movistar"

    const-string v3, "RMOV1"

    const-string v4, "09749"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcl/santander/santanderCL/data/response/ItemOperadora;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Operadoras;->resp:Ljava/util/ArrayList;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemOperadora;

    const-string v2, "Entel PCS"

    const-string v3, "RENT1"

    const-string v4, "09786"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "1.000"

    aput-object v6, v5, v8

    const-string v6, "2.000"

    aput-object v6, v5, v9

    const-string v6, "3.500"

    aput-object v6, v5, v10

    const-string v6, "5.000"

    aput-object v6, v5, v11

    const-string v6, "10.000"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "15.000"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcl/santander/santanderCL/data/response/ItemOperadora;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Operadoras;->resp:Ljava/util/ArrayList;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemOperadora;

    const-string v2, "Claro"

    const-string v3, "RCLA1"

    const-string v4, "09787"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "1.000"

    aput-object v6, v5, v8

    const-string v6, "2.000"

    aput-object v6, v5, v9

    const-string v6, "3.600"

    aput-object v6, v5, v10

    const-string v6, "5.000"

    aput-object v6, v5, v11

    const-string v6, "10.000"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "15.000"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "25.000"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcl/santander/santanderCL/data/response/ItemOperadora;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Operadoras;->resp:Ljava/util/ArrayList;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemOperadora;

    const-string v2, "Movistar (Banda Ancha)"

    const-string v3, "RMOV1"

    const-string v4, "09749"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcl/santander/santanderCL/data/response/ItemOperadora;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Operadoras;->resp:Ljava/util/ArrayList;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemOperadora;

    const-string v2, "Entel (Banda Ancha)"

    const-string v3, "RENT1"

    const-string v4, "09786"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "2.000"

    aput-object v6, v5, v8

    const-string v6, "3.500"

    aput-object v6, v5, v9

    const-string v6, "5.000"

    aput-object v6, v5, v10

    const-string v6, "10.000"

    aput-object v6, v5, v11

    const-string v6, "15.000"

    aput-object v6, v5, v12

    invoke-direct {v1, v2, v3, v4, v5}, Lcl/santander/santanderCL/data/response/ItemOperadora;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Operadoras;->resp:Ljava/util/ArrayList;

    new-instance v1, Lcl/santander/santanderCL/data/response/ItemOperadora;

    const-string v2, "Claro (Banda Ancha)"

    const-string v3, "RCLA1"

    const-string v4, "09787"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "3.600"

    aput-object v6, v5, v8

    const-string v6, "5.000"

    aput-object v6, v5, v9

    const-string v6, "10.000"

    aput-object v6, v5, v10

    const-string v6, "15.000"

    aput-object v6, v5, v11

    const-string v6, "25.000"

    aput-object v6, v5, v12

    invoke-direct {v1, v2, v3, v4, v5}, Lcl/santander/santanderCL/data/response/ItemOperadora;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    return-void
.end method

.method public getResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemOperadora;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Operadoras;->resp:Ljava/util/ArrayList;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
