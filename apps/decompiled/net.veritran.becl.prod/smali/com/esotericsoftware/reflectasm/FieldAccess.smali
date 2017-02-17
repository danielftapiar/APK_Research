.class public abstract Lcom/esotericsoftware/reflectasm/FieldAccess;
.super Ljava/lang/Object;
.source "FieldAccess.java"


# instance fields
.field private fieldNames:[Ljava/lang/String;

.field private fieldTypes:[Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/FieldAccess;
    .locals 26
    .param p0, "type"    # Ljava/lang/Class;

    .prologue
    .line 84
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v19, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    move-object/from16 v25, p0

    .line 86
    .local v25, "nextClass":Ljava/lang/Class;
    :goto_0
    const-class v3, Ljava/lang/Object;

    move-object/from16 v0, v25

    if-eq v0, v3, :cond_3

    .line 87
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v14

    .line 88
    .local v14, "declaredFields":[Ljava/lang/reflect/Field;
    const/16 v20, 0x0

    .local v20, "i":I
    array-length v0, v14

    move/from16 v24, v0

    .local v24, "n":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 89
    aget-object v16, v14, v20

    .line 90
    .local v16, "field":Ljava/lang/reflect/Field;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v23

    .line 91
    .local v23, "modifiers":I
    invoke-static/range {v23 .. v23}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    :cond_0
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 92
    :cond_1
    invoke-static/range {v23 .. v23}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 95
    .end local v16    # "field":Ljava/lang/reflect/Field;
    .end local v23    # "modifiers":I
    :cond_2
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v25

    .line 96
    goto :goto_0

    .line 98
    .end local v14    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v20    # "i":I
    .end local v24    # "n":I
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 99
    .local v17, "fieldNames":[Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/Class;

    move-object/from16 v18, v0

    .line 100
    .local v18, "fieldTypes":[Ljava/lang/Class;
    const/16 v20, 0x0

    .restart local v20    # "i":I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    .restart local v24    # "n":I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 101
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v17, v20

    .line 102
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v18, v20

    .line 100
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 105
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 106
    .local v12, "className":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FieldAccess"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 107
    .local v11, "accessClassName":Ljava/lang/String;
    const-string v3, "java."

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reflectasm."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 108
    :cond_5
    const/4 v10, 0x0

    .line 110
    .local v10, "accessClass":Ljava/lang/Class;
    invoke-static/range {p0 .. p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    move-result-object v22

    .line 111
    .local v22, "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    monitor-enter v22

    .line 113
    :try_start_0
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 144
    :goto_4
    :try_start_1
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/esotericsoftware/reflectasm/FieldAccess;

    .line 147
    .local v9, "access":Lcom/esotericsoftware/reflectasm/FieldAccess;
    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldNames:[Ljava/lang/String;

    .line 148
    move-object/from16 v0, v18

    iput-object v0, v9, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldTypes:[Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 149
    return-object v9

    .line 114
    .end local v9    # "access":Lcom/esotericsoftware/reflectasm/FieldAccess;
    :catch_0
    move-exception v21

    .line 115
    .local v21, "ignored":Ljava/lang/ClassNotFoundException;
    const/16 v3, 0x2e

    const/16 v4, 0x2f

    :try_start_3
    invoke-virtual {v11, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "accessClassNameInternal":Ljava/lang/String;
    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v12, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, "classNameInternal":Ljava/lang/String;
    new-instance v2, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;-><init>(I)V

    .line 119
    .local v2, "cw":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;
    const v3, 0x3002d

    const/16 v4, 0x21

    const/4 v6, 0x0

    const-string v7, "com/esotericsoftware/reflectasm/FieldAccess"

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 121
    invoke-static {v2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertConstructor(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;)V

    .line 122
    move-object/from16 v0, v19

    invoke-static {v2, v13, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetObject(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 123
    move-object/from16 v0, v19

    invoke-static {v2, v13, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetObject(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 124
    sget-object v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-object/from16 v0, v19

    invoke-static {v2, v13, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V

    .line 125
    sget-object v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-object/from16 v0, v19

    invoke-static {v2, v13, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V

    .line 126
    sget-object v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->BYTE_TYPE:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-object/from16 v0, v19

    invoke-static {v2, v13, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V

    .line 127
    sget-object v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->BYTE_TYPE:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-object/from16 v0, v19

    invoke-static {v2, v13, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V

    .line 128
    sget-object v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->SHORT_TYPE:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-object/from16 v0, v19

    invoke-static {v2, v13, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V

    .line 129
    sget-object v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->SHORT_TYPE:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-object/from16 v0, v19

    invoke-static {v2, v13, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V

    .line 130
    sget-object v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->INT_TYPE:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-object/from16 v0, v19

    invoke-static {v2, v13, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V

    .line 131
    sget-object v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->INT_TYPE:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-object/from16 v0, v19

    invoke-static {v2, v13, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V

    .line 132
    sget-object v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->LONG_TYPE:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-object/from16 v0, v19

    invoke-static {v2, v13, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V

    .line 133
    sget-object v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->LONG_TYPE:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-object/from16 v0, v19

    invoke-static {v2, v13, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V

    .line 134
    sget-object v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->DOUBLE_TYPE:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-object/from16 v0, v19

    invoke-static {v2, v13, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V

    .line 135
    sget-object v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->DOUBLE_TYPE:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-object/from16 v0, v19

    invoke-static {v2, v13, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V

    .line 136
    sget-object v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->FLOAT_TYPE:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-object/from16 v0, v19

    invoke-static {v2, v13, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V

    .line 137
    sget-object v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->FLOAT_TYPE:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-object/from16 v0, v19

    invoke-static {v2, v13, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V

    .line 138
    sget-object v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->CHAR_TYPE:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-object/from16 v0, v19

    invoke-static {v2, v13, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V

    .line 139
    sget-object v3, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->CHAR_TYPE:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-object/from16 v0, v19

    invoke-static {v2, v13, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V

    .line 140
    move-object/from16 v0, v19

    invoke-static {v2, v13, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetString(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 141
    invoke-virtual {v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visitEnd()V

    .line 142
    invoke-virtual {v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v11, v3}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v10

    goto/16 :goto_4

    .line 144
    .end local v2    # "cw":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;
    .end local v5    # "accessClassNameInternal":Ljava/lang/String;
    .end local v13    # "classNameInternal":Ljava/lang/String;
    .end local v21    # "ignored":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v3

    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 150
    :catch_1
    move-exception v15

    .line 151
    .local v15, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error constructing field access class: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static insertConstructor(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;)V
    .locals 7
    .param p0, "cw"    # Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 156
    const-string v2, "<init>"

    const-string v3, "()V"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    move-result-object v6

    .line 157
    .local v6, "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    invoke-virtual {v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitCode()V

    .line 158
    const/16 v0, 0x19

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 159
    const/16 v0, 0xb7

    const-string v2, "com/esotericsoftware/reflectasm/FieldAccess"

    const-string v3, "<init>"

    const-string v4, "()V"

    invoke-virtual {v6, v0, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/16 v0, 0xb1

    invoke-virtual {v6, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 161
    invoke-virtual {v6, v1, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 162
    invoke-virtual {v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 163
    return-void
.end method

.method private static insertGetObject(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 13
    .param p0, "cw"    # Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;
    .param p1, "classNameInternal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p2, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    const/4 v11, 0x6

    .line 244
    .local v11, "maxStack":I
    const/4 v1, 0x1

    const-string v2, "get"

    const-string v3, "(Ljava/lang/Object;I)Ljava/lang/Object;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    move-result-object v0

    .line 245
    .local v0, "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitCode()V

    .line 246
    const/16 v1, 0x15

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 248
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 249
    add-int/lit8 v11, v11, -0x1

    .line 250
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v10, v1, [Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    .line 251
    .local v10, "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    const/4 v9, 0x0

    .local v9, "i":I
    array-length v12, v10

    .local v12, "n":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 252
    new-instance v1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    invoke-direct {v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;-><init>()V

    aput-object v1, v10, v9

    .line 251
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 253
    :cond_0
    new-instance v6, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    invoke-direct {v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;-><init>()V

    .line 254
    .local v6, "defaultLabel":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    const/4 v1, 0x0

    array-length v2, v10

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2, v6, v10}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 256
    const/4 v9, 0x0

    array-length v12, v10

    :goto_1
    if-ge v9, v12, :cond_1

    .line 257
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    .line 259
    .local v7, "field":Ljava/lang/reflect/Field;
    aget-object v1, v10, v9

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 260
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 261
    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 262
    const/16 v1, 0xc0

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 263
    const/16 v1, 0xb4

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-result-object v8

    .line 266
    .local v8, "fieldType":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;
    invoke-virtual {v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getSort()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 293
    :goto_2
    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 256
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 268
    :pswitch_0
    const/16 v1, 0xb8

    const-string v2, "java/lang/Boolean"

    const-string v3, "valueOf"

    const-string v4, "(Z)Ljava/lang/Boolean;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 271
    :pswitch_1
    const/16 v1, 0xb8

    const-string v2, "java/lang/Byte"

    const-string v3, "valueOf"

    const-string v4, "(B)Ljava/lang/Byte;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 274
    :pswitch_2
    const/16 v1, 0xb8

    const-string v2, "java/lang/Character"

    const-string v3, "valueOf"

    const-string v4, "(C)Ljava/lang/Character;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 277
    :pswitch_3
    const/16 v1, 0xb8

    const-string v2, "java/lang/Short"

    const-string v3, "valueOf"

    const-string v4, "(S)Ljava/lang/Short;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 280
    :pswitch_4
    const/16 v1, 0xb8

    const-string v2, "java/lang/Integer"

    const-string v3, "valueOf"

    const-string v4, "(I)Ljava/lang/Integer;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 283
    :pswitch_5
    const/16 v1, 0xb8

    const-string v2, "java/lang/Float"

    const-string v3, "valueOf"

    const-string v4, "(F)Ljava/lang/Float;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 286
    :pswitch_6
    const/16 v1, 0xb8

    const-string v2, "java/lang/Long"

    const-string v3, "valueOf"

    const-string v4, "(J)Ljava/lang/Long;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 289
    :pswitch_7
    const/16 v1, 0xb8

    const-string v2, "java/lang/Double"

    const-string v3, "valueOf"

    const-string v4, "(D)Ljava/lang/Double;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 296
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fieldType":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;
    :cond_1
    invoke-virtual {v0, v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 297
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 299
    .end local v6    # "defaultLabel":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v9    # "i":I
    .end local v10    # "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v12    # "n":I
    :cond_2
    invoke-static {v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    .line 300
    const/4 v1, 0x3

    invoke-virtual {v0, v11, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 301
    invoke-virtual {v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 302
    return-void

    .line 266
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
    .end packed-switch
.end method

.method private static insertGetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V
    .locals 21
    .param p0, "cw"    # Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;
    .param p1, "classNameInternal"    # Ljava/lang/String;
    .param p3, "primitiveType"    # Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 445
    .local p2, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    const/16 v17, 0x6

    .line 447
    .local v17, "maxStack":I
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v20

    .line 449
    .local v20, "typeNameInternal":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getSort()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 483
    const-string v4, "get"

    .line 484
    .local v4, "getterMethodName":Ljava/lang/String;
    const/16 v19, 0xb0

    .line 487
    .local v19, "returnValueInstruction":I
    :goto_0
    const/4 v3, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(Ljava/lang/Object;I)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    move-result-object v5

    .line 488
    .local v5, "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    invoke-virtual {v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitCode()V

    .line 489
    const/16 v2, 0x15

    const/4 v3, 0x2

    invoke-virtual {v5, v2, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 491
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 492
    add-int/lit8 v17, v17, -0x1

    .line 493
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    move-object/from16 v16, v0

    .line 494
    .local v16, "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    new-instance v15, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    invoke-direct {v15}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;-><init>()V

    .line 495
    .local v15, "labelForInvalidTypes":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    const/4 v13, 0x0

    .line 496
    .local v13, "hasAnyBadTypeLabel":Z
    const/4 v14, 0x0

    .local v14, "i":I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    .local v18, "n":I
    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_1

    .line 497
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    new-instance v2, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    invoke-direct {v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;-><init>()V

    aput-object v2, v16, v14

    .line 496
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 451
    .end local v4    # "getterMethodName":Ljava/lang/String;
    .end local v5    # "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    .end local v13    # "hasAnyBadTypeLabel":Z
    .end local v14    # "i":I
    .end local v15    # "labelForInvalidTypes":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v16    # "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v18    # "n":I
    .end local v19    # "returnValueInstruction":I
    :pswitch_0
    const-string v4, "getBoolean"

    .line 452
    .restart local v4    # "getterMethodName":Ljava/lang/String;
    const/16 v19, 0xac

    .line 453
    .restart local v19    # "returnValueInstruction":I
    goto :goto_0

    .line 455
    .end local v4    # "getterMethodName":Ljava/lang/String;
    .end local v19    # "returnValueInstruction":I
    :pswitch_1
    const-string v4, "getByte"

    .line 456
    .restart local v4    # "getterMethodName":Ljava/lang/String;
    const/16 v19, 0xac

    .line 457
    .restart local v19    # "returnValueInstruction":I
    goto :goto_0

    .line 459
    .end local v4    # "getterMethodName":Ljava/lang/String;
    .end local v19    # "returnValueInstruction":I
    :pswitch_2
    const-string v4, "getChar"

    .line 460
    .restart local v4    # "getterMethodName":Ljava/lang/String;
    const/16 v19, 0xac

    .line 461
    .restart local v19    # "returnValueInstruction":I
    goto :goto_0

    .line 463
    .end local v4    # "getterMethodName":Ljava/lang/String;
    .end local v19    # "returnValueInstruction":I
    :pswitch_3
    const-string v4, "getShort"

    .line 464
    .restart local v4    # "getterMethodName":Ljava/lang/String;
    const/16 v19, 0xac

    .line 465
    .restart local v19    # "returnValueInstruction":I
    goto :goto_0

    .line 467
    .end local v4    # "getterMethodName":Ljava/lang/String;
    .end local v19    # "returnValueInstruction":I
    :pswitch_4
    const-string v4, "getInt"

    .line 468
    .restart local v4    # "getterMethodName":Ljava/lang/String;
    const/16 v19, 0xac

    .line 469
    .restart local v19    # "returnValueInstruction":I
    goto/16 :goto_0

    .line 471
    .end local v4    # "getterMethodName":Ljava/lang/String;
    .end local v19    # "returnValueInstruction":I
    :pswitch_5
    const-string v4, "getFloat"

    .line 472
    .restart local v4    # "getterMethodName":Ljava/lang/String;
    const/16 v19, 0xae

    .line 473
    .restart local v19    # "returnValueInstruction":I
    goto/16 :goto_0

    .line 475
    .end local v4    # "getterMethodName":Ljava/lang/String;
    .end local v19    # "returnValueInstruction":I
    :pswitch_6
    const-string v4, "getLong"

    .line 476
    .restart local v4    # "getterMethodName":Ljava/lang/String;
    const/16 v19, 0xad

    .line 477
    .restart local v19    # "returnValueInstruction":I
    goto/16 :goto_0

    .line 479
    .end local v4    # "getterMethodName":Ljava/lang/String;
    .end local v19    # "returnValueInstruction":I
    :pswitch_7
    const-string v4, "getDouble"

    .line 480
    .restart local v4    # "getterMethodName":Ljava/lang/String;
    const/16 v19, 0xaf

    .line 481
    .restart local v19    # "returnValueInstruction":I
    goto/16 :goto_0

    .line 500
    .restart local v5    # "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    .restart local v13    # "hasAnyBadTypeLabel":Z
    .restart local v14    # "i":I
    .restart local v15    # "labelForInvalidTypes":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .restart local v16    # "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .restart local v18    # "n":I
    :cond_0
    aput-object v15, v16, v14

    .line 501
    const/4 v13, 0x1

    goto :goto_2

    .line 504
    :cond_1
    new-instance v11, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    invoke-direct {v11}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;-><init>()V

    .line 505
    .local v11, "defaultLabel":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v5, v2, v3, v11, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 507
    const/4 v14, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v18

    if-ge v14, v0, :cond_3

    .line 508
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/reflect/Field;

    .line 509
    .local v12, "field":Ljava/lang/reflect/Field;
    aget-object v2, v16, v14

    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 510
    aget-object v2, v16, v14

    invoke-virtual {v5, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 511
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 512
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-virtual {v5, v2, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 513
    const/16 v2, 0xc0

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 514
    const/16 v2, 0xb4

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v5, v2, v0, v3, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 507
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 519
    .end local v12    # "field":Ljava/lang/reflect/Field;
    :cond_3
    if-eqz v13, :cond_4

    .line 520
    invoke-virtual {v5, v15}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 521
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 522
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldType(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;Ljava/lang/String;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    .line 525
    :cond_4
    invoke-virtual {v5, v11}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 526
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 528
    .end local v11    # "defaultLabel":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v13    # "hasAnyBadTypeLabel":Z
    .end local v14    # "i":I
    .end local v15    # "labelForInvalidTypes":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v16    # "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v18    # "n":I
    :cond_5
    invoke-static {v5}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    move-result-object v5

    .line 529
    const/4 v2, 0x3

    move/from16 v0, v17

    invoke-virtual {v5, v0, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 530
    invoke-virtual {v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 531
    return-void

    .line 449
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
    .end packed-switch
.end method

.method private static insertGetString(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 13
    .param p0, "cw"    # Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;
    .param p1, "classNameInternal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p2, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    const/4 v11, 0x6

    .line 306
    .local v11, "maxStack":I
    const/4 v1, 0x1

    const-string v2, "getString"

    const-string v3, "(Ljava/lang/Object;I)Ljava/lang/String;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    move-result-object v0

    .line 307
    .local v0, "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitCode()V

    .line 308
    const/16 v1, 0x15

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 310
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 311
    add-int/lit8 v11, v11, -0x1

    .line 312
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v10, v1, [Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    .line 313
    .local v10, "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    new-instance v9, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    invoke-direct {v9}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;-><init>()V

    .line 314
    .local v9, "labelForInvalidTypes":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    const/4 v7, 0x0

    .line 315
    .local v7, "hasAnyBadTypeLabel":Z
    const/4 v8, 0x0

    .local v8, "i":I
    array-length v12, v10

    .local v12, "n":I
    :goto_0
    if-ge v8, v12, :cond_1

    .line 316
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    new-instance v1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    invoke-direct {v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;-><init>()V

    aput-object v1, v10, v8

    .line 315
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 319
    :cond_0
    aput-object v9, v10, v8

    .line 320
    const/4 v7, 0x1

    goto :goto_1

    .line 323
    :cond_1
    new-instance v6, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    invoke-direct {v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;-><init>()V

    .line 324
    .local v6, "defaultLabel":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    const/4 v1, 0x0

    array-length v2, v10

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2, v6, v10}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 326
    const/4 v8, 0x0

    array-length v12, v10

    :goto_2
    if-ge v8, v12, :cond_3

    .line 327
    aget-object v1, v10, v8

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 328
    aget-object v1, v10, v8

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 329
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 330
    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 331
    const/16 v1, 0xc0

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 332
    const/16 v2, 0xb4

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Ljava/lang/String;"

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 326
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 337
    :cond_3
    if-eqz v7, :cond_4

    .line 338
    invoke-virtual {v0, v9}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 339
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 340
    const-string v1, "String"

    invoke-static {v0, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldType(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;Ljava/lang/String;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    .line 343
    :cond_4
    invoke-virtual {v0, v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 344
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 346
    .end local v6    # "defaultLabel":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v7    # "hasAnyBadTypeLabel":Z
    .end local v8    # "i":I
    .end local v9    # "labelForInvalidTypes":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v10    # "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v12    # "n":I
    :cond_5
    invoke-static {v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    .line 347
    const/4 v1, 0x3

    invoke-virtual {v0, v11, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 348
    invoke-virtual {v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 349
    return-void
.end method

.method private static insertSetObject(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 13
    .param p0, "cw"    # Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;
    .param p1, "classNameInternal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p2, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    const/4 v11, 0x6

    .line 167
    .local v11, "maxStack":I
    const/4 v1, 0x1

    const-string v2, "set"

    const-string v3, "(Ljava/lang/Object;ILjava/lang/Object;)V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    move-result-object v0

    .line 168
    .local v0, "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitCode()V

    .line 169
    const/16 v1, 0x15

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 171
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    add-int/lit8 v11, v11, -0x1

    .line 173
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v10, v1, [Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    .line 174
    .local v10, "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    const/4 v9, 0x0

    .local v9, "i":I
    array-length v12, v10

    .local v12, "n":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 175
    new-instance v1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    invoke-direct {v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;-><init>()V

    aput-object v1, v10, v9

    .line 174
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 176
    :cond_0
    new-instance v6, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    invoke-direct {v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;-><init>()V

    .line 177
    .local v6, "defaultLabel":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    const/4 v1, 0x0

    array-length v2, v10

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2, v6, v10}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 179
    const/4 v9, 0x0

    array-length v12, v10

    :goto_1
    if-ge v9, v12, :cond_1

    .line 180
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    .line 181
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-result-object v8

    .line 183
    .local v8, "fieldType":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;
    aget-object v1, v10, v9

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 184
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 185
    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 186
    const/16 v1, 0xc0

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 187
    const/16 v1, 0x19

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 189
    invoke-virtual {v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getSort()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 230
    :goto_2
    const/16 v1, 0xb5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 179
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 191
    :pswitch_0
    const/16 v1, 0xc0

    const-string v2, "java/lang/Boolean"

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 192
    const/16 v1, 0xb6

    const-string v2, "java/lang/Boolean"

    const-string v3, "booleanValue"

    const-string v4, "()Z"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 195
    :pswitch_1
    const/16 v1, 0xc0

    const-string v2, "java/lang/Byte"

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 196
    const/16 v1, 0xb6

    const-string v2, "java/lang/Byte"

    const-string v3, "byteValue"

    const-string v4, "()B"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 199
    :pswitch_2
    const/16 v1, 0xc0

    const-string v2, "java/lang/Character"

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 200
    const/16 v1, 0xb6

    const-string v2, "java/lang/Character"

    const-string v3, "charValue"

    const-string v4, "()C"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 203
    :pswitch_3
    const/16 v1, 0xc0

    const-string v2, "java/lang/Short"

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 204
    const/16 v1, 0xb6

    const-string v2, "java/lang/Short"

    const-string v3, "shortValue"

    const-string v4, "()S"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 207
    :pswitch_4
    const/16 v1, 0xc0

    const-string v2, "java/lang/Integer"

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 208
    const/16 v1, 0xb6

    const-string v2, "java/lang/Integer"

    const-string v3, "intValue"

    const-string v4, "()I"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 211
    :pswitch_5
    const/16 v1, 0xc0

    const-string v2, "java/lang/Float"

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 212
    const/16 v1, 0xb6

    const-string v2, "java/lang/Float"

    const-string v3, "floatValue"

    const-string v4, "()F"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 215
    :pswitch_6
    const/16 v1, 0xc0

    const-string v2, "java/lang/Long"

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 216
    const/16 v1, 0xb6

    const-string v2, "java/lang/Long"

    const-string v3, "longValue"

    const-string v4, "()J"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 219
    :pswitch_7
    const/16 v1, 0xc0

    const-string v2, "java/lang/Double"

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 220
    const/16 v1, 0xb6

    const-string v2, "java/lang/Double"

    const-string v3, "doubleValue"

    const-string v4, "()D"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 223
    :pswitch_8
    const/16 v1, 0xc0

    invoke-virtual {v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 226
    :pswitch_9
    const/16 v1, 0xc0

    invoke-virtual {v8}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 234
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fieldType":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;
    :cond_1
    invoke-virtual {v0, v6}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 235
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 237
    .end local v6    # "defaultLabel":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v9    # "i":I
    .end local v10    # "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v12    # "n":I
    :cond_2
    invoke-static {v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    move-result-object v0

    .line 238
    const/4 v1, 0x4

    invoke-virtual {v0, v11, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 239
    invoke-virtual {v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 240
    return-void

    .line 189
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
.end method

.method private static insertSetPrimitive(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;)V
    .locals 21
    .param p0, "cw"    # Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;
    .param p1, "classNameInternal"    # Ljava/lang/String;
    .param p3, "primitiveType"    # Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 352
    .local p2, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    const/16 v18, 0x6

    .line 353
    .local v18, "maxStack":I
    const/16 v17, 0x4

    .line 355
    .local v17, "maxLocals":I
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v20

    .line 357
    .local v20, "typeNameInternal":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getSort()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 393
    const-string v4, "set"

    .line 394
    .local v4, "setterMethodName":Ljava/lang/String;
    const/16 v16, 0x19

    .line 397
    .local v16, "loadValueInstruction":I
    :goto_0
    const/4 v3, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(Ljava/lang/Object;I"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")V"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    move-result-object v5

    .line 399
    .local v5, "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    invoke-virtual {v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitCode()V

    .line 400
    const/16 v2, 0x15

    const/4 v3, 0x2

    invoke-virtual {v5, v2, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 403
    add-int/lit8 v18, v18, -0x1

    .line 404
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v15, v2, [Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    .line 405
    .local v15, "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    new-instance v14, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    invoke-direct {v14}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;-><init>()V

    .line 406
    .local v14, "labelForInvalidTypes":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    const/4 v12, 0x0

    .line 407
    .local v12, "hasAnyBadTypeLabel":Z
    const/4 v13, 0x0

    .local v13, "i":I
    array-length v0, v15

    move/from16 v19, v0

    .local v19, "n":I
    :goto_1
    move/from16 v0, v19

    if-ge v13, v0, :cond_1

    .line 408
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    new-instance v2, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    invoke-direct {v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;-><init>()V

    aput-object v2, v15, v13

    .line 407
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 359
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v5    # "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    .end local v12    # "hasAnyBadTypeLabel":Z
    .end local v13    # "i":I
    .end local v14    # "labelForInvalidTypes":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v15    # "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v16    # "loadValueInstruction":I
    .end local v19    # "n":I
    :pswitch_0
    const-string v4, "setBoolean"

    .line 360
    .restart local v4    # "setterMethodName":Ljava/lang/String;
    const/16 v16, 0x15

    .line 361
    .restart local v16    # "loadValueInstruction":I
    goto :goto_0

    .line 363
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v16    # "loadValueInstruction":I
    :pswitch_1
    const-string v4, "setByte"

    .line 364
    .restart local v4    # "setterMethodName":Ljava/lang/String;
    const/16 v16, 0x15

    .line 365
    .restart local v16    # "loadValueInstruction":I
    goto :goto_0

    .line 367
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v16    # "loadValueInstruction":I
    :pswitch_2
    const-string v4, "setChar"

    .line 368
    .restart local v4    # "setterMethodName":Ljava/lang/String;
    const/16 v16, 0x15

    .line 369
    .restart local v16    # "loadValueInstruction":I
    goto :goto_0

    .line 371
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v16    # "loadValueInstruction":I
    :pswitch_3
    const-string v4, "setShort"

    .line 372
    .restart local v4    # "setterMethodName":Ljava/lang/String;
    const/16 v16, 0x15

    .line 373
    .restart local v16    # "loadValueInstruction":I
    goto :goto_0

    .line 375
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v16    # "loadValueInstruction":I
    :pswitch_4
    const-string v4, "setInt"

    .line 376
    .restart local v4    # "setterMethodName":Ljava/lang/String;
    const/16 v16, 0x15

    .line 377
    .restart local v16    # "loadValueInstruction":I
    goto/16 :goto_0

    .line 379
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v16    # "loadValueInstruction":I
    :pswitch_5
    const-string v4, "setFloat"

    .line 380
    .restart local v4    # "setterMethodName":Ljava/lang/String;
    const/16 v16, 0x17

    .line 381
    .restart local v16    # "loadValueInstruction":I
    goto/16 :goto_0

    .line 383
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v16    # "loadValueInstruction":I
    :pswitch_6
    const-string v4, "setLong"

    .line 384
    .restart local v4    # "setterMethodName":Ljava/lang/String;
    const/16 v16, 0x16

    .line 385
    .restart local v16    # "loadValueInstruction":I
    add-int/lit8 v17, v17, 0x1

    .line 386
    goto/16 :goto_0

    .line 388
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v16    # "loadValueInstruction":I
    :pswitch_7
    const-string v4, "setDouble"

    .line 389
    .restart local v4    # "setterMethodName":Ljava/lang/String;
    const/16 v16, 0x18

    .line 390
    .restart local v16    # "loadValueInstruction":I
    add-int/lit8 v17, v17, 0x1

    .line 391
    goto/16 :goto_0

    .line 411
    .restart local v5    # "mv":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    .restart local v12    # "hasAnyBadTypeLabel":Z
    .restart local v13    # "i":I
    .restart local v14    # "labelForInvalidTypes":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .restart local v15    # "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .restart local v19    # "n":I
    :cond_0
    aput-object v14, v15, v13

    .line 412
    const/4 v12, 0x1

    goto :goto_2

    .line 415
    :cond_1
    new-instance v11, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;

    invoke-direct {v11}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;-><init>()V

    .line 416
    .local v11, "defaultLabel":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    const/4 v2, 0x0

    array-length v3, v15

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v5, v2, v3, v11, v15}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 418
    const/4 v13, 0x0

    array-length v0, v15

    move/from16 v19, v0

    :goto_3
    move/from16 v0, v19

    if-ge v13, v0, :cond_3

    .line 419
    aget-object v2, v15, v13

    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 420
    aget-object v2, v15, v13

    invoke-virtual {v5, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 421
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 422
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-virtual {v5, v2, v3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 423
    const/16 v2, 0xc0

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 424
    const/4 v2, 0x3

    move/from16 v0, v16

    invoke-virtual {v5, v0, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 425
    const/16 v3, 0xb5

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v5, v3, v0, v2, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/16 v2, 0xb1

    invoke-virtual {v5, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 418
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 430
    :cond_3
    if-eqz v12, :cond_4

    .line 431
    invoke-virtual {v5, v14}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 432
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 433
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldType(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;Ljava/lang/String;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    .line 436
    :cond_4
    invoke-virtual {v5, v11}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;)V

    .line 437
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 439
    .end local v11    # "defaultLabel":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v12    # "hasAnyBadTypeLabel":Z
    .end local v13    # "i":I
    .end local v14    # "labelForInvalidTypes":Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v15    # "labels":[Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Label;
    .end local v19    # "n":I
    :cond_5
    invoke-static {v5}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    move-result-object v5

    .line 440
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 441
    invoke-virtual {v5}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitEnd()V

    .line 442
    return-void

    .line 357
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
    .end packed-switch
.end method

.method private static insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    .locals 5
    .param p0, "mv"    # Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;

    .prologue
    const/16 v2, 0xbb

    const/16 v4, 0xb7

    const/16 v3, 0xb6

    const/16 v1, 0x59

    .line 534
    const-string v0, "java/lang/IllegalArgumentException"

    invoke-virtual {p0, v2, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 535
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 536
    const-string v0, "java/lang/StringBuilder"

    invoke-virtual {p0, v2, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 537
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 538
    const-string v0, "Field not found: "

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 539
    const-string v0, "java/lang/StringBuilder"

    const-string v1, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const/16 v0, 0x15

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 541
    const-string v0, "java/lang/StringBuilder"

    const-string v1, "append"

    const-string v2, "(I)Ljava/lang/StringBuilder;"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v0, "java/lang/StringBuilder"

    const-string v1, "toString"

    const-string v2, "()Ljava/lang/String;"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v0, "java/lang/IllegalArgumentException"

    const-string v1, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const/16 v0, 0xbf

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 545
    return-object p0
.end method

.method private static insertThrowExceptionForFieldType(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;Ljava/lang/String;)Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    .locals 5
    .param p0, "mv"    # Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;
    .param p1, "fieldType"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xbb

    const/16 v4, 0xb7

    const/16 v3, 0xb6

    const/16 v1, 0x59

    .line 549
    const-string v0, "java/lang/IllegalArgumentException"

    invoke-virtual {p0, v2, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 550
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 551
    const-string v0, "java/lang/StringBuilder"

    invoke-virtual {p0, v2, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 552
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field not declared as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 554
    const-string v0, "java/lang/StringBuilder"

    const-string v1, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const/16 v0, 0x15

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 556
    const-string v0, "java/lang/StringBuilder"

    const-string v1, "append"

    const-string v2, "(I)Ljava/lang/StringBuilder;"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v0, "java/lang/StringBuilder"

    const-string v1, "toString"

    const-string v2, "()Ljava/lang/String;"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v0, "java/lang/IllegalArgumentException"

    const-string v1, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/16 v0, 0xbf

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 560
    return-object p0
.end method


# virtual methods
.method public abstract get(Ljava/lang/Object;I)Ljava/lang/Object;
.end method

.method public get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getBoolean(Ljava/lang/Object;I)Z
.end method

.method public abstract getByte(Ljava/lang/Object;I)B
.end method

.method public abstract getChar(Ljava/lang/Object;I)C
.end method

.method public abstract getDouble(Ljava/lang/Object;I)D
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldTypes:[Ljava/lang/Class;

    array-length v0, v0

    return v0
.end method

.method public getFieldNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getFieldTypes()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public abstract getFloat(Ljava/lang/Object;I)F
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 20
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldNames:[Ljava/lang/String;

    array-length v1, v2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 21
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find public field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract getInt(Ljava/lang/Object;I)I
.end method

.method public abstract getLong(Ljava/lang/Object;I)J
.end method

.method public abstract getShort(Ljava/lang/Object;I)S
.end method

.method public abstract getString(Ljava/lang/Object;I)Ljava/lang/String;
.end method

.method public abstract set(Ljava/lang/Object;ILjava/lang/Object;)V
.end method

.method public set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 27
    return-void
.end method

.method public abstract setBoolean(Ljava/lang/Object;IZ)V
.end method

.method public abstract setByte(Ljava/lang/Object;IB)V
.end method

.method public abstract setChar(Ljava/lang/Object;IC)V
.end method

.method public abstract setDouble(Ljava/lang/Object;ID)V
.end method

.method public abstract setFloat(Ljava/lang/Object;IF)V
.end method

.method public abstract setInt(Ljava/lang/Object;II)V
.end method

.method public abstract setLong(Ljava/lang/Object;IJ)V
.end method

.method public abstract setShort(Ljava/lang/Object;IS)V
.end method
