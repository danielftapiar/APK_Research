.class public Lcom/mwr/jdiesel/api/transport/SocketTransport;
.super Lcom/mwr/jdiesel/api/transport/Transport;
.source "SocketTransport.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/transport/SecureTransport;


# static fields
.field private static final SO_TIMEOUT:I = 0x1388


# instance fields
.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/transport/Transport;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/mwr/jdiesel/api/transport/SocketTransport;->in:Ljava/io/InputStream;

    .line 22
    iput-object v1, p0, Lcom/mwr/jdiesel/api/transport/SocketTransport;->out:Ljava/io/OutputStream;

    .line 23
    iput-object v1, p0, Lcom/mwr/jdiesel/api/transport/SocketTransport;->socket:Ljava/net/Socket;

    .line 27
    :try_start_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/transport/SocketTransport;->socket:Ljava/net/Socket;

    .line 29
    iget-object v1, p0, Lcom/mwr/jdiesel/api/transport/SocketTransport;->socket:Ljava/net/Socket;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 31
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mwr/jdiesel/api/transport/SocketTransport;->in:Ljava/io/InputStream;

    .line 32
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mwr/jdiesel/api/transport/SocketTransport;->out:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SocketConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException when grabbing streams: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/mwr/jdiesel/api/transport/SocketTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 43
    iget-object v1, p0, Lcom/mwr/jdiesel/api/transport/SocketTransport;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 44
    iget-object v1, p0, Lcom/mwr/jdiesel/api/transport/SocketTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SocketConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException when closing socket: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHostCertificateFingerprint()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    iget-object v1, p0, Lcom/mwr/jdiesel/api/transport/SocketTransport;->socket:Ljava/net/Socket;

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 54
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    new-instance v2, Lcom/mwr/common/tls/X509Fingerprint;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-direct {v2, v1}, Lcom/mwr/common/tls/X509Fingerprint;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v2}, Lcom/mwr/common/tls/X509Fingerprint;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mwr/jdiesel/api/transport/SocketTransport;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mwr/jdiesel/api/transport/SocketTransport;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPeerCertificateFingerprint()Ljava/lang/String;
    .locals 5

    .prologue
    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/mwr/jdiesel/api/transport/SocketTransport;->socket:Ljava/net/Socket;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 72
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    new-instance v3, Lcom/mwr/common/tls/X509Fingerprint;

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-direct {v3, v2}, Lcom/mwr/common/tls/X509Fingerprint;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v3}, Lcom/mwr/common/tls/X509Fingerprint;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 75
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    :goto_0
    return-object v2

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const-string v2, "No valid peer certificate"

    goto :goto_0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mwr/jdiesel/api/transport/SocketTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
