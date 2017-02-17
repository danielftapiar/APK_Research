.class public Lcl/santander/santanderCL/data/response/ItemOperadora;
.super Ljava/lang/Object;
.source "ItemOperadora.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field idConvenio:Ljava/lang/String;

.field monto:[Ljava/lang/String;

.field nombre:Ljava/lang/String;

.field nroConvenio:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "nombre"    # Ljava/lang/String;
    .param p2, "idConvenio"    # Ljava/lang/String;
    .param p3, "nroConvenio"    # Ljava/lang/String;
    .param p4, "montos"    # [Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemOperadora;->nombre:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcl/santander/santanderCL/data/response/ItemOperadora;->idConvenio:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcl/santander/santanderCL/data/response/ItemOperadora;->nroConvenio:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcl/santander/santanderCL/data/response/ItemOperadora;->monto:[Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getIdConvenio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemOperadora;->idConvenio:Ljava/lang/String;

    return-object v0
.end method

.method public getMontos()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemOperadora;->monto:[Ljava/lang/String;

    return-object v0
.end method

.method public getNombre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemOperadora;->nombre:Ljava/lang/String;

    return-object v0
.end method

.method public getNroConvenio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemOperadora;->nroConvenio:Ljava/lang/String;

    return-object v0
.end method

.method public setMonto([Ljava/lang/String;)V
    .locals 0
    .param p1, "monto"    # [Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemOperadora;->monto:[Ljava/lang/String;

    .line 31
    return-void
.end method
