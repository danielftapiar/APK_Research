.class Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder;
.super Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/Coders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AES256SHA256Decoder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;-><init>()V

    return-void
.end method


# virtual methods
.method decode(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p3, "passwordBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder;Lorg/apache/commons/compress/archivers/sevenz/Coder;[BLjava/io/InputStream;)V

    return-object v0
.end method
