.class public Lcom/esotericsoftware/kryo/util/UnsafeUtil;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# static fields
.field private static final _unsafe:Lsun/misc/Unsafe;

.field public static final byteArrayBaseOffset:J

.field public static final charArrayBaseOffset:J

.field static directByteBufferConstr:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final doubleArrayBaseOffset:J

.field public static final floatArrayBaseOffset:J

.field public static final intArrayBaseOffset:J

.field public static final longArrayBaseOffset:J

.field public static final shortArrayBaseOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .prologue
    .line 42
    const/4 v5, 0x0

    .line 43
    .local v5, "tmpUnsafe":Lsun/misc/Unsafe;
    const-wide/16 v6, 0x0

    .line 44
    .local v6, "tmpByteArrayBaseOffset":J
    const-wide/16 v12, 0x0

    .line 45
    .local v12, "tmpFloatArrayBaseOffset":J
    const-wide/16 v10, 0x0

    .line 46
    .local v10, "tmpDoubleArrayBaseOffset":J
    const-wide/16 v14, 0x0

    .line 47
    .local v14, "tmpIntArrayBaseOffset":J
    const-wide/16 v16, 0x0

    .line 48
    .local v16, "tmpLongArrayBaseOffset":J
    const-wide/16 v18, 0x0

    .line 49
    .local v18, "tmpShortArrayBaseOffset":J
    const-wide/16 v8, 0x0

    .line 52
    .local v8, "tmpCharArrayBaseOffset":J
    :try_start_0
    sget-boolean v20, Lcom/esotericsoftware/kryo/util/Util;->isAndroid:Z

    if-nez v20, :cond_1

    .line 53
    const-class v20, Lsun/misc/Unsafe;

    const-string v21, "theUnsafe"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 54
    .local v4, "field":Ljava/lang/reflect/Field;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 55
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lsun/misc/Unsafe;

    move-object v5, v0

    .line 56
    const-class v20, [B

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v6, v0

    .line 57
    const-class v20, [C

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v8, v0

    .line 58
    const-class v20, [S

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 59
    const-class v20, [I

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v14, v0

    .line 60
    const-class v20, [F

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v12, v0

    .line 61
    const-class v20, [J

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 62
    const-class v20, [D

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    move/from16 v0, v20

    int-to-long v10, v0

    .line 71
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    sput-wide v6, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->byteArrayBaseOffset:J

    .line 72
    sput-wide v8, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->charArrayBaseOffset:J

    .line 73
    sput-wide v18, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->shortArrayBaseOffset:J

    .line 74
    sput-wide v14, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->intArrayBaseOffset:J

    .line 75
    sput-wide v12, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->floatArrayBaseOffset:J

    .line 76
    sput-wide v16, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->longArrayBaseOffset:J

    .line 77
    sput-wide v10, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->doubleArrayBaseOffset:J

    .line 78
    sput-object v5, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->_unsafe:Lsun/misc/Unsafe;

    .line 82
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 84
    .local v2, "buf":Ljava/nio/ByteBuffer;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v23, v21, v22

    const/16 v22, 0x1

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-class v23, Ljava/lang/Object;

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v20

    sput-object v20, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->directByteBufferConstr:Ljava/lang/reflect/Constructor;

    .line 85
    sget-object v20, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->directByteBufferConstr:Ljava/lang/reflect/Constructor;

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_1
    return-void

    .line 64
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    :cond_1
    :try_start_2
    sget-boolean v20, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v20, :cond_0

    const-string v20, "kryo"

    const-string v21, "Running on Android platform. Use of sun.misc.Unsafe should be disabled"

    invoke-static/range {v20 .. v21}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v3

    .line 67
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v20, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v20, :cond_0

    .line 68
    const-string v20, "kryo"

    const-string v21, "sun.misc.Unsafe is not accessible or not available. Use of sun.misc.Unsafe should be disabled"

    invoke-static/range {v20 .. v21}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v3

    .line 87
    .restart local v3    # "e":Ljava/lang/Exception;
    const/16 v20, 0x0

    sput-object v20, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->directByteBufferConstr:Ljava/lang/reflect/Constructor;

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDirectBufferAt(JI)Ljava/nio/ByteBuffer;
    .locals 6
    .param p0, "address"    # J
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 137
    sget-object v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->directByteBufferConstr:Ljava/lang/reflect/Constructor;

    if-nez v2, :cond_0

    .line 140
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->directByteBufferConstr:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot allocate ByteBuffer at a given address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static releaseBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "niobuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 153
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    check-cast p0, Lsun/nio/ch/DirectBuffer;

    .end local p0    # "niobuffer":Ljava/nio/ByteBuffer;
    invoke-interface {p0}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v0

    .line 155
    .local v0, "cleaner":Lsun/misc/Cleaner;
    if-eqz v0, :cond_0

    .line 156
    check-cast v0, Lsun/misc/Cleaner;

    .end local v0    # "cleaner":Lsun/misc/Cleaner;
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 157
    :cond_0
    const/4 p0, 0x0

    .line 159
    .restart local p0    # "niobuffer":Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method public static sortFieldsByOffset(Ljava/util/List;)[Ljava/lang/reflect/Field;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "allFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/reflect/Field;

    invoke-interface {p0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 109
    .local v0, "allFieldsArray":[Ljava/lang/reflect/Field;
    new-instance v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil$1;

    invoke-direct {v2}, Lcom/esotericsoftware/kryo/util/UnsafeUtil$1;-><init>()V

    .line 120
    .local v2, "fieldOffsetComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 122
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 123
    .local v1, "f":Ljava/lang/reflect/Field;
    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v4, :cond_0

    const-string v4, "kryo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' at offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v6

    invoke-virtual {v6, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_1
    return-object v0
.end method

.method public static final unsafe()Lsun/misc/Unsafe;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->_unsafe:Lsun/misc/Unsafe;

    return-object v0
.end method
