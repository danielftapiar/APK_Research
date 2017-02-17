.class Lorg/spongycastle/openssl/PEMReader$X509AttributeCertificateParser;
.super Ljava/lang/Object;
.source "PEMReader.java"

# interfaces
.implements Lorg/spongycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "X509AttributeCertificateParser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openssl/PEMReader;


# direct methods
.method private constructor <init>(Lorg/spongycastle/openssl/PEMReader;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lorg/spongycastle/openssl/PEMReader$X509AttributeCertificateParser;->this$0:Lorg/spongycastle/openssl/PEMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/spongycastle/openssl/PEMReader;Lorg/spongycastle/openssl/PEMReader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/openssl/PEMReader;
    .param p2, "x1"    # Lorg/spongycastle/openssl/PEMReader$1;

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lorg/spongycastle/openssl/PEMReader$X509AttributeCertificateParser;-><init>(Lorg/spongycastle/openssl/PEMReader;)V

    return-void
.end method


# virtual methods
.method public parseObject(Lorg/spongycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Lorg/spongycastle/util/io/pem/PemObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    new-instance v0, Lorg/spongycastle/x509/X509V2AttributeCertificate;

    invoke-virtual {p1}, Lorg/spongycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/X509V2AttributeCertificate;-><init>([B)V

    return-object v0
.end method
