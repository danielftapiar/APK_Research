.class public Lorg/spongycastle/jce/X509KeyUsage;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "X509KeyUsage.java"


# static fields
.field public static final cRLSign:I = 0x2

.field public static final dataEncipherment:I = 0x10

.field public static final decipherOnly:I = 0x8000

.field public static final digitalSignature:I = 0x80

.field public static final encipherOnly:I = 0x1

.field public static final keyAgreement:I = 0x8

.field public static final keyCertSign:I = 0x4

.field public static final keyEncipherment:I = 0x20

.field public static final nonRepudiation:I = 0x40


# instance fields
.field private usage:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "usage"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jce/X509KeyUsage;->usage:I

    .line 50
    iput p1, p0, Lorg/spongycastle/jce/X509KeyUsage;->usage:I

    .line 51
    return-void
.end method


# virtual methods
.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyUsage;

    iget v1, p0, Lorg/spongycastle/jce/X509KeyUsage;->usage:I

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyUsage;-><init>(I)V

    return-object v0
.end method
