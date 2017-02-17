.class public Ljavax/microedition/pki/CertificateException;
.super Ljava/io/IOException;
.source "CertificateException.java"


# static fields
.field public static final BAD_EXTENSIONS:B = 0x1t

.field public static final BROKEN_CHAIN:B = 0xbt

.field public static final CERTIFICATE_CHAIN_TOO_LONG:B = 0x2t

.field public static final EXPIRED:B = 0x3t

.field public static final INAPPROPRIATE_KEY_USAGE:B = 0xat

.field public static final MISSING_SIGNATURE:B = 0x5t

.field public static final NOT_YET_VALID:B = 0x6t

.field public static final ROOT_CA_EXPIRED:B = 0xct

.field public static final SITENAME_MISMATCH:B = 0x7t

.field public static final UNAUTHORIZED_INTERMEDIATE_CA:B = 0x4t

.field public static final UNRECOGNIZED_ISSUER:B = 0x8t

.field public static final UNSUPPORTED_PUBLIC_KEY_TYPE:B = 0xdt

.field public static final UNSUPPORTED_SIGALG:B = 0x9t

.field public static final VERIFICATION_FAILED:B = 0xet

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private certificate:Ljavax/microedition/pki/Certificate;

.field private status:B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/microedition/pki/Certificate;B)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljavax/microedition/pki/Certificate;
    .param p3, "status"    # B

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 61
    iput-object p2, p0, Ljavax/microedition/pki/CertificateException;->certificate:Ljavax/microedition/pki/Certificate;

    .line 62
    iput-byte p3, p0, Ljavax/microedition/pki/CertificateException;->status:B

    .line 63
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/pki/Certificate;B)V
    .locals 0
    .param p1, "certificate"    # Ljavax/microedition/pki/Certificate;
    .param p2, "status"    # B

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 54
    iput-object p1, p0, Ljavax/microedition/pki/CertificateException;->certificate:Ljavax/microedition/pki/Certificate;

    .line 55
    iput-byte p2, p0, Ljavax/microedition/pki/CertificateException;->status:B

    .line 56
    return-void
.end method


# virtual methods
.method public getCertificate()Ljavax/microedition/pki/Certificate;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ljavax/microedition/pki/CertificateException;->certificate:Ljavax/microedition/pki/Certificate;

    return-object v0
.end method

.method public getReason()B
    .locals 1

    .prologue
    .line 70
    iget-byte v0, p0, Ljavax/microedition/pki/CertificateException;->status:B

    return v0
.end method
