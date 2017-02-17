.class public interface abstract Lorg/spongycastle/asn1/esf/CommitmentTypeIdentifier;
.super Ljava/lang/Object;
.source "CommitmentTypeIdentifier.java"


# static fields
.field public static final proofOfApproval:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final proofOfCreation:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final proofOfDelivery:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final proofOfOrigin:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final proofOfReceipt:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final proofOfSender:Lorg/spongycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfOrigin:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfOrigin:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 9
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfReceipt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfReceipt:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 10
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfDelivery:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfDelivery:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 11
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfSender:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfSender:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 12
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfApproval:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfApproval:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 13
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfCreation:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfCreation:Lorg/spongycastle/asn1/DERObjectIdentifier;

    return-void
.end method
