.class public Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;
.super Ljava/lang/Object;
.source "EscalaresConsultaSaldo.java"


# instance fields
.field msgid:Ljava/lang/String;

.field pectacli_r1:Ljava/lang/String;

.field pedisp_r1:Ljava/lang/String;

.field pedisp_s_r1:Ljava/lang/String;

.field pedivisa_r1:Ljava/lang/String;

.field pefechacont:Ljava/lang/String;

.field pefechaoper:Ljava/lang/String;

.field pefecultabon:Ljava/lang/String;

.field pefecultcar:Ljava/lang/String;

.field pefecultcart:Ljava/lang/String;

.field peindestado_r1:Ljava/lang/String;

.field pemontlca_r1:Ljava/lang/String;

.field pemontlca_s_r1:Ljava/lang/String;

.field pemontlcaesp_r1:Ljava/lang/String;

.field pemontlcaesp_s_r1:Ljava/lang/String;

.field penumchequ1_r1:Ljava/lang/String;

.field penumchequ2_r1:Ljava/lang/String;

.field penumchequ3_r1:Ljava/lang/String;

.field penumchequ4_r1:Ljava/lang/String;

.field penumchequ5_r1:Ljava/lang/String;

.field penumultcart_r1:Ljava/lang/String;

.field peproduc_r1:Ljava/lang/String;

.field peretdoco_r1:Ljava/lang/String;

.field peretdoco_s_r1:Ljava/lang/String;

.field peretmp_r1:Ljava/lang/String;

.field peretmp_s_r1:Ljava/lang/String;

.field peretop_r1:Ljava/lang/String;

.field peretop_s_r1:Ljava/lang/String;

.field pesaltot_r1:Ljava/lang/String;

.field pesaltot_s_r1:Ljava/lang/String;

.field pesodisp_r1:Ljava/lang/String;

.field pesodisp_s_r1:Ljava/lang/String;

.field pesubpro_r1:Ljava/lang/String;

.field peultabon_r1:Ljava/lang/String;

.field peultabon_s_r1:Ljava/lang/String;

.field peultcar_r1:Ljava/lang/String;

.field peultcar_s_r1:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 1
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-eqz p1, :cond_0

    .line 58
    const-string v0, "PECTACLI-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pectacli_r1:Ljava/lang/String;

    .line 59
    const-string v0, "PEDIVISA-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pedivisa_r1:Ljava/lang/String;

    .line 60
    const-string v0, "PEPRODUC-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peproduc_r1:Ljava/lang/String;

    .line 61
    const-string v0, "PESUBPRO-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pesubpro_r1:Ljava/lang/String;

    .line 62
    const-string v0, "PESALTOT-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pesaltot_r1:Ljava/lang/String;

    .line 63
    const-string v0, "PESALTOT-S-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pesaltot_s_r1:Ljava/lang/String;

    .line 64
    const-string v0, "PERETMP-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretmp_r1:Ljava/lang/String;

    .line 65
    const-string v0, "PERETMP-S-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretmp_s_r1:Ljava/lang/String;

    .line 66
    const-string v0, "PERETDOCO-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretdoco_r1:Ljava/lang/String;

    .line 67
    const-string v0, "PERETDOCO-S-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretdoco_s_r1:Ljava/lang/String;

    .line 68
    const-string v0, "PERETOP-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretop_r1:Ljava/lang/String;

    .line 69
    const-string v0, "PERETOP-S-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretop_s_r1:Ljava/lang/String;

    .line 70
    const-string v0, "PESODISP_R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pesodisp_r1:Ljava/lang/String;

    .line 71
    const-string v0, "PESODISP-S-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pesodisp_s_r1:Ljava/lang/String;

    .line 72
    const-string v0, "PEDISP-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pedisp_r1:Ljava/lang/String;

    .line 73
    const-string v0, "PEDISP-S-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pedisp_s_r1:Ljava/lang/String;

    .line 74
    const-string v0, "PEMONTLCA-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pemontlca_r1:Ljava/lang/String;

    .line 75
    const-string v0, "PEMONTLCA-S-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pemontlca_s_r1:Ljava/lang/String;

    .line 76
    const-string v0, "PEMONTLCAESP-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pemontlcaesp_r1:Ljava/lang/String;

    .line 77
    const-string v0, "PEMONTLCAESP-S-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pemontlcaesp_s_r1:Ljava/lang/String;

    .line 79
    const-string v0, "PENUMULTCART-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumultcart_r1:Ljava/lang/String;

    .line 80
    const-string v0, "PEFECULTCART"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pefecultcart:Ljava/lang/String;

    .line 81
    const-string v0, "PEFECULTABON"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pefecultabon:Ljava/lang/String;

    .line 82
    const-string v0, "PEFECULTCAR"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pefecultcar:Ljava/lang/String;

    .line 83
    const-string v0, "PEULTABON-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peultabon_r1:Ljava/lang/String;

    .line 84
    const-string v0, "PEULTABON-S-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peultabon_s_r1:Ljava/lang/String;

    .line 85
    const-string v0, "PEULTCAR-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peultcar_r1:Ljava/lang/String;

    .line 86
    const-string v0, "PEULTCAR-S-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peultcar_s_r1:Ljava/lang/String;

    .line 87
    const-string v0, "PEINDESTADO-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peindestado_r1:Ljava/lang/String;

    .line 88
    const-string v0, "PEFECHACONT"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pefechacont:Ljava/lang/String;

    .line 89
    const-string v0, "PEFECHAOPER"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pefechaoper:Ljava/lang/String;

    .line 90
    const-string v0, "PENUMCHEQU1-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumchequ1_r1:Ljava/lang/String;

    .line 91
    const-string v0, "PENUMCHEQU2-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumchequ2_r1:Ljava/lang/String;

    .line 92
    const-string v0, "PENUMCHEQU3-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumchequ3_r1:Ljava/lang/String;

    .line 93
    const-string v0, "PENUMCHEQU4-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumchequ4_r1:Ljava/lang/String;

    .line 94
    const-string v0, "PENUMCHEQU5-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumchequ5_r1:Ljava/lang/String;

    .line 95
    const-string v0, "MSGID-R1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->msgid:Ljava/lang/String;

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public getPectacli_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pectacli_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPedisp_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pedisp_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPedisp_s_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pedisp_s_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPedivisa_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pedivisa_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPefechacont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pefechacont:Ljava/lang/String;

    return-object v0
