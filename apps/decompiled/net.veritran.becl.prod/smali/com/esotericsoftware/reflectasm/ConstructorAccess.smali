.class public abstract Lcom/esotericsoftware/reflectasm/ConstructorAccess;
.super Ljava/lang/Object;
.source "ConstructorAccess.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field isNonStaticMemberClass:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lcom/esotericsoftware/reflectasm/ConstructorAccess;, "Lcom/esotericsoftware/reflectasm/ConstructorAccess<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/ConstructorAccess;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/esotericsoftware/reflectasm/ConstructorAccess",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v15

    .line 33
    .local v15, "enclosingType":Ljava/lang/Class;
    if-eqz v15, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v18, 0x1

    .line 35
    .local v18, "isNonStaticMemberClass":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 36
    .local v11, "className":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ConstructorAccess"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 37
    .local v10, "accessClassName":Ljava/lang/String;
    const-string v2, "java."

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reflectasm."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 38
    :cond_0
    const/4 v9, 0x0

    .line 40
    .local v9, "accessClass":Ljava/lang/Class;
    invoke-static/range {p0 .. p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    move-result-object v20

    .line 41
    .local v20, "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    monitor-enter v20

    .line 43
    :try_start_0
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 87
    :goto_1
    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/esotericsoftware/reflectasm/ConstructorAccess;

    .line 90
    .local v8, "access":Lcom/esotericsoftware/reflectasm/ConstructorAccess;, "Lcom/esotericsoftware/reflectasm/ConstructorAccess<TT;>;"
    move/from16 v0, v18

    iput-boolean v0, v8, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->isNonStaticMemberClass:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 91
    return-object v8

    .line 33
    .end local v8    # "access":Lcom/esotericsoftware/reflectasm/ConstructorAccess;, "Lcom/esotericsoftware/reflectasm/ConstructorAccess<TT;>;"
    .end local v9    # "accessClass":Ljava/lang/Class;
    .end local v10    # "accessClassName":Ljava/lang/String;
    .end local v11    # "className":Ljava/lang/String;
    .end local v18    # "isNonStaticMemberClass":Z
    .end local v20    # "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 44
    .restart local v9    # "accessClass":Ljava/lang/Class;
    .restart local v10    # "accessClassName":Ljava/lang/String;
    .restart local v11    # "className":Ljava/lang/String;
    .restart local v18    # "isNonStaticMemberClass":Z
    .restart local v20    # "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    :catch_0
    move-exception v17

    .line 45
    .local v17, "ignored":Ljava/lang/ClassNotFoundException;
    const/16 v2, 0x2e

    const/16 v3, 0x2f

    :try_start_3
    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "accessClassNameInternal":Ljava/lang/String;
    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .line 49
    .local v12, "classNameInternal":Ljava/lang/String;
    const/16 v19, 0x0

    .line 50
    .local v19, "isPrivate":Z
    if-nez v18, :cond_2

    .line 51
    const/4 v14, 0x0

    .line 53
    .local v14, "enclosingClassNameInternal":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_4
    check-cast v2, [Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 54
    .local v13, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v19

    .line 58
    if-eqz v19, :cond_3

    .line 59
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class cannot be created (the no-arg constructor is private): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    .end local v4    # "accessClassNameInternal":Ljava/lang/String;
    .end local v12    # "classNameInternal":Ljava/lang/String;
    .end local v13    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v14    # "enclosingClassNameInternal":Ljava/lang/String;
    .end local v17    # "ignored":Ljava/lang/ClassNotFoundException;
    .end local v19    # "isPrivate":Z
    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 55
    .restart local v4    # "accessClassNameInternal":Ljava/lang/String;
    .restart local v12    # "classNameInternal":Ljava/lang/String;
    .restart local v14    # "enclosingClassNameInternal":Ljava/lang/String;
    .restart local v17    # "ignored":Ljava/lang/ClassNotFoundException;
    .restart local v19    # "isPrivate":Z
    :catch_1
    move-exception v16

    .line 56
    .local v16, "ex":Ljava/lang/Exception;
    :try_start_6
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class cannot be created (missing no-arg constructor): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 62
    .end local v14    # "enclosingClassNameInternal":Ljava/lang/String;
    .end local v16    # "ex":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v14

    .line 64
    .restart local v14    # "enclosingClassNameInternal":Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_7
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v15, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 65
    .restart local v13    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v19

    .line 70
    if-eqz v19, :cond_3

    .line 71
    :try_start_8
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-static member class cannot be created (the enclosing class constructor is private): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    .end local v13    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_2
    move-exception v16

    .line 67
    .restart local v16    # "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-static member class cannot be created (missing enclosing class constructor): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 76
    .end local v16    # "ex":Ljava/lang/Exception;
    .restart local v13    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :cond_3
    new-instance v1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;-><init>(I)V

    .line 77
    .local v1, "cw":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;
    const v2, 0x3002d

    const/16 v3, 0x21

    const/4 v5, 0x0

    const-string v6, "com/esotericsoftware/reflectasm/ConstructorAccess"

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 80
    invoke-static {v1}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->insertConstructor(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;)V

    .line 81
    invoke-static {v1, v12}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->insertNewInstance(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;)V

    .line 82
    invoke-static {v1, v12, v14}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->insertNewInstanceInner(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visitEnd()V

    .line 85
    invoke-virtual {v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v2}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v9

    goto/16 :goto_1

    .line 92
    .end local v1    # "cw":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;
    .end local v4    # "accessClassNameInternal":Ljava/lang/String;
    .end local v12    # "classNameInternal":Ljava/lang/String;
    .end local v13    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v14    # "enclosingClassNameInternal":Ljava/lang/String;
    .end local v17    # "ignored":Ljava/lang/ClassNotFoundException;
    .end local v19    # "isPrivate":Z
    :catch_3
    move-exception v16

    .line 93
    .restart local v16    # "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error constructing constructor access class: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static insertConstructor(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;)V
    .locals 7
    .param p0, "cw"    # Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 98
    const-string v2, "<init>"

    const-string v3, "()V"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    move-result-object v6

    .line 99
    .local v6, "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    invoke-virtual {v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitCode()V

    .line 100
    const/16 v0, 0x19

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 101
    const/16 v0, 0xb7

    const-string v2, "com/esotericsoftware/reflectasm/ConstructorAccess"

    const-string v3, "<init>"

    const-string v4, "()V"

    invoke-virtual {v6, v0, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/16 v0, 0xb1

    invoke-virtual {v6, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 103
    invoke-virtual {v6, v1, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 104
    invoke-virtual {v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 105
    return-void
.end method

.method static insertNewInstance(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;)V
    .locals 7
    .param p0, "cw"    # Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;
    .param p1, "classNameInternal"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 108
    const-string v2, "newInstance"

    const-string v3, "()Ljava/lang/Object;"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    move-result-object v6

    .line 109
    .local v6, "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    invoke-virtual {v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitCode()V

    .line 110
    const/16 v0, 0xbb

    invoke-virtual {v6, v0, p1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 111
    const/16 v0, 0x59

    invoke-virtual {v6, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 112
    const/16 v0, 0xb7

    const-string v2, "<init>"

    const-string v3, "()V"

    invoke-virtual {v6, v0, p1, v2, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/16 v0, 0xb0

    invoke-virtual {v6, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 114
    const/4 v0, 0x2

    invoke-virtual {v6, v0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 115
    invoke-virtual {v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 116
    return-void
.end method

.method static insertNewInstanceInner(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "cw"    # Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;
    .param p1, "classNameInternal"    # Ljava/lang/String;
    .param p2, "enclosingClassNameInternal"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xbb

    const/16 v9, 0xb7

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/16 v7, 0x59

    .line 119
    const-string v2, "newInstance"

    const-string v3, "(Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    move-result-object v6

    .line 120
    .local v6, "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    invoke-virtual {v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitCode()V

    .line 121
    if-eqz p2, :cond_0

    .line 122
    invoke-virtual {v6, v10, p1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 123
    invoke-virtual {v6, v7}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 124
    const/16 v0, 0x19

    invoke-virtual {v6, v0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 125
    const/16 v0, 0xc0

    invoke-virtual {v6, v0, p2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 126
    invoke-virtual {v6, v7}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 127
    const/16 v0, 0xb6

    const-string v1, "java/lang/Object"

    const-string v2, "getClass"

    const-string v3, "()Ljava/lang/Class;"

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/16 v0, 0x57

    invoke-virtual {v6, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 129
    const-string v0, "<init>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";)V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v9, p1, v0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/16 v0, 0xb0

    invoke-virtual {v6, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 131
    const/4 v0, 0x4

    invoke-virtual {v6, v0, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 140
    :goto_0
    invoke-virtual {v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 141
    return-void

    .line 133
    :cond_0
    const-string v0, "java/lang/UnsupportedOperationException"

    invoke-virtual {v6, v10, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 134
    invoke-virtual {v6, v7}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 135
    const-string v0, "Not an inner class."

    invoke-virtual {v6, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 136
    const-string v0, "java/lang/UnsupportedOperationException"

    const-string v1, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    invoke-virtual {v6, v9, v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/16 v0, 0xbf

    invoke-virtual {v6, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 138
    const/4 v0, 0x3

    invoke-virtual {v6, v0, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    goto :goto_0
.end method


# virtual methods
.method public isNonStaticMemberClass()Z
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Lcom/esotericsoftware/reflectasm/ConstructorAccess;, "Lcom/esotericsoftware/reflectasm/ConstructorAccess<TT;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->isNonStaticMemberClass:Z

    return v0
.end method

.method public abstract newInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method
