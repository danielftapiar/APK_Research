.class public Lorg/spongycastle/asn1/x509/KeyPurposeId;
.super Lorg/spongycastle/asn1/DERObjectIdentifier;
.source "KeyPurposeId.java"


# static fields
.field public static final anyExtendedKeyUsage:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field private static final id_kp:Ljava/lang/String; = "1.3.6.1.5.5.7.3"

.field public static final id_kp_OCSPSigning:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_capwapAC:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_capwapWTP:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_clientAuth:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_codeSigning:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_dvcs:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_eapOverLAN:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_eapOverPPP:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_emailProtection:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecEndSystem:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecIKE:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecTunnel:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecUser:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_sbgpCertAAServerAuth:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_scvpClient:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_scvpServer:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_scvp_responder:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_serverAuth:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_smartcardlogon:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_timeStamping:Lorg/spongycastle/asn1/x509/KeyPurposeId;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Extensions;->ExtendedKeyUsage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->anyExtendedKeyUsage:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 38
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_serverAuth:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 42
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.2"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_clientAuth:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 46
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.3"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_codeSigning:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 50
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.4"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_emailProtection:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 54
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.5"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecEndSystem:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 58
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.6"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecTunnel:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 62
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.7"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecUser:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 66
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.8"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_timeStamping:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 70
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.9"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_OCSPSigning:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 74
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.10"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_dvcs:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 78
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.11"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_sbgpCertAAServerAuth:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 82
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.12"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_scvp_responder:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 86
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.13"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverPPP:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 90
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.14"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverLAN:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 94
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.15"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_scvpServer:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 98
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.16"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_scvpClient:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 102
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.17"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecIKE:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 106
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.18"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_capwapAC:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 110
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.19"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_capwapWTP:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 118
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.4.1.311.20.2.2"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->id_kp_smartcardlogon:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method
