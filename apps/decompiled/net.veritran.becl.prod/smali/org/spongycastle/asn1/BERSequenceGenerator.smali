.class public Lorg/spongycastle/asn1/BERSequenceGenerator;
.super Lorg/spongycastle/asn1/BERGenerator;
.source "BERSequenceGenerator.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 15
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/BERSequenceGenerator;->writeBERHeader(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "tagNo"    # I
    .param p3, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    .line 26
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/BERSequenceGenerator;->writeBERHeader(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public addObject(Lorg/spongycastle/asn1/DEREncodable;)V
    .locals 3
    .param p1, "object"    # Lorg/spongycastle/asn1/DEREncodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-interface {p1}, Lorg/spongycastle/asn1/DEREncodable;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/asn1/BEROutputStream;

    iget-object v2, p0, Lorg/spongycastle/asn1/BERSequenceGenerator;->_out:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/DERObject;->encode(Lorg/spongycastle/asn1/DEROutputStream;)V

    .line 34
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/spongycastle/asn1/BERSequenceGenerator;->writeBEREnd()V

    .line 40
    return-void
.end method
