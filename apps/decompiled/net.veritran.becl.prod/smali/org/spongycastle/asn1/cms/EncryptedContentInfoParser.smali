.class public Lorg/spongycastle/asn1/cms/EncryptedContentInfoParser;
.super Ljava/lang/Object;
.source "EncryptedContentInfoParser.java"


# instance fields
.field private _contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private _contentType:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field private _encryptedContent:Lorg/spongycastle/asn1/ASN1TaggedObjectParser;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1SequenceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfoParser;->_contentType:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 31
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/DEREncodable;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfoParser;->_contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 32
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfoParser;->_encryptedContent:Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    .line 33
    return-void
.end method


# virtual methods
.method public getContentEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfoParser;->_contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getContentType()Lorg/spongycastle/asn1/DERObjectIdentifier;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfoParser;->_contentType:Lorg/spongycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getEncryptedContent(I)Lorg/spongycastle/asn1/DEREncodable;
    .locals 2
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfoParser;->_encryptedContent:Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method
