.class public interface abstract Ljavax/microedition/io/HttpsConnection;
.super Ljava/lang/Object;
.source "HttpsConnection.java"

# interfaces
.implements Ljavax/microedition/io/HttpConnection;


# virtual methods
.method public abstract getPort()I
.end method

.method public abstract getSecurityInfo()Ljavax/microedition/io/SecurityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
