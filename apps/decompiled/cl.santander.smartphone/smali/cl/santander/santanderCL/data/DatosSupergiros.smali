.class public Lcl/santander/santanderCL/data/DatosSupergiros;
.super Ljava/lang/Object;
.source "DatosSupergiros.java"


# instance fields
.field CodBcoAbono:Ljava/lang/String;

.field CodProdAbono:Ljava/lang/String;

.field CodProdCargo:Ljava/lang/String;

.field CodSubProdAbono:Ljava/lang/String;

.field CodSubProdCargo:Ljava/lang/String;

.field CtaAbono:Ljava/lang/String;

.field CtaCargo:Ljava/lang/String;

.field GroupIDGCargo:Ljava/lang/String;

.field MailAbono:Ljava/lang/String;

.field Moneda:Ljava/lang/String;

.field Monto:Ljava/lang/String;

.field NomCltAbono:Ljava/lang/String;

.field NomCltCargo:Ljava/lang/String;

.field OrigenBanco:Ljava/lang/String;

.field RutAbono:Ljava/lang/String;

.field RutCargo:Ljava/lang/String;

.field rutCargoFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->RutCargo:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->NomCltCargo:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->GroupIDGCargo:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CtaCargo:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodProdCargo:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodSubProdCargo:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->RutAbono:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->NomCltAbono:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CtaAbono:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodProdAbono:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodSubProdAbono:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodBcoAbono:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->MailAbono:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->Monto:Ljava/lang/String;

    .line 22
    sget-object v0, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->Moneda:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->rutCargoFormat:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->OrigenBanco:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RutCargo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->RutCargo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NomCltCargo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->NomCltCargo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GroupIDGCargo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->GroupIDGCargo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CtaCargo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CtaCargo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CodProdCargo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodProdCargo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CodSubProdCargo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodSubProdCargo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RutAbono:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->RutAbono:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NomCltAbono:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->NomCltAbono:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CtaAbono:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CtaAbono:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CodProdAbono:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodProdAbono:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CodSubProdAbono:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodSubProdAbono:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CodBcoAbono:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodBcoAbono:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MailAbono:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->MailAbono:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Monto:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->Monto:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Moneda:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->Moneda:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rutCargoFormat:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->rutCargoFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OrigenBanco:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->OrigenBanco:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->RutCargo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->NomCltCargo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->GroupIDGCargo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CtaCargo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodProdCargo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodSubProdCargo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->RutAbono:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->NomCltAbono:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CtaAbono:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodProdAbono:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodSubProdAbono:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodBcoAbono:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->MailAbono:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->Monto:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->Moneda:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->rutCargoFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->OrigenBanco:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initSupergiros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rutCargo"    # Ljava/lang/String;
    .param p2, "NomCltCargo"    # Ljava/lang/String;
    .param p3, "groupIDGCargo"    # Ljava/lang/String;
    .param p4, "ctaCargo"    # Ljava/lang/String;
    .param p5, "codProdCargo"    # Ljava/lang/String;
    .param p6, "codSubProdCargo"    # Ljava/lang/String;
    .param p7, "rutAbono"    # Ljava/lang/String;
    .param p8, "mailAbono"    # Ljava/lang/String;
    .param p9, "monto"    # Ljava/lang/String;
    .param p10, "rutCargoFormat"    # Ljava/lang/String;
    .param p11, "origenBanco"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->RutCargo:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->NomCltCargo:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->GroupIDGCargo:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CtaCargo:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodProdCargo:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->CodSubProdCargo:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->RutAbono:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->MailAbono:Ljava/lang/String;

    .line 39
    iput-object p9, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->Monto:Ljava/lang/String;

    .line 40
    iput-object p10, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->rutCargoFormat:Ljava/lang/String;

    .line 41
    iput-object p11, p0, Lcl/santander/santanderCL/data/DatosSupergiros;->OrigenBanco:Ljava/lang/String;

    .line 42
    return-void
.end method