.end method

.method public getPefechaoper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pefechaoper:Ljava/lang/String;

    return-object v0
.end method

.method public getPefecultabon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pefecultabon:Ljava/lang/String;

    return-object v0
.end method

.method public getPefecultcar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pefecultcar:Ljava/lang/String;

    return-object v0
.end method

.method public getPefecultcart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pefecultcart:Ljava/lang/String;

    return-object v0
.end method

.method public getPeindestado_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peindestado_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPemontlca_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pemontlca_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPemontlca_s_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pemontlca_s_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPemontlcaesp_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pemontlcaesp_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPemontlcaesp_s_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pemontlcaesp_s_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPenumchequ1_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumchequ1_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPenumchequ2_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumchequ2_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPenumchequ3_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumchequ3_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPenumchequ4_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumchequ4_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPenumchequ5_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumchequ5_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPenumultcart_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumultcart_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPeproduc_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peproduc_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPeretdoco_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretdoco_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPeretdoco_s_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretdoco_s_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPeretmp_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretmp_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPeretmp_s_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretmp_s_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPeretop_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretop_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPeretop_s_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretop_s_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPesaltot_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pesaltot_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPesaltot_s_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pesaltot_s_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPesodisp_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pesodisp_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPesodisp_s_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pesodisp_s_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPesubpro_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pesubpro_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPeultabon_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peultabon_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPeultabon_s_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peultabon_s_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPeultcar_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peultcar_r1:Ljava/lang/String;

    return-object v0
.end method

.method public getPeultcar_s_r1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peultcar_s_r1:Ljava/lang/String;

    return-object v0
.end method

.method public setPectacli_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "pectacli_r1"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pectacli_r1:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setPedisp_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "pedisp_r1"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pedisp_r1:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setPedisp_s_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "pedisp_s_r1"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pedisp_s_r1:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setPedivisa_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "pedivisa_r1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pedivisa_r1:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setPefechacont(Ljava/lang/String;)V
    .locals 0
    .param p1, "pefechacont"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pefechacont:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setPefechaoper(Ljava/lang/String;)V
    .locals 0
    .param p1, "pefechaoper"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pefechaoper:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setPefecultabon(Ljava/lang/String;)V
    .locals 0
    .param p1, "pefecultabon"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pefecultabon:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setPefecultcar(Ljava/lang/String;)V
    .locals 0
    .param p1, "pefecultcar"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pefecultcar:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setPefecultcart(Ljava/lang/String;)V
    .locals 0
    .param p1, "pefecultcart"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pefecultcart:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setPeindestado_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "peindestado_r1"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peindestado_r1:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setPemontlca_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "pemontlca_r1"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pemontlca_r1:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setPemontlca_s_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "pemontlca_s_r1"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pemontlca_s_r1:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setPemontlcaesp_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "pemontlcaesp_r1"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pemontlcaesp_r1:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setPemontlcaesp_s_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "pemontlcaesp_s_r1"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pemontlcaesp_s_r1:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setPenumchequ1_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "penumchequ1_r1"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumchequ1_r1:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setPenumchequ2_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "penumchequ2_r1"    # Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumchequ2_r1:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setPenumchequ3_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "penumchequ3_r1"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumchequ3_r1:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setPenumchequ4_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "penumchequ4_r1"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumchequ4_r1:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setPenumchequ5_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "penumchequ5_r1"    # Ljava/lang/String;

    .prologue
    .line 389
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumchequ5_r1:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setPenumultcart_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "penumultcart_r1"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->penumultcart_r1:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setPeproduc_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "peproduc_r1"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peproduc_r1:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setPeretdoco_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "peretdoco_r1"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretdoco_r1:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setPeretdoco_s_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "peretdoco_s_r1"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretdoco_s_r1:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setPeretmp_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "peretmp_r1"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretmp_r1:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setPeretmp_s_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "peretmp_s_r1"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretmp_s_r1:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setPeretop_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "peretop_r1"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretop_r1:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setPeretop_s_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "peretop_s_r1"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peretop_s_r1:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setPesaltot_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "pesaltot_r1"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pesaltot_r1:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setPesaltot_s_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "pesaltot_s_r1"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pesaltot_s_r1:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setPesodisp_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "pesodisp_r1"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pesodisp_r1:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setPesodisp_s_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "pesodisp_s_r1"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pesodisp_s_r1:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setPesubpro_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "pesubpro_r1"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->pesubpro_r1:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setPeultabon_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "peultabon_r1"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peultabon_r1:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setPeultabon_s_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "peultabon_s_r1"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peultabon_s_r1:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setPeultcar_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "peultcar_r1"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peultcar_r1:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setPeultcar_s_r1(Ljava/lang/String;)V
    .locals 0
    .param p1, "peultcar_s_r1"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/EscalaresConsultaSaldo;->peultcar_s_r1:Ljava/lang/String;

    .line 326
    return-void
.end method
