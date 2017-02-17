.class public Lorg/spongycastle/asn1/smime/SMIMEEncryptionKeyPreferenceAttribute;
.super Lorg/spongycastle/asn1/cms/Attribute;
.source "SMIMEEncryptionKeyPreferenceAttribute.java"


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 5
    .param p1, "sKeyId"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 45
    sget-object v0, Lorg/spongycastle/asn1/smime/SMIMEAttributes;->encrypKeyPref:Lorg/spongycastle/asn1/DERObjectIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/DERSet;

    new-instance v2, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, p1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/DEREncodable;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/cms/Attribute;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;)V
    .locals 4
    .param p1, "issAndSer"    # Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;

    .prologue
    const/4 v3, 0x0

    .line 26
    sget-object v0, Lorg/spongycastle/asn1/smime/SMIMEAttributes;->encrypKeyPref:Lorg/spongycastle/asn1/DERObjectIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/DERSet;

    new-instance v2, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-direct {v2, v3, v3, p1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/DEREncodable;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/cms/Attribute;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;)V
    .locals 5
    .param p1, "rKeyId"    # Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;

    .prologue
    .line 34
    sget-object v0, Lorg/spongycastle/asn1/smime/SMIMEAttributes;->encrypKeyPref:Lorg/spongycastle/asn1/DERObjectIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/DERSet;

    new-instance v2, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, p1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/DEREncodable;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/cms/Attribute;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 36
    return-void
.end method