.class public Lcom/mwr/jdiesel/api/connectors/EndpointSocketFactory;
.super Ljava/lang/Object;
.source "EndpointSocketFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSSLSocket(Ljava/net/InetAddress;ILjavax/net/ssl/TrustManager;)Ljava/net/Socket;
    .locals 5
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "trust_manager"    # Ljavax/net/ssl/TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 38
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 39
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    new-array v2, v2, [Ljavax/net/ssl/KeyManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 41
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 43
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "no such algorithm TLS"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createSocket(Lcom/mwr/jdiesel/api/connectors/Endpoint;)Ljava/net/Socket;
    .locals 3
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->isSSL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getPort()I

    move-result v1

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mwr/jdiesel/api/connectors/EndpointSocketFactory;->createSSLSocket(Ljava/net/InetAddress;ILjavax/net/ssl/TrustManager;)Ljava/net/Socket;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getPort()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mwr/jdiesel/api/connectors/EndpointSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    goto :goto_0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method
