.class public abstract Lorg/spongycastle/asn1/DERObject;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "DERObject.java"

# interfaces
.implements Lorg/spongycastle/asn1/DERTags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    return-void
.end method


# virtual methods
.method abstract encode(Lorg/spongycastle/asn1/DEROutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 0

    .prologue
    .line 11
    return-object p0
.end method
