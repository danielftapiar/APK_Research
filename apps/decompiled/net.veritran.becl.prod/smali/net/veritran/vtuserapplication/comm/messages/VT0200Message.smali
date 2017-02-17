.class public Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;
.super Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;-><init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;->getBuffersList(Lnet/veritran/vtuserapplication/comm/MessageManager;)[I

    move-result-object v0

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    new-array v3, v7, [I

    fill-array-data v3, :array_1

    array-length v4, v0

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v4, v4, [I

    array-length v5, v0

    invoke-static {v0, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v5, v2

    invoke-static {v2, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    move v0, v1

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "A"

    invoke-virtual {v2, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-instance v3, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v3, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v4, "COUNT"

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {v3, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v3}, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getBuffer(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v4, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v5, "ID"

    invoke-virtual {v4, v5}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v4, v7}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {v4, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v4}, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v4, "LEN"

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v7}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v4, "VAL"

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;->manageArrays(Lnet/veritran/vtuserapplication/comm/MessageManager;)V

    const-string v0, "TYP"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "0200"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x2e
        0x2f
        0x66
        0x32
        0x27
    .end array-data

    :array_1
    .array-data 4
        0x71
        0x72
        0x73
    .end array-data
.end method


# virtual methods
.method protected getBuffersList(Lnet/veritran/vtuserapplication/comm/MessageManager;)[I
    .locals 1

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getBuffersList()[I

    move-result-object v0

    return-object v0
.end method

.method protected manageArrays(Lnet/veritran/vtuserapplication/comm/MessageManager;)V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getArraysList()[I

    move-result-object v4

    array-length v5, v4

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "COUNT"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v11}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_4

    aget v1, v4, v3

    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getArrayFieldNames(I)[I

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getArrayFieldValues(I)[Ljava/lang/String;

    move-result-object v7

    array-length v0, v7

    array-length v8, v6

    div-int v8, v0, v8

    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getBufferArrayID(I)I

    move-result v0

    new-instance v9, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v9, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v10, "ARRAY"

    invoke-virtual {v9, v10}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v9, v12}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    if-lez v0, :cond_0

    :goto_1
    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {v9, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v9}, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "ROWS"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v12}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {v0, v8}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "FIELDS"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v11}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    array-length v1, v6

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    move v0, v2

    :goto_2
    array-length v1, v6

    if-ge v0, v1, :cond_1

    new-instance v1, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v1, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v8, "FIELD-ID"

    invoke-virtual {v1, v8}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v1, v11}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    aget v8, v6, v0

    invoke-virtual {v1, v8}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_3
    array-length v1, v7

    if-ge v0, v1, :cond_3

    aget-object v1, v7, v0

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_4
    new-instance v6, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v6, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v8, "LEN"

    invoke-virtual {v6, v8}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v6, v12}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v6}, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v6, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v6, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v8, "VAL"

    invoke-virtual {v6, v8}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {v6, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lnet/veritran/vtuserapplication/comm/messages/VT0200Message;->addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    aget-object v1, v7, v0

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_4
    return-void
.end method
