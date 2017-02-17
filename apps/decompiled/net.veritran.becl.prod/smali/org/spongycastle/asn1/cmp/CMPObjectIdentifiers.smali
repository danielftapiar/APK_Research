.class public interface abstract Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;
.super Ljava/lang/Object;
.source "CMPObjectIdentifiers.java"


# static fields
.field public static final ct_encKeyWithID:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final dhBasedMac:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final it_caKeyUpdateInfo:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final it_caProtEncCert:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final it_confirmWaitTime:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final it_currentCRL:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final it_encKeyPairTypes:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final it_implicitConfirm:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final it_keyPairParamRep:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final it_keyPairParamReq:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final it_origPKIMessage:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final it_preferredSymAlg:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final it_revPassphrase:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final it_signKeyPairTypes:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final it_suppLangTags:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final it_unsupportedOIDs:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final passwordBasedMac:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final regCtrl_altCertTemplate:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final regCtrl_authenticator:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final regCtrl_oldCertID:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final regCtrl_pkiArchiveOptions:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final regCtrl_pkiPublicationInfo:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final regCtrl_protocolEncrKey:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final regCtrl_regToken:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final regInfo_certReq:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final regInfo_utf8Pairs:Lorg/spongycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.113533.7.66.13"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->passwordBasedMac:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 13
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.113533.7.66.30"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->dhBasedMac:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 55
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.4.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->it_caProtEncCert:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.4.2"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->it_signKeyPairTypes:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 57
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.4.3"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->it_encKeyPairTypes:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 58
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.4.4"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->it_preferredSymAlg:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 59
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.4.5"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->it_caKeyUpdateInfo:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 60
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.4.6"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->it_currentCRL:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 61
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.4.7"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->it_unsupportedOIDs:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 62
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.4.10"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->it_keyPairParamReq:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 63
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.4.11"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->it_keyPairParamRep:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 64
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.4.12"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->it_revPassphrase:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 65
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.4.13"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->it_implicitConfirm:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 66
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.4.14"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->it_confirmWaitTime:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 67
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.4.15"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->it_origPKIMessage:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 68
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.4.16"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->it_suppLangTags:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 84
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.1.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_regToken:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 85
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.1.2"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_authenticator:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 86
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.1.3"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_pkiPublicationInfo:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 87
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.1.4"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_pkiArchiveOptions:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 88
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.1.5"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_oldCertID:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 89
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.1.6"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_protocolEncrKey:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 93
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.1.7"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_altCertTemplate:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 95
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.2.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->regInfo_utf8Pairs:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 96
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.2.2"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->regInfo_certReq:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 104
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.113549.1.9.16.1.21"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->ct_encKeyWithID:Lorg/spongycastle/asn1/DERObjectIdentifier;

    return-void
.end method
