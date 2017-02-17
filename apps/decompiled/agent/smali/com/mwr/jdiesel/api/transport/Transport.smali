.class public abstract Lcom/mwr/jdiesel/api/transport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isLive()Z
.end method

.method public receive()Lcom/mwr/jdiesel/api/Frame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/APIVersionException;,
            Ljava/io/IOException;,
            Lcom/mwr/jdiesel/api/transport/TransportDisconnectedException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/transport/Transport;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/transport/Transport;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Frame;->readFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Frame;

    move-result-object v0

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Lcom/mwr/jdiesel/api/transport/TransportDisconnectedException;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/transport/TransportDisconnectedException;-><init>()V

    throw v0
.end method

.method public send(Lcom/mwr/jdiesel/api/Frame;)V
    .locals 2
    .param p1, "frame"    # Lcom/mwr/jdiesel/api/Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/transport/Transport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Frame;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 26
    return-void
.end method
