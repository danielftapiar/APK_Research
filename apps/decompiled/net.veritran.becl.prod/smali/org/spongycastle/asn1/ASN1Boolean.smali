.class public Lorg/spongycastle/asn1/ASN1Boolean;
.super Lorg/spongycastle/asn1/DERBoolean;
.source "ASN1Boolean.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DERBoolean;-><init>(Z)V

    .line 9
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "value"    # [B

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DERBoolean;-><init>([B)V

    .line 14
    return-void
.end method
