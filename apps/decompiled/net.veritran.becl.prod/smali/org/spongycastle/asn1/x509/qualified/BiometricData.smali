.class public Lorg/spongycastle/asn1/x509/qualified/BiometricData;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "BiometricData.java"


# instance fields
.field biometricDataHash:Lorg/spongycastle/asn1/ASN1OctetString;

.field hashAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field sourceDataUri:Lorg/spongycastle/asn1/DERIA5String;

.field typeOfBiometricData:Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 52
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 55
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->typeOfBiometricData:Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;

    .line 57
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->hashAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 59
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->biometricDataHash:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 61
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->sourceDataUri:Lorg/spongycastle/asn1/DERIA5String;

    .line 65
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 1
    .param p1, "typeOfBiometricData"    # Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;
    .param p2, "hashAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "biometricDataHash"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->typeOfBiometricData:Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;

    .line 85
    iput-object p2, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->hashAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 86
    iput-object p3, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->biometricDataHash:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->sourceDataUri:Lorg/spongycastle/asn1/DERIA5String;

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/DERIA5String;)V
    .locals 0
    .param p1, "typeOfBiometricData"    # Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;
    .param p2, "hashAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "biometricDataHash"    # Lorg/spongycastle/asn1/ASN1OctetString;
    .param p4, "sourceDataUri"    # Lorg/spongycastle/asn1/DERIA5String;

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->typeOfBiometricData:Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;

    .line 74
    iput-object p2, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->hashAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 75
    iput-object p3, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->biometricDataHash:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 76
    iput-object p4, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->sourceDataUri:Lorg/spongycastle/asn1/DERIA5String;

    .line 77
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/qualified/BiometricData;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 35
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;

    if-eqz v0, :cond_1

    .line 37
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;

    .line 42
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 40
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 42
    new-instance v0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/qualified/BiometricData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBiometricDataHash()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->biometricDataHash:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->hashAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSourceDataUri()Lorg/spongycastle/asn1/DERIA5String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->sourceDataUri:Lorg/spongycastle/asn1/DERIA5String;

    return-object v0
.end method

.method public getTypeOfBiometricData()Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->typeOfBiometricData:Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 113
    .local v0, "seq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->typeOfBiometricData:Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 114
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->hashAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 115
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->biometricDataHash:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 117
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->sourceDataUri:Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->sourceDataUri:Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 122
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
