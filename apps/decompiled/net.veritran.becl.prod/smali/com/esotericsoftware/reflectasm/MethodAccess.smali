.class public abstract Lcom/esotericsoftware/reflectasm/MethodAccess;
.super Ljava/lang/Object;
.source "MethodAccess.java"


# instance fields
.field private methodNames:[Ljava/lang/String;

.field private parameterTypes:[[Ljava/lang/Class;

.field private returnTypes:[Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDeclaredMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 270
    .local v0, "declaredMethods":[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v4, v0

    .local v4, "n":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 271
    aget-object v2, v0, v1

    .line 272
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 273
    .local v3, "modifiers":I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 270
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_1
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 275
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 277
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "modifiers":I
    :cond_2
    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/MethodAccess;
    .locals 38
    .param p0, "type"    # Ljava/lang/Class;

    .prologue
    .line 68
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v29, "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v23

    .line 70
    .local v23, "isInterface":Z
    if-nez v23, :cond_0

    .line 71
    move-object/from16 v31, p0

    .line 72
    .local v31, "nextClass":Ljava/lang/Class;
    :goto_0
    const-class v3, Ljava/lang/Object;

    move-object/from16 v0, v31

    if-eq v0, v3, :cond_1

    .line 73
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/esotericsoftware/reflectasm/MethodAccess;->addDeclaredMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 74
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v31

    goto :goto_0

    .line 77
    .end local v31    # "nextClass":Ljava/lang/Class;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/esotericsoftware/reflectasm/MethodAccess;->recursiveAddInterfaceMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 80
    :cond_1
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 81
    .local v30, "n":I
    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 82
    .local v28, "methodNames":[Ljava/lang/String;
    move/from16 v0, v30

    new-array v0, v0, [[Ljava/lang/Class;

    move-object/from16 v35, v0

    .line 83
    .local v35, "parameterTypes":[[Ljava/lang/Class;
    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v37, v0

    .line 84
    .local v37, "returnTypes":[Ljava/lang/Class;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    .line 85
    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/reflect/Method;

    .line 86
    .local v26, "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v21

    .line 87
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v35, v21

    .line 88
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v37, v21

    .line 84
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 91
    .end local v26    # "method":Ljava/lang/reflect/Method;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    .line 92
    .local v16, "className":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MethodAccess"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 93
    .local v14, "accessClassName":Ljava/lang/String;
    const-string v3, "java."

    invoke-virtual {v14, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reflectasm."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 96
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    move-result-object v25

    .line 97
    .local v25, "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    monitor-enter v25

    .line 99
    :try_start_0
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 256
    .local v13, "accessClass":Ljava/lang/Class;
    :goto_2
    :try_start_1
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/esotericsoftware/reflectasm/MethodAccess;

    .line 259
    .local v12, "access":Lcom/esotericsoftware/reflectasm/MethodAccess;
    move-object/from16 v0, v28

    iput-object v0, v12, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    .line 260
    move-object/from16 v0, v35

    iput-object v0, v12, Lcom/esotericsoftware/reflectasm/MethodAccess;->parameterTypes:[[Ljava/lang/Class;

    .line 261
    move-object/from16 v0, v37

    iput-object v0, v12, Lcom/esotericsoftware/reflectasm/MethodAccess;->returnTypes:[Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 262
    return-object v12

    .line 100
    .end local v12    # "access":Lcom/esotericsoftware/reflectasm/MethodAccess;
    .end local v13    # "accessClass":Ljava/lang/Class;
    :catch_0
    move-exception v22

    .line 101
    .local v22, "ignored":Ljava/lang/ClassNotFoundException;
    const/16 v3, 0x2e

    const/16 v4, 0x2f

    :try_start_3
    invoke-virtual {v14, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "accessClassNameInternal":Ljava/lang/String;
    const/16 v3, 0x2e

    const/16 v4, 0x2f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v17

    .line 104
    .local v17, "classNameInternal":Ljava/lang/String;
    new-instance v2, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;-><init>(I)V

    .line 106
    .local v2, "cw":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;
    const v3, 0x3002d

    const/16 v4, 0x21

    const/4 v6, 0x0

    const-string v7, "com/esotericsoftware/reflectasm/MethodAccess"

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 109
    const/4 v7, 0x1

    const-string v8, "<init>"

    const-string v9, "()V"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    move-result-object v6

    .line 110
    .local v6, "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    invoke-virtual {v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitCode()V

    .line 111
    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 112
    const/16 v3, 0xb7

    const-string v4, "com/esotericsoftware/reflectasm/MethodAccess"

    const-string v7, "<init>"

    const-string v8, "()V"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/16 v3, 0xb1

    invoke-virtual {v6, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 114
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 115
    invoke-virtual {v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 118
    const/16 v7, 0x81

    const-string v8, "invoke"

    const-string v9, "(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    .end local v6    # "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    move-result-object v6

    .line 120
    .restart local v6    # "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    invoke-virtual {v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitCode()V

    .line 122
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 123
    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 124
    const/16 v3, 0xc0

    move-object/from16 v0, v17

    invoke-virtual {v6, v3, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 125
    const/16 v3, 0x3a

    const/4 v4, 0x4

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 127
    const/16 v3, 0x15

    const/4 v4, 0x2

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 128
    move/from16 v0, v30

    new-array v0, v0, [Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    move-object/from16 v24, v0

    .line 129
    .local v24, "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    .line 130
    new-instance v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    invoke-direct {v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;-><init>()V

    aput-object v3, v24, v21

    .line 129
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 131
    :cond_4
    new-instance v19, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    invoke-direct/range {v19 .. v19}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;-><init>()V

    .line 132
    .local v19, "defaultLabel":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v6, v3, v4, v0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 134
    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 135
    .local v15, "buffer":Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    :goto_4
    move/from16 v0, v21

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    .line 136
    aget-object v3, v24, v21

    invoke-virtual {v6, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 137
    if-nez v21, :cond_5

    .line 138
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v17, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 141
    :goto_5
    const/16 v3, 0x19

    const/4 v4, 0x4

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 143
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 144
    const/16 v3, 0x28

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    aget-object v27, v28, v21

    .line 147
    .local v27, "methodName":Ljava/lang/String;
    aget-object v34, v35, v21

    .line 148
    .local v34, "paramTypes":[Ljava/lang/Class;
    aget-object v36, v37, v21

    .line 149
    .local v36, "returnType":Ljava/lang/Class;
    const/16 v32, 0x0

    .local v32, "paramIndex":I
    :goto_6
    move-object/from16 v0, v34

    array-length v3, v0

    move/from16 v0, v32

    if-ge v0, v3, :cond_6

    .line 150
    const/16 v3, 0x19

    const/4 v4, 0x3

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 151
    const/16 v3, 0x10

    move/from16 v0, v32

    invoke-virtual {v6, v3, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    .line 152
    const/16 v3, 0x32

    invoke-virtual {v6, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 153
    aget-object v3, v34, v32

    invoke-static {v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-result-object v33

    .line 154
    .local v33, "paramType":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;
    invoke-virtual/range {v33 .. v33}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getSort()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 194
    :goto_7
    invoke-virtual/range {v33 .. v33}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v32, v32, 0x1

    goto :goto_6

    .line 140
    .end local v27    # "methodName":Ljava/lang/String;
    .end local v32    # "paramIndex":I
    .end local v33    # "paramType":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;
    .end local v34    # "paramTypes":[Ljava/lang/Class;
    .end local v36    # "returnType":Ljava/lang/Class;
    :cond_5
    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_5

    .line 256
    .end local v2    # "cw":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;
    .end local v5    # "accessClassNameInternal":Ljava/lang/String;
    .end local v6    # "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    .end local v15    # "buffer":Ljava/lang/StringBuilder;
    .end local v17    # "classNameInternal":Ljava/lang/String;
    .end local v19    # "defaultLabel":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v22    # "ignored":Ljava/lang/ClassNotFoundException;
    .end local v24    # "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    :catchall_0
    move-exception v3

    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 156
    .restart local v2    # "cw":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;
    .restart local v5    # "accessClassNameInternal":Ljava/lang/String;
    .restart local v6    # "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    .restart local v15    # "buffer":Ljava/lang/StringBuilder;
    .restart local v17    # "classNameInternal":Ljava/lang/String;
    .restart local v19    # "defaultLabel":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .restart local v22    # "ignored":Ljava/lang/ClassNotFoundException;
    .restart local v24    # "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .restart local v27    # "methodName":Ljava/lang/String;
    .restart local v32    # "paramIndex":I
    .restart local v33    # "paramType":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;
    .restart local v34    # "paramTypes":[Ljava/lang/Class;
    .restart local v36    # "returnType":Ljava/lang/Class;
    :pswitch_0
    const/16 v3, 0xc0

    :try_start_4
    const-string v4, "java/lang/Boolean"

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 157
    const/16 v3, 0xb6

    const-string v4, "java/lang/Boolean"

    const-string v7, "booleanValue"

    const-string v8, "()Z"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 160
    :pswitch_1
    const/16 v3, 0xc0

    const-string v4, "java/lang/Byte"

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 161
    const/16 v3, 0xb6

    const-string v4, "java/lang/Byte"

    const-string v7, "byteValue"

    const-string v8, "()B"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 164
    :pswitch_2
    const/16 v3, 0xc0

    const-string v4, "java/lang/Character"

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 165
    const/16 v3, 0xb6

    const-string v4, "java/lang/Character"

    const-string v7, "charValue"

    const-string v8, "()C"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 168
    :pswitch_3
    const/16 v3, 0xc0

    const-string v4, "java/lang/Short"

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 169
    const/16 v3, 0xb6

    const-string v4, "java/lang/Short"

    const-string v7, "shortValue"

    const-string v8, "()S"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 172
    :pswitch_4
    const/16 v3, 0xc0

    const-string v4, "java/lang/Integer"

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 173
    const/16 v3, 0xb6

    const-string v4, "java/lang/Integer"

    const-string v7, "intValue"

    const-string v8, "()I"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 176
    :pswitch_5
    const/16 v3, 0xc0

    const-string v4, "java/lang/Float"

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 177
    const/16 v3, 0xb6

    const-string v4, "java/lang/Float"

    const-string v7, "floatValue"

    const-string v8, "()F"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 180
    :pswitch_6
    const/16 v3, 0xc0

    const-string v4, "java/lang/Long"

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 181
    const/16 v3, 0xb6

    const-string v4, "java/lang/Long"

    const-string v7, "longValue"

    const-string v8, "()J"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 184
    :pswitch_7
    const/16 v3, 0xc0

    const-string v4, "java/lang/Double"

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 185
    const/16 v3, 0xb6

    const-string v4, "java/lang/Double"

    const-string v7, "doubleValue"

    const-string v8, "()D"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 188
    :pswitch_8
    const/16 v3, 0xc0

    invoke-virtual/range {v33 .. v33}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 191
    :pswitch_9
    const/16 v3, 0xc0

    invoke-virtual/range {v33 .. v33}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 197
    .end local v33    # "paramType":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;
    :cond_6
    const/16 v3, 0x29

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    invoke-static/range {v36 .. v36}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    if-eqz v23, :cond_7

    const/16 v3, 0xb9

    :goto_8
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v6, v3, v0, v1, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static/range {v36 .. v36}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getSort()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 232
    :goto_9
    const/16 v3, 0xb0

    invoke-virtual {v6, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 135
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_4

    .line 199
    :cond_7
    const/16 v3, 0xb6

    goto :goto_8

    .line 204
    :pswitch_a
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_9

    .line 207
    :pswitch_b
    const/16 v3, 0xb8

    const-string v4, "java/lang/Boolean"

    const-string v7, "valueOf"

    const-string v8, "(Z)Ljava/lang/Boolean;"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 210
    :pswitch_c
    const/16 v3, 0xb8

    const-string v4, "java/lang/Byte"

    const-string v7, "valueOf"

    const-string v8, "(B)Ljava/lang/Byte;"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 213
    :pswitch_d
    const/16 v3, 0xb8

    const-string v4, "java/lang/Character"

    const-string v7, "valueOf"

    const-string v8, "(C)Ljava/lang/Character;"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 216
    :pswitch_e
    const/16 v3, 0xb8

    const-string v4, "java/lang/Short"

    const-string v7, "valueOf"

    const-string v8, "(S)Ljava/lang/Short;"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 219
    :pswitch_f
    const/16 v3, 0xb8

    const-string v4, "java/lang/Integer"

    const-string v7, "valueOf"

    const-string v8, "(I)Ljava/lang/Integer;"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 222
    :pswitch_10
    const/16 v3, 0xb8

    const-string v4, "java/lang/Float"

    const-string v7, "valueOf"

    const-string v8, "(F)Ljava/lang/Float;"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 225
    :pswitch_11
    const/16 v3, 0xb8

    const-string v4, "java/lang/Long"

    const-string v7, "valueOf"

    const-string v8, "(J)Ljava/lang/Long;"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 228
    :pswitch_12
    const/16 v3, 0xb8

    const-string v4, "java/lang/Double"

    const-string v7, "valueOf"

    const-string v8, "(D)Ljava/lang/Double;"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 235
    .end local v27    # "methodName":Ljava/lang/String;
    .end local v32    # "paramIndex":I
    .end local v34    # "paramTypes":[Ljava/lang/Class;
    .end local v36    # "returnType":Ljava/lang/Class;
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 236
    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 238
    .end local v15    # "buffer":Ljava/lang/StringBuilder;
    .end local v19    # "defaultLabel":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v24    # "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    :cond_9
    const/16 v3, 0xbb

    const-string v4, "java/lang/IllegalArgumentException"

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 239
    const/16 v3, 0x59

    invoke-virtual {v6, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 240
    const/16 v3, 0xbb

    const-string v4, "java/lang/StringBuilder"

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 241
    const/16 v3, 0x59

    invoke-virtual {v6, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 242
    const-string v3, "Method not found: "

    invoke-virtual {v6, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 243
    const/16 v3, 0xb7

    const-string v4, "java/lang/StringBuilder"

    const-string v7, "<init>"

    const-string v8, "(Ljava/lang/String;)V"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/16 v3, 0x15

    const/4 v4, 0x2

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 245
    const/16 v3, 0xb6

    const-string v4, "java/lang/StringBuilder"

    const-string v7, "append"

    const-string v8, "(I)Ljava/lang/StringBuilder;"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/16 v3, 0xb6

    const-string v4, "java/lang/StringBuilder"

    const-string v7, "toString"

    const-string v8, "()Ljava/lang/String;"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/16 v3, 0xb7

    const-string v4, "java/lang/IllegalArgumentException"

    const-string v7, "<init>"

    const-string v8, "(Ljava/lang/String;)V"

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/16 v3, 0xbf

    invoke-virtual {v6, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 249
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 250
    invoke-virtual {v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 252
    invoke-virtual {v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visitEnd()V

    .line 253
    invoke-virtual {v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v18

    .line 254
    .local v18, "data":[B
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v13

    .restart local v13    # "accessClass":Ljava/lang/Class;
    goto/16 :goto_2

    .line 263
    .end local v2    # "cw":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;
    .end local v5    # "accessClassNameInternal":Ljava/lang/String;
    .end local v6    # "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    .end local v17    # "classNameInternal":Ljava/lang/String;
    .end local v18    # "data":[B
    .end local v22    # "ignored":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v20

    .line 264
    .local v20, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error constructing method access class: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 202
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private static recursiveAddInterfaceMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "interfaceType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-static {p0, p1}, Lcom/esotericsoftware/reflectasm/MethodAccess;->addDeclaredMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 281
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 282
    .local v3, "nextInterface":Ljava/lang/Class;
    invoke-static {v3, p1}, Lcom/esotericsoftware/reflectasm/MethodAccess;->recursiveAddInterfaceMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    .end local v3    # "nextInterface":Ljava/lang/Class;
    :cond_0
    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    array-length v1, v2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 37
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 36
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find public method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIndex(Ljava/lang/String;I)I
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "paramsCount"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    array-length v1, v2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 51
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->parameterTypes:[[Ljava/lang/Class;

    aget-object v2, v2, v0

    array-length v2, v2

    if-ne v2, p2, :cond_0

    return v0

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find public method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " params."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public varargs getIndex(Ljava/lang/String;[Ljava/lang/Class;)I
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "paramTypes"    # [Ljava/lang/Class;

    .prologue
    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    array-length v1, v2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 44
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->parameterTypes:[[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 43
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find public method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getMethodNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->parameterTypes:[[Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnTypes()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->returnTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public varargs abstract invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "paramTypes"    # [Ljava/lang/Class;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 26
    invoke-virtual {p0, p2, p3}, Lcom/esotericsoftware/reflectasm/MethodAccess;->getIndex(Ljava/lang/String;[Ljava/lang/Class;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/esotericsoftware/reflectasm/MethodAccess;->invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 31
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/esotericsoftware/reflectasm/MethodAccess;->getIndex(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/esotericsoftware/reflectasm/MethodAccess;->invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    array-length v0, p3

    goto :goto_0
.end method
