.class public interface abstract Lorg/spongycastle/crypto/tls/TlsCipher;
.super Ljava/lang/Object;
.source "TlsCipher.java"


# virtual methods
.method public abstract decodeCiphertext(S[BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract encodePlaintext(S[BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
