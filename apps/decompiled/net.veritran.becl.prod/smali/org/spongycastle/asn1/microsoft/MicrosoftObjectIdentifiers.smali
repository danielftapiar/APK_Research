.class public interface abstract Lorg/spongycastle/asn1/microsoft/MicrosoftObjectIdentifiers;
.super Ljava/lang/Object;
.source "MicrosoftObjectIdentifiers.java"


# static fields
.field public static final microsoft:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final microsoftAppPolicies:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final microsoftCaVersion:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final microsoftCertTemplateV1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final microsoftCertTemplateV2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final microsoftPrevCaCertHash:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.311"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoft:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    sget-object v0, Lorg/spongycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoft:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "20.2"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoftCertTemplateV1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 13
    sget-object v0, Lorg/spongycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoft:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "21.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoftCaVersion:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 14
    sget-object v0, Lorg/spongycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoft:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "21.2"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoftPrevCaCertHash:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 15
    sget-object v0, Lorg/spongycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoft:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "21.7"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoftCertTemplateV2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 16
    sget-object v0, Lorg/spongycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoft:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "21.10"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoftAppPolicies:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
