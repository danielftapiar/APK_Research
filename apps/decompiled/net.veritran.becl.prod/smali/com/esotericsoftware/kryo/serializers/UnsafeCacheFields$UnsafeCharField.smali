.class final Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeCharField;
.super Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeCachedField;
.source "UnsafeCacheFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeCharField"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 2
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 130
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeCachedField;-><init>(J)V

    .line 131
    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "original"    # Ljava/lang/Object;
    .param p2, "copy"    # Ljava/lang/Object;

    .prologue
    .line 142
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeCharField;->offset:J

    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v1

    iget-wide v4, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeCharField;->offset:J

    invoke-virtual {v1, p1, v4, v5}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v1

    invoke-virtual {v0, p2, v2, v3, v1}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    .line 143
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V
    .locals 4
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 138
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeCharField;->offset:J

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readChar()C

    move-result v1

    invoke-virtual {v0, p2, v2, v3, v1}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    .line 139
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 4
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 134
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeCharField;->offset:J

    invoke-virtual {v0, p2, v2, v3}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeChar(C)V

    .line 135
    return-void
.end method