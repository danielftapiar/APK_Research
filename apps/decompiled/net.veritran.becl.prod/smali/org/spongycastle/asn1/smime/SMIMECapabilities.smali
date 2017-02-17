.class public Lorg/spongycastle/asn1/smime/SMIMECapabilities;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "SMIMECapabilities.java"


# static fields
.field public static final canNotDecryptAny:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final dES_CBC:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final dES_EDE3_CBC:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final preferSignedData:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final rC2_CBC:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field public static final sMIMECapabilitesVersions:Lorg/spongycastle/asn1/DERObjectIdentifier;


# instance fields
.field private capabilities:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->preferSignedData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->preferSignedData:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 23
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->canNotDecryptAny:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->canNotDecryptAny:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 24
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sMIMECapabilitiesVersions:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->sMIMECapabilitesVersions:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 29
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.3.2.7"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->dES_CBC:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 30
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->dES_EDE3_CBC:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 31
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->rC2_CBC:Lorg/spongycastle/asn1/DERObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->capabilities:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 67
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/smime/SMIMECapabilities;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 44
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;

    .line 56
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 49
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 51
    new-instance v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/smime/SMIMECapabilities;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 54
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/Attribute;

    if-eqz v0, :cond_3

    .line 56
    new-instance v1, Lorg/spongycastle/asn1/smime/SMIMECapabilities;

    check-cast p0, Lorg/spongycastle/asn1/cms/Attribute;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/Attribute;->getAttrValues()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/smime/SMIMECapabilities;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v1

    goto :goto_0

    .line 60
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCapabilities(Lorg/spongycastle/asn1/DERObjectIdentifier;)Ljava/util/Vector;
    .locals 4
    .param p1, "capability"    # Lorg/spongycastle/asn1/DERObjectIdentifier;

    .prologue
    .line 77
    iget-object v3, p0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->capabilities:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 78
    .local v1, "e":Ljava/util/Enumeration;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 80
    .local v2, "list":Ljava/util/Vector;
    if-nez p1, :cond_0

    .line 82
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/smime/SMIMECapability;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/smime/SMIMECapability;

    move-result-object v0

    .line 86
    .local v0, "cap":Lorg/spongycastle/asn1/smime/SMIMECapability;
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    .end local v0    # "cap":Lorg/spongycastle/asn1/smime/SMIMECapability;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/smime/SMIMECapability;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/smime/SMIMECapability;

    move-result-object v0

    .line 95
    .restart local v0    # "cap":Lorg/spongycastle/asn1/smime/SMIMECapability;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/smime/SMIMECapability;->getCapabilityID()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 102
    .end local v0    # "cap":Lorg/spongycastle/asn1/smime/SMIMECapability;
    :cond_1
    return-object v2
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->capabilities:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
