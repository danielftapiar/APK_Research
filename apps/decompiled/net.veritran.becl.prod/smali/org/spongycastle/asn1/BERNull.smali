.class public Lorg/spongycastle/asn1/BERNull;
.super Lorg/spongycastle/asn1/DERNull;
.source "BERNull.java"


# static fields
.field public static final INSTANCE:Lorg/spongycastle/asn1/BERNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lorg/spongycastle/asn1/BERNull;

    invoke-direct {v0}, Lorg/spongycastle/asn1/BERNull;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/BERNull;->INSTANCE:Lorg/spongycastle/asn1/BERNull;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/spongycastle/asn1/DERNull;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method encode(Lorg/spongycastle/asn1/DEROutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/spongycastle/asn1/DEROutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1OutputStream;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/spongycastle/asn1/BEROutputStream;

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/DEROutputStream;->write(I)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-super {p0, p1}, Lorg/spongycastle/asn1/DERNull;->encode(Lorg/spongycastle/asn1/DEROutputStream;)V

    goto :goto_0
.end method
