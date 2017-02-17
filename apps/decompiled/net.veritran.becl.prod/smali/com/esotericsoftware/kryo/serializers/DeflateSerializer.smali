.class public Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "DeflateSerializer.java"


# instance fields
.field private compressionLevel:I

.field private noHeaders:Z

.field private final serializer:Lcom/esotericsoftware/kryo/Serializer;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 1
    .param p1, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->noHeaders:Z

    .line 21
    const/4 v0, 0x4

    iput v0, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->compressionLevel:I

    .line 24
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 25
    return-void
.end method


# virtual methods
.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "original"    # Ljava/lang/Object;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "type"    # Ljava/lang/Class;

    .prologue
    const/16 v4, 0x100

    .line 44
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Lcom/esotericsoftware/kryo/io/InputChunked;

    invoke-direct {v1, p2, v4}, Lcom/esotericsoftware/kryo/io/InputChunked;-><init>(Ljava/io/InputStream;I)V

    new-instance v2, Ljava/util/zip/Inflater;

    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->noHeaders:Z

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 45
    .local v0, "inflaterStream":Ljava/util/zip/InflaterInputStream;
    new-instance v1, Lcom/esotericsoftware/kryo/io/Input;

    invoke-direct {v1, v0, v4}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;I)V

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {p1, v1, p3, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public setCompressionLevel(I)V
    .locals 0
    .param p1, "compressionLevel"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->compressionLevel:I

    .line 56
    return-void
.end method

.method public setNoHeaders(Z)V
    .locals 0
    .param p1, "noHeaders"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->noHeaders:Z

    .line 50
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 8
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/16 v7, 0x100

    .line 28
    new-instance v0, Ljava/util/zip/Deflater;

    iget v5, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->compressionLevel:I

    iget-boolean v6, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->noHeaders:Z

    invoke-direct {v0, v5, v6}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 29
    .local v0, "deflater":Ljava/util/zip/Deflater;
    new-instance v4, Lcom/esotericsoftware/kryo/io/OutputChunked;

    invoke-direct {v4, p2, v7}, Lcom/esotericsoftware/kryo/io/OutputChunked;-><init>(Ljava/io/OutputStream;I)V

    .line 30
    .local v4, "outputChunked":Lcom/esotericsoftware/kryo/io/OutputChunked;
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v4, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 31
    .local v2, "deflaterStream":Ljava/util/zip/DeflaterOutputStream;
    new-instance v1, Lcom/esotericsoftware/kryo/io/Output;

    invoke-direct {v1, v2, v7}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;I)V

    .line 32
    .local v1, "deflaterOutput":Lcom/esotericsoftware/kryo/io/Output;
    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {p1, v1, p3, v5}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    .line 33
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/io/Output;->flush()V

    .line 35
    :try_start_0
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    invoke-virtual {v4}, Lcom/esotericsoftware/kryo/io/OutputChunked;->endChunks()V

    .line 40
    return-void

    .line 36
    :catch_0
    move-exception v3

    .line 37
    .local v3, "ex":Ljava/io/IOException;
    new-instance v5, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v5, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
