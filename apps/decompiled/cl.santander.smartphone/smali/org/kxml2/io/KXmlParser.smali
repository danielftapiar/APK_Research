.class public Lorg/kxml2/io/KXmlParser;
.super Ljava/lang/Object;
.source "KXmlParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# static fields
.field private static final ILLEGAL_TYPE:Ljava/lang/String; = "Wrong event type"

.field private static final LEGACY:I = 0x3e7

.field private static final UNEXPECTED_EOF:Ljava/lang/String; = "Unexpected EOF"

.field private static final XML_DECL:I = 0x3e6


# instance fields
.field private attributeCount:I

.field private attributes:[Ljava/lang/String;

.field private column:I

.field private degenerated:Z

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private entityMap:Ljava/util/Hashtable;

.field private error:Ljava/lang/String;

.field private isWhitespace:Z

.field private line:I

.field private location:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private peek:[I

.field private peekCount:I

.field private prefix:Ljava/lang/String;

.field private processNsp:Z

.field private reader:Ljava/io/Reader;

.field private relaxed:Z

.field private srcBuf:[C

.field private srcCount:I

.field private srcPos:I

.field private stackMismatch:I

.field private standalone:Ljava/lang/Boolean;

.field private token:Z

.field private txtBuf:[C

.field private txtPos:I

.field private type:I

.field private unresolved:Z

.field private version:Ljava/lang/String;

.field private wasCR:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v0, 0x80

    const/16 v2, 0x10

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    .line 51
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    .line 52
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    .line 68
    new-array v1, v0, [C

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    .line 82
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 83
    const/4 v1, 0x0

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    .line 90
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    .line 99
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/16 v0, 0x2000

    :cond_0
    new-array v0, v0, [C

    .line 98
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    .line 100
    return-void
.end method

.method private final adjustNsp()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x3a

    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "any":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    if-lt v5, v8, :cond_5

    .line 161
    if-eqz v0, :cond_0

    .line 162
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v5, v8, -0x4

    :goto_1
    if-gez v5, :cond_a

    .line 202
    :cond_0
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 204
    .local v4, "cut":I
    if-nez v4, :cond_1

    .line 205
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "illegal tag name: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 207
    :cond_1
    if-eq v4, v12, :cond_2

    .line 208
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 209
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 212
    :cond_2
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lorg/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 214
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    if-nez v8, :cond_4

    .line 215
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 216
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "undefined prefix: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 217
    :cond_3
    const-string v8, ""

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 220
    :cond_4
    return v0

    .line 118
    .end local v4    # "cut":I
    :cond_5
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 119
    .local v1, "attrName":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 122
    .restart local v4    # "cut":I
    if-eq v4, v12, :cond_7

    .line 123
    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "prefix":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    :goto_2
    const-string v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 134
    const/4 v0, 0x1

    .line 115
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_0

    .line 126
    :cond_7
    const-string v8, "xmlns"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 127
    move-object v7, v1

    .line 128
    .restart local v7    # "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_2

    .line 137
    :cond_8
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    aget v10, v8, v9

    add-int/lit8 v11, v10, 0x1

    aput v11, v8, v9

    shl-int/lit8 v6, v10, 0x1

    .line 139
    .local v6, "j":I
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    invoke-direct {p0, v8, v9}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    .line 140
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aput-object v1, v8, v6

    .line 141
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v11, v5, 0x3

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 143
    if-eqz v1, :cond_9

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x3

    aget-object v8, v8, v9

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 144
    const-string v8, "illegal empty namespace"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 151
    :cond_9
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 152
    add-int/lit8 v9, v5, 0x4

    .line 153
    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 155
    iget v11, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v5

    .line 150
    invoke-static {v8, v9, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    add-int/lit8 v5, v5, -0x4

    goto :goto_3

    .line 164
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v4    # "cut":I
    .end local v6    # "j":I
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 165
    .restart local v1    # "attrName":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 167
    .restart local v4    # "cut":I
    if-nez v4, :cond_b

    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v8, :cond_b

    .line 168
    new-instance v8, Ljava/lang/RuntimeException;

    .line 169
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "illegal attribute name: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 168
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 171
    :cond_b
    if-eq v4, v12, :cond_d

    .line 172
    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "attrPrefix":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {p0, v3}, Lorg/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "attrNs":Ljava/lang/String;
    if-nez v2, :cond_c

    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v8, :cond_c

    .line 179
    new-instance v8, Ljava/lang/RuntimeException;

    .line 180
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Undefined Prefix: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 179
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 182
    :cond_c
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aput-object v2, v8, v5

    .line 183
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    aput-object v3, v8, v9

    .line 184
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aput-object v1, v8, v9

    .line 162
    .end local v2    # "attrNs":Ljava/lang/String;
    .end local v3    # "attrPrefix":Ljava/lang/String;
    :cond_d
    add-int/lit8 v5, v5, -0x4

    goto/16 :goto_1
.end method

.method private final ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "required"    # I

    .prologue
    const/4 v2, 0x0

    .line 224
    array-length v1, p1

    if-lt v1, p2, :cond_0

    .line 228
    .end local p1    # "arr":[Ljava/lang/String;
    :goto_0
    return-object p1

    .line 226
    .restart local p1    # "arr":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, p2, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .line 227
    .local v0, "bigger":[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 228
    goto :goto_0
.end method

.method private final error(Ljava/lang/String;)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 232
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERR: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final exception(Ljava/lang/String;)V
    .locals 4
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x64

    .line 241
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 242
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 244
    .end local p1    # "desc":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 241
    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 242
    .restart local p1    # "desc":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private final get(I)Ljava/lang/String;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 574
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private final isProp(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .param p1, "n1"    # Ljava/lang/String;
    .param p2, "prop"    # Z
    .param p3, "n2"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, "http://xmlpull.org/v1/doc/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    .line 105
    :cond_0
    if-eqz p2, :cond_1

    .line 106
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 108
    :cond_1
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private final nextImpl()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 253
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-nez v4, :cond_0

    .line 254
    const-string v4, "No Input specified"

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 256
    :cond_0
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v4, v7, :cond_1

    .line 257
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    .line 260
    :cond_1
    iput v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 265
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    if-eqz v4, :cond_3

    .line 266
    iput-boolean v2, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 267
    iput v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 334
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 272
    :cond_3
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 276
    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 277
    const/16 v2, 0x9

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_0

    .line 274
    :cond_4
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    .end local v0    # "i":I
    :cond_5
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v4, :cond_8

    .line 283
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    if-gtz v4, :cond_6

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v4

    if-ne v4, v8, :cond_8

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-lez v4, :cond_8

    .line 284
    :cond_6
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v1, v2, 0x2

    .line 285
    .local v1, "sp":I
    iput v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 286
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 287
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v2, v2, v4

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 288
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    aget-object v2, v2, v4

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 289
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    if-eq v2, v3, :cond_7

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "missing end tag /"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inserted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 291
    :cond_7
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    if-lez v2, :cond_2

    .line 292
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    goto :goto_0

    .line 296
    .end local v1    # "sp":I
    :cond_8
    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 297
    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 298
    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 301
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekType()I

    move-result v4

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 303
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    packed-switch v4, :pswitch_data_0

    .line 332
    :pswitch_1
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->parseLegacy(Z)I

    move-result v4

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 333
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/16 v5, 0x3e6

    if-eq v4, v5, :cond_1

    goto/16 :goto_0

    .line 306
    :pswitch_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->pushEntity()V

    goto/16 :goto_0

    .line 310
    :pswitch_3
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->parseStartTag(Z)V

    goto/16 :goto_0

    .line 314
    :pswitch_4
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->parseEndTag()V

    goto/16 :goto_0

    .line 321
    :pswitch_5
    const/16 v4, 0x3c

    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    if-eqz v5, :cond_9

    :goto_2
    invoke-direct {p0, v4, v2}, Lorg/kxml2/io/KXmlParser;->pushText(IZ)V

    .line 322
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v2, :cond_2

    .line 323
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v2, :cond_2

    .line 324
    const/4 v2, 0x7

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto/16 :goto_0

    :cond_9
    move v2, v3

    .line 321
    goto :goto_2

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final parseDoctype(Z)V
    .locals 4
    .param p1, "push"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 475
    const/4 v1, 0x1

    .line 476
    .local v1, "nesting":I
    const/4 v2, 0x0

    .line 481
    .local v2, "quoted":Z
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v0

    .line 482
    .local v0, "i":I
    sparse-switch v0, :sswitch_data_0

    .line 504
    :cond_1
    :goto_1
    if-eqz p1, :cond_0

    .line 505
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->push(I)V

    goto :goto_0

    .line 485
    :sswitch_0
    const-string v3, "Unexpected EOF"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 500
    :goto_2
    return-void

    .line 489
    :sswitch_1
    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 490
    :goto_3
    goto :goto_1

    .line 489
    :cond_2
    const/4 v2, 0x1

    goto :goto_3

    .line 493
    :sswitch_2
    if-nez v2, :cond_1

    .line 494
    add-int/lit8 v1, v1, 0x1

    .line 495
    goto :goto_1

    .line 498
    :sswitch_3
    if-nez v2, :cond_1

    .line 499
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_1

    goto :goto_2

    .line 482
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x27 -> :sswitch_1
        0x3c -> :sswitch_2
        0x3e -> :sswitch_3
    .end sparse-switch
.end method

.method private final parseEndTag()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x9

    .line 514
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 515
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 516
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 517
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 518
    const/16 v2, 0x3e

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 520
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v1, v2, 0x2

    .line 522
    .local v1, "sp":I
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v2, :cond_0

    .line 523
    const-string v2, "element stack empty"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 524
    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 550
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected: /"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 533
    move v0, v1

    .line 534
    .local v0, "probe":I
    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 539
    :cond_1
    if-gez v0, :cond_3

    .line 540
    const/4 v2, 0x0

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    .line 542
    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_0

    .line 535
    :cond_2
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    .line 536
    add-int/lit8 v0, v0, -0x4

    goto :goto_1

    .line 547
    .end local v0    # "probe":I
    :cond_3
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 548
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 549
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private final parseLegacy(Z)I
    .locals 11
    .param p1, "push"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 342
    const-string v4, ""

    .line 345
    .local v4, "req":Ljava/lang/String;
    const/4 v3, 0x0

    .line 347
    .local v3, "prev":I
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 348
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v0

    .line 350
    .local v0, "c":I
    const/16 v8, 0x3f

    if-ne v0, v8, :cond_f

    .line 351
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x78

    if-eq v8, v9, :cond_0

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x58

    if-ne v8, v9, :cond_e

    .line 352
    :cond_0
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x6d

    if-eq v8, v9, :cond_1

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x4d

    if-ne v8, v9, :cond_e

    .line 354
    :cond_1
    if-eqz p1, :cond_2

    .line 355
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 356
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 358
    :cond_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 359
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 361
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x6c

    if-eq v8, v9, :cond_3

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x4c

    if-ne v8, v9, :cond_e

    :cond_3
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x20

    if-gt v8, v9, :cond_e

    .line 363
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->line:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    iget v8, p0, Lorg/kxml2/io/KXmlParser;->column:I

    const/4 v9, 0x4

    if-le v8, v9, :cond_5

    .line 364
    :cond_4
    const-string v8, "PI must not start with xml"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 366
    :cond_5
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->parseStartTag(Z)V

    .line 368
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    const/4 v9, 0x1

    if-lt v8, v9, :cond_6

    const-string v8, "version"

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 369
    :cond_6
    const-string v8, "version expected"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 371
    :cond_7
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 373
    const/4 v2, 0x1

    .line 375
    .local v2, "pos":I
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge v2, v8, :cond_8

    .line 376
    const-string v8, "encoding"

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v10, 0x6

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 377
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v9, 0x7

    aget-object v8, v8, v9

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 378
    add-int/lit8 v2, v2, 0x1

    .line 381
    :cond_8
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge v2, v8, :cond_9

    .line 382
    const-string v8, "standalone"

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v10, v2, 0x4

    add-int/lit8 v10, v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 383
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v9, v2, 0x4

    add-int/lit8 v9, v9, 0x3

    aget-object v6, v8, v9

    .line 384
    .local v6, "st":Ljava/lang/String;
    const-string v8, "yes"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 385
    new-instance v8, Ljava/lang/Boolean;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    .line 390
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 393
    .end local v6    # "st":Ljava/lang/String;
    :cond_9
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-eq v2, v8, :cond_a

    .line 394
    const-string v8, "illegal xmldecl"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 396
    :cond_a
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 397
    const/4 v8, 0x0

    iput v8, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 399
    const/16 v5, 0x3e6

    .line 467
    .end local v2    # "pos":I
    :cond_b
    :goto_1
    return v5

    .line 386
    .restart local v2    # "pos":I
    .restart local v6    # "st":Ljava/lang/String;
    :cond_c
    const-string v8, "no"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 387
    new-instance v8, Ljava/lang/Boolean;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_0

    .line 389
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "illegal standalone value: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    .end local v2    # "pos":I
    .end local v6    # "st":Ljava/lang/String;
    :cond_e
    const/16 v7, 0x3f

    .line 408
    .local v7, "term":I
    const/16 v5, 0x8

    .line 433
    .local v5, "result":I
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v1, v8, :cond_13

    .line 436
    const/16 v8, 0xa

    if-ne v5, v8, :cond_15

    .line 437
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlParser;->parseDoctype(Z)V

    goto :goto_1

    .line 410
    .end local v1    # "i":I
    .end local v5    # "result":I
    .end local v7    # "term":I
    :cond_f
    const/16 v8, 0x21

    if-ne v0, v8, :cond_12

    .line 411
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_10

    .line 412
    const/16 v5, 0x9

    .line 413
    .restart local v5    # "result":I
    const-string v4, "--"

    .line 414
    const/16 v7, 0x2d

    .restart local v7    # "term":I
    goto :goto_2

    .line 416
    .end local v5    # "result":I
    .end local v7    # "term":I
    :cond_10
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_11

    .line 417
    const/4 v5, 0x5

    .line 418
    .restart local v5    # "result":I
    const-string v4, "[CDATA["

    .line 419
    const/16 v7, 0x5d

    .line 420
    .restart local v7    # "term":I
    const/4 p1, 0x1

    goto :goto_2

    .line 423
    .end local v5    # "result":I
    .end local v7    # "term":I
    :cond_11
    const/16 v5, 0xa

    .line 424
    .restart local v5    # "result":I
    const-string v4, "DOCTYPE"

    .line 425
    const/4 v7, -0x1

    .restart local v7    # "term":I
    goto :goto_2

    .line 429
    .end local v5    # "result":I
    .end local v7    # "term":I
    :cond_12
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "illegal: <"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 430
    const/16 v5, 0x9

    goto :goto_1

    .line 434
    .restart local v1    # "i":I
    .restart local v5    # "result":I
    .restart local v7    # "term":I
    :cond_13
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 454
    :cond_14
    move v3, v0

    .line 440
    :cond_15
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v0

    .line 441
    const/4 v8, -0x1

    if-ne v0, v8, :cond_16

    .line 442
    const-string v8, "Unexpected EOF"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 443
    const/16 v5, 0x9

    goto/16 :goto_1

    .line 446
    :cond_16
    if-eqz p1, :cond_17

    .line 447
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 449
    :cond_17
    const/16 v8, 0x3f

    if-eq v7, v8, :cond_18

    if-ne v0, v7, :cond_14

    .line 450
    :cond_18
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    if-ne v8, v7, :cond_14

    .line 451
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_14

    .line 457
    const/16 v8, 0x2d

    if-ne v7, v8, :cond_19

    const/16 v8, 0x2d

    if-ne v3, v8, :cond_19

    .line 458
    const-string v8, "illegal comment delimiter: --->"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 460
    :cond_19
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 461
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 463
    if-eqz p1, :cond_b

    const/16 v8, 0x3f

    if-eq v7, v8, :cond_b

    .line 464
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    goto/16 :goto_1
.end method

.method private final parseStartTag(Z)V
    .locals 14
    .param p1, "xmldecl"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x3d

    const/4 v12, 0x1

    const/16 v10, 0x3e

    const/4 v11, 0x0

    .line 603
    if-nez p1, :cond_0

    .line 604
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 605
    :cond_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 606
    iput v11, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 609
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 611
    invoke-direct {p0, v11}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v2

    .line 613
    .local v2, "c":I
    if-eqz p1, :cond_2

    .line 614
    const/16 v8, 0x3f

    if-ne v2, v8, :cond_5

    .line 615
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 616
    invoke-direct {p0, v10}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 717
    :goto_1
    return-void

    .line 621
    :cond_2
    const/16 v8, 0x2f

    if-ne v2, v8, :cond_4

    .line 622
    iput-boolean v12, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 623
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 624
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 625
    invoke-direct {p0, v10}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 686
    :goto_2
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    shl-int/lit8 v7, v8, 0x2

    .line 688
    .local v7, "sp":I
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v9, v7, 0x4

    invoke-direct {p0, v8, v9}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    .line 689
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v9, v7, 0x3

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    .line 691
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    array-length v9, v9

    if-lt v8, v9, :cond_3

    .line 692
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v8, v8, 0x4

    new-array v1, v8, [I

    .line 693
    .local v1, "bigger":[I
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    array-length v9, v9

    invoke-static {v8, v11, v1, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    .line 697
    .end local v1    # "bigger":[I
    :cond_3
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v11, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    aput v10, v8, v9

    .line 709
    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    if-eqz v8, :cond_a

    .line 710
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->adjustNsp()Z

    .line 714
    :goto_3
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    aput-object v9, v8, v7

    .line 715
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v9, v7, 0x1

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    aput-object v10, v8, v9

    .line 716
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v9, v7, 0x2

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    goto :goto_1

    .line 629
    .end local v7    # "sp":I
    :cond_4
    if-ne v2, v10, :cond_5

    if-nez p1, :cond_5

    .line 630
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    goto :goto_2

    .line 635
    :cond_5
    const/4 v8, -0x1

    if-ne v2, v8, :cond_6

    .line 636
    const-string v8, "Unexpected EOF"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 641
    :cond_6
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "attrName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    .line 644
    const-string v8, "attr name expected"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 649
    :cond_7
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v4, v8, 0x2

    .line 651
    .local v4, "i":I
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v4, 0x4

    invoke-direct {p0, v8, v9}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 653
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    const-string v9, ""

    aput-object v9, v8, v4

    .line 654
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/4 v9, 0x0

    aput-object v9, v8, v5

    .line 655
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aput-object v0, v8, v4

    .line 657
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 659
    invoke-direct {p0, v11}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    if-eq v8, v13, :cond_8

    .line 660
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Attr.value missing f. "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 661
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const-string v9, "1"

    aput-object v9, v8, v5

    goto/16 :goto_0

    .line 664
    :cond_8
    invoke-direct {p0, v13}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 665
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 666
    invoke-direct {p0, v11}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v3

    .line 668
    .local v3, "delimiter":I
    const/16 v8, 0x27

    if-eq v3, v8, :cond_9

    const/16 v8, 0x22

    if-eq v3, v8, :cond_9

    .line 669
    const-string v8, "attr value delimiter missing!"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 670
    const/16 v3, 0x20

    .line 675
    :goto_4
    iget v6, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 676
    .local v6, "p":I
    invoke-direct {p0, v3, v12}, Lorg/kxml2/io/KXmlParser;->pushText(IZ)V

    .line 678
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lorg/kxml2/io/KXmlParser;->get(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 679
    iput v6, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 681
    const/16 v8, 0x20

    if-eq v3, v8, :cond_1

    .line 682
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    goto/16 :goto_0

    .line 673
    .end local v6    # "p":I
    :cond_9
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    goto :goto_4

    .line 712
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v3    # "delimiter":I
    .end local v5    # "i":I
    .restart local v7    # "sp":I
    :cond_a
    const-string v8, ""

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method private final peek(I)I
    .locals 7
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 863
    :goto_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    if-ge p1, v1, :cond_0

    .line 897
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    aget v1, v1, p1

    return v1

    .line 867
    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    array-length v1, v1

    if-gt v1, v5, :cond_1

    .line 868
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 881
    .local v0, "nw":I
    :goto_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 882
    iput-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->wasCR:Z

    .line 883
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    aput v6, v1, v2

    goto :goto_0

    .line 869
    .end local v0    # "nw":I
    :cond_1
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->srcPos:I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    if-ge v1, v2, :cond_2

    .line 870
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->srcPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->srcPos:I

    aget-char v0, v1, v2

    .restart local v0    # "nw":I
    goto :goto_1

    .line 872
    .end local v0    # "nw":I
    :cond_2
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    .line 873
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    if-gtz v1, :cond_3

    .line 874
    const/4 v0, -0x1

    .line 878
    .restart local v0    # "nw":I
    :goto_2
    iput v5, p0, Lorg/kxml2/io/KXmlParser;->srcPos:I

    goto :goto_1

    .line 876
    .end local v0    # "nw":I
    :cond_3
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    aget-char v0, v1, v4

    .restart local v0    # "nw":I
    goto :goto_2

    .line 886
    :cond_4
    if-ne v0, v6, :cond_6

    .line 887
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->wasCR:Z

    if-nez v1, :cond_5

    .line 888
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    aput v6, v1, v2

    .line 893
    :cond_5
    :goto_3
    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->wasCR:Z

    goto :goto_0

    .line 891
    :cond_6
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    aput v0, v1, v2

    goto :goto_3
.end method

.method private final peekType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 553
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 569
    const/4 v0, 0x4

    :goto_0
    :sswitch_0
    return v0

    .line 557
    :sswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 559
    :sswitch_2
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 566
    const/4 v0, 0x2

    goto :goto_0

    .line 561
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 564
    :sswitch_4
    const/16 v0, 0x3e7

    goto :goto_0

    .line 553
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_2
    .end sparse-switch

    .line 559
    :sswitch_data_1
    .sparse-switch
        0x21 -> :sswitch_4
        0x2f -> :sswitch_3
        0x3f -> :sswitch_4
    .end sparse-switch
.end method

.method private final push(I)V
    .locals 4
    .param p1, "c"    # I

    .prologue
    const/4 v2, 0x0

    .line 587
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    const/16 v1, 0x20

    if-gt p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v1, v3

    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 589
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    array-length v3, v3

    if-ne v1, v3, :cond_0

    .line 590
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x4

    new-array v0, v1, [C

    .line 591
    .local v0, "bigger":[C
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    .line 595
    .end local v0    # "bigger":[C
    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 596
    return-void

    :cond_1
    move v1, v2

    .line 587
    goto :goto_0
.end method

.method private final pushEntity()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x23

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 726
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v7

    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 729
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 732
    .local v3, "pos":I
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v0

    .line 733
    .local v0, "c":I
    const/16 v7, 0x3b

    if-ne v0, v7, :cond_2

    .line 754
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, "code":Ljava/lang/String;
    add-int/lit8 v7, v3, -0x1

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 756
    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    if-eqz v7, :cond_0

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_0

    .line 757
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 760
    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_9

    .line 762
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x78

    if-ne v6, v7, :cond_8

    .line 763
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 765
    :goto_1
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 781
    .end local v1    # "code":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 735
    :cond_2
    const/16 v7, 0x80

    if-ge v0, v7, :cond_7

    .line 736
    const/16 v7, 0x30

    if-lt v0, v7, :cond_3

    const/16 v7, 0x39

    if-le v0, v7, :cond_7

    .line 737
    :cond_3
    const/16 v7, 0x61

    if-lt v0, v7, :cond_4

    const/16 v7, 0x7a

    if-le v0, v7, :cond_7

    .line 738
    :cond_4
    const/16 v7, 0x41

    if-lt v0, v7, :cond_5

    const/16 v7, 0x5a

    if-le v0, v7, :cond_7

    .line 739
    :cond_5
    const/16 v7, 0x5f

    if-eq v0, v7, :cond_7

    .line 740
    const/16 v7, 0x2d

    if-eq v0, v7, :cond_7

    .line 741
    if-eq v0, v9, :cond_7

    .line 742
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v5, :cond_6

    .line 743
    const-string v5, "unterminated entity ref"

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 746
    :cond_6
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 747
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->push(I)V

    goto :goto_2

    .line 751
    :cond_7
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->push(I)V

    goto :goto_0

    .line 764
    .restart local v1    # "code":Ljava/lang/String;
    :cond_8
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 769
    :cond_9
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    invoke-virtual {v7, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 771
    .local v4, "result":Ljava/lang/String;
    if-nez v4, :cond_a

    :goto_3
    iput-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    .line 773
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    if-eqz v5, :cond_b

    .line 774
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    if-nez v5, :cond_1

    .line 775
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unresolved: &"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move v5, v6

    .line 771
    goto :goto_3

    .line 778
    :cond_b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 779
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 778
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private final pushText(IZ)V
    .locals 8
    .param p1, "delimiter"    # I
    .param p2, "resolveEntities"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5d

    const/16 v6, 0x3e

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/16 v3, 0x20

    .line 792
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v1

    .line 793
    .local v1, "next":I
    const/4 v0, 0x0

    .line 795
    .local v0, "cbrCount":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-ne v1, p1, :cond_1

    .line 824
    :cond_0
    return-void

    .line 797
    :cond_1
    if-ne p1, v3, :cond_2

    .line 798
    if-le v1, v3, :cond_0

    if-eq v1, v6, :cond_0

    .line 801
    :cond_2
    const/16 v2, 0x26

    if-ne v1, v2, :cond_4

    .line 802
    if-eqz p2, :cond_0

    .line 805
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->pushEntity()V

    .line 814
    :goto_1
    if-ne v1, v6, :cond_3

    if-lt v0, v5, :cond_3

    if-eq p1, v7, :cond_3

    .line 815
    const-string v2, "Illegal: ]]>"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 817
    :cond_3
    if-ne v1, v7, :cond_6

    .line 818
    add-int/lit8 v0, v0, 0x1

    .line 822
    :goto_2
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v1

    goto :goto_0

    .line 807
    :cond_4
    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v2, v5, :cond_5

    .line 808
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 809
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->push(I)V

    goto :goto_1

    .line 812
    :cond_5
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->push(I)V

    goto :goto_1

    .line 820
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private final read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 836
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    if-nez v1, :cond_1

    .line 837
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    .line 846
    .local v0, "result":I
    :goto_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    .line 848
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->column:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->column:I

    .line 850
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 852
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->line:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->line:I

    .line 853
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->column:I

    .line 856
    :cond_0
    return v0

    .line 839
    .end local v0    # "result":I
    :cond_1
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    aget v0, v1, v3

    .line 840
    .restart local v0    # "result":I
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    aget v2, v2, v4

    aput v2, v1, v3

    goto :goto_0
.end method

.method private final read(C)V
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 828
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v0

    .line 829
    .local v0, "a":I
    if-eq v0, p1, :cond_0

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' actual: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 831
    :cond_0
    return-void
.end method

.method private final readName()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5f

    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/16 v5, 0x3a

    const/4 v4, 0x0

    .line 903
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 904
    .local v1, "pos":I
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    .line 905
    .local v0, "c":I
    const/16 v3, 0x61

    if-lt v0, v3, :cond_0

    const/16 v3, 0x7a

    if-le v0, v3, :cond_2

    .line 906
    :cond_0
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    .line 907
    :cond_1
    if-eq v0, v8, :cond_2

    .line 908
    if-eq v0, v5, :cond_2

    .line 909
    const/16 v3, 0xc0

    if-ge v0, v3, :cond_2

    .line 910
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v3, :cond_2

    .line 911
    const-string v3, "name expected"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 914
    :cond_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 915
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    .line 917
    const/16 v3, 0x61

    if-lt v0, v3, :cond_3

    const/16 v3, 0x7a

    if-le v0, v3, :cond_2

    .line 918
    :cond_3
    if-lt v0, v6, :cond_4

    if-le v0, v7, :cond_2

    .line 919
    :cond_4
    const/16 v3, 0x30

    if-lt v0, v3, :cond_5

    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    .line 920
    :cond_5
    if-eq v0, v8, :cond_2

    .line 921
    const/16 v3, 0x2d

    if-eq v0, v3, :cond_2

    .line 922
    if-eq v0, v5, :cond_2

    .line 923
    const/16 v3, 0x2e

    if-eq v0, v3, :cond_2

    .line 924
    const/16 v3, 0xb7

    if-ge v0, v3, :cond_2

    .line 926
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 927
    .local v2, "result":Ljava/lang/String;
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 928
    return-object v2
.end method

.method private final skip()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 934
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    .line 935
    .local v0, "c":I
    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 939
    :cond_0
    return-void

    .line 937
    :cond_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    goto :goto_0
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1110
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 1111
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "entity replacement text must be defined after setInput!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1112
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 1268
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1286
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 1287
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1288
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1280
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 1281
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1282
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1292
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 1293
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1294
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1272
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1298
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 1299
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1300
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1305
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, -0x4

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 1311
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 1306
    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1307
    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1308
    :cond_1
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    goto :goto_1

    .line 1305
    :cond_2
    add-int/lit8 v0, v0, -0x4

    goto :goto_0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 1218
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->column:I

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 1158
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1315
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1096
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1097
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    .line 1101
    :cond_0
    :goto_0
    return v0

    .line 1098
    :cond_1
    const-string v1, "relaxed"

    invoke-direct {p0, p1, v0, v1}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1099
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 1214
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->line:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1141
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1142
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 1154
    :goto_0
    return-object v1

    .line 1143
    :cond_0
    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1144
    const-string v1, "http://www.w3.org/2000/xmlns/"

    goto :goto_0

    .line 1146
    :cond_1
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    invoke-virtual {p0, v1}, Lorg/kxml2/io/KXmlParser;->getNamespaceCount(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_2

    .line 1154
    const/4 v1, 0x0

    goto :goto_0

    .line 1147
    :cond_2
    if-nez p1, :cond_3

    .line 1148
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_4

    .line 1149
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 1151
    :cond_3
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1152
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 1146
    :cond_4
    add-int/lit8 v0, v0, -0x2

    goto :goto_1
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .param p1, "depth"    # I

    .prologue
    .line 1126
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-le p1, v0, :cond_0

    .line 1127
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1128
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 1132
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 1136
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x10

    const/4 v6, 0x3

    .line 1164
    new-instance v0, Ljava/lang/StringBuffer;

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    sget-object v5, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_6

    sget-object v4, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    aget-object v4, v4, v5

    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1165
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1167
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v4, v6, :cond_9

    .line 1168
    :cond_0
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    if-eqz v4, :cond_1

    .line 1169
    const-string v4, "(empty) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1170
    :cond_1
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1171
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v4, v6, :cond_2

    .line 1172
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1174
    :cond_2
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1175
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1176
    :cond_3
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1178
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v1, v4, 0x2

    .line 1179
    .local v1, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_7

    .line 1187
    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1201
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_4
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->line:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->column:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1202
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/Object;

    if-eqz v4, :cond_d

    .line 1203
    const-string v4, " in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1204
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1210
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1164
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_6
    const-string v4, "unknown"

    goto/16 :goto_0

    .line 1180
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "cnt":I
    .restart local v2    # "i":I
    :cond_7
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1181
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_8

    .line 1183
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1182
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1184
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x2

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1179
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_1

    .line 1189
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_9
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_4

    .line 1190
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_a

    .line 1191
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1192
    :cond_a
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v4, :cond_b

    .line 1193
    const-string v4, "(whitespace)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1195
    :cond_b
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 1196
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_c

    .line 1197
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1198
    :cond_c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1206
    .end local v3    # "text":Ljava/lang/String;
    :cond_d
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-eqz v4, :cond_5

    .line 1207
    const-string v4, " in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1208
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1116
    const-string v0, "xmldecl-version"

    invoke-direct {p0, p1, v1, v0}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 1122
    :goto_0
    return-object v0

    .line 1118
    :cond_0
    const-string v0, "xmldecl-standalone"

    invoke-direct {p0, p1, v1, v0}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1119
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_0

    .line 1120
    :cond_1
    const-string v0, "location"

    invoke-direct {p0, p1, v1, v0}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1121
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1122
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1228
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 1229
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1228
    :goto_0
    return-object v0

    .line 1229
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->get(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextCharacters([I)[C
    .locals 5
    .param p1, "poslen"    # [I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1233
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 1234
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1235
    aput v2, p1, v2

    .line 1236
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput v0, p1, v3

    .line 1237
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1246
    :goto_0
    return-object v0

    .line 1239
    :cond_0
    aput v2, p1, v2

    .line 1240
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    aput v0, p1, v3

    .line 1241
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    goto :goto_0

    .line 1244
    :cond_1
    aput v4, p1, v2

    .line 1245
    aput v4, p1, v3

    .line 1246
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1276
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1262
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1263
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1264
    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    return v0
.end method

.method public isWhitespace()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1222
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1223
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1224
    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    return v0
.end method

.method public next()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 1320
    iput v3, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 1321
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 1322
    const/16 v0, 0x270f

    .line 1323
    .local v0, "minType":I
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    .line 1326
    :cond_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->nextImpl()V

    .line 1327
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ge v1, v0, :cond_1

    .line 1328
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 1331
    :cond_1
    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1332
    if-lt v0, v2, :cond_2

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekType()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 1334
    :cond_2
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 1335
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-le v1, v2, :cond_3

    .line 1336
    iput v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 1338
    :cond_3
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v1
.end method

.method public nextTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1356
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 1357
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v0, :cond_0

    .line 1358
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 1360
    :cond_0
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1361
    const-string v0, "unexpected type"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1363
    :cond_1
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1377
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1378
    const-string v1, "precondition: START_TAG"

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1380
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 1384
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1385
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1386
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 1391
    :goto_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 1392
    const-string v1, "END_TAG expected"

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1394
    :cond_1
    return-object v0

    .line 1389
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public nextToken()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1343
    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 1344
    const/4 v0, 0x0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 1346
    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    .line 1347
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->nextImpl()V

    .line 1348
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1369
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne p1, v0, :cond_1

    .line 1370
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1371
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1373
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1372
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1374
    :cond_2
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1399
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1400
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    .line 1405
    :goto_0
    return-void

    .line 1401
    :cond_0
    const/4 v0, 0x0

    const-string v1, "relaxed"

    invoke-direct {p0, p1, v0, v1}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1402
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    goto :goto_0

    .line 1404
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unsupported feature: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 17
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "_enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 976
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->srcPos:I

    .line 977
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    .line 978
    move-object/from16 v5, p2

    .line 980
    .local v5, "enc":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 981
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 985
    :cond_0
    if-nez v5, :cond_3

    .line 988
    const/4 v2, 0x0

    .line 990
    .local v2, "chk":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget v12, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    const/4 v13, 0x4

    if-lt v12, v13, :cond_5

    .line 998
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_3

    .line 999
    sparse-switch v2, :sswitch_data_0

    .line 1058
    :cond_2
    :goto_1
    const/high16 v12, -0x10000

    and-int/2addr v12, v2

    const/high16 v13, -0x1010000

    if-ne v12, v13, :cond_9

    .line 1059
    const-string v5, "UTF-16BE"

    .line 1060
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    const/4 v13, 0x0

    .line 1061
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    const/4 v15, 0x2

    aget-char v14, v14, v15

    shl-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    const/16 v16, 0x3

    aget-char v15, v15, v16

    or-int/2addr v14, v15

    int-to-char v14, v14

    .line 1060
    aput-char v14, v12, v13

    .line 1062
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    .line 1079
    .end local v2    # "chk":I
    :cond_3
    :goto_2
    if-nez v5, :cond_4

    .line 1080
    const-string v5, "UTF-8"

    .line 1082
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    .line 1083
    .local v11, "sc":I
    new-instance v12, Ljava/io/InputStreamReader;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/Reader;)V

    .line 1084
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 1085
    move-object/from16 v0, p0

    iput v11, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    .line 1093
    return-void

    .line 991
    .end local v11    # "sc":I
    .restart local v2    # "chk":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 992
    .local v6, "i":I
    const/4 v12, -0x1

    if-eq v6, v12, :cond_1

    .line 994
    shl-int/lit8 v12, v2, 0x8

    or-int v2, v12, v6

    .line 995
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object/from16 v0, p0

    iget v13, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    int-to-char v14, v6

    aput-char v14, v12, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1087
    .end local v2    # "chk":I
    .end local v6    # "i":I
    :catch_0
    move-exception v4

    .line 1088
    .local v4, "e":Ljava/lang/Exception;
    new-instance v12, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1089
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Invalid stream or encoding: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1088
    move-object/from16 v0, p0

    invoke-direct {v12, v13, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v12

    .line 1001
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "chk":I
    :sswitch_0
    :try_start_1
    const-string v5, "UTF-32BE"

    .line 1002
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto :goto_2

    .line 1006
    :sswitch_1
    const-string v5, "UTF-32LE"

    .line 1007
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto :goto_2

    .line 1011
    :sswitch_2
    const-string v5, "UTF-32BE"

    .line 1012
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    const/4 v13, 0x0

    const/16 v14, 0x3c

    aput-char v14, v12, v13

    .line 1013
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto :goto_2

    .line 1017
    :sswitch_3
    const-string v5, "UTF-32LE"

    .line 1018
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    const/4 v13, 0x0

    const/16 v14, 0x3c

    aput-char v14, v12, v13

    .line 1019
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto/16 :goto_2

    .line 1023
    :sswitch_4
    const-string v5, "UTF-16BE"

    .line 1024
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    const/4 v13, 0x0

    const/16 v14, 0x3c

    aput-char v14, v12, v13

    .line 1025
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    const/4 v13, 0x1

    const/16 v14, 0x3f

    aput-char v14, v12, v13

    .line 1026
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto/16 :goto_2

    .line 1030
    :sswitch_5
    const-string v5, "UTF-16LE"

    .line 1031
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    const/4 v13, 0x0

    const/16 v14, 0x3c

    aput-char v14, v12, v13

    .line 1032
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    const/4 v13, 0x1

    const/16 v14, 0x3f

    aput-char v14, v12, v13

    .line 1033
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto/16 :goto_2

    .line 1038
    :cond_6
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1039
    .restart local v6    # "i":I
    const/4 v12, -0x1

    if-eq v6, v12, :cond_2

    .line 1041
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object/from16 v0, p0

    iget v13, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    int-to-char v14, v6

    aput-char v14, v12, v13

    .line 1042
    const/16 v12, 0x3e

    if-ne v6, v12, :cond_6

    .line 1043
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    invoke-direct {v10, v12, v13, v14}, Ljava/lang/String;-><init>([CII)V

    .line 1044
    .local v10, "s":Ljava/lang/String;
    const-string v12, "encoding"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1045
    .local v7, "i0":I
    const/4 v12, -0x1

    if-eq v7, v12, :cond_2

    move v8, v7

    .line 1046
    .end local v7    # "i0":I
    .local v8, "i0":I
    :goto_3
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x22

    if-eq v12, v13, :cond_7

    .line 1047
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x27

    if-ne v12, v13, :cond_8

    .line 1049
    :cond_7
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i0":I
    .restart local v7    # "i0":I
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1050
    .local v3, "deli":C
    invoke-virtual {v10, v3, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 1051
    .local v9, "i1":I
    invoke-virtual {v10, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 1048
    .end local v3    # "deli":C
    .end local v7    # "i0":I
    .end local v9    # "i1":I
    .restart local v8    # "i0":I
    :cond_8
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i0":I
    .restart local v7    # "i0":I
    move v8, v7

    .end local v7    # "i0":I
    .restart local v8    # "i0":I
    goto :goto_3

    .line 1064
    .end local v6    # "i":I
    .end local v8    # "i0":I
    .end local v10    # "s":Ljava/lang/String;
    :cond_9
    const/high16 v12, -0x10000

    and-int/2addr v12, v2

    const/high16 v13, -0x20000

    if-ne v12, v13, :cond_a

    .line 1065
    const-string v5, "UTF-16LE"

    .line 1066
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    const/4 v13, 0x0

    .line 1067
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    const/4 v15, 0x3

    aget-char v14, v14, v15

    shl-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    const/16 v16, 0x2

    aget-char v15, v15, v16

    or-int/2addr v14, v15

    int-to-char v14, v14

    .line 1066
    aput-char v14, v12, v13

    .line 1068
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto/16 :goto_2

    .line 1070
    :cond_a
    and-int/lit16 v12, v2, -0x100

    const v13, -0x10444100

    if-ne v12, v13, :cond_3

    .line 1071
    const-string v5, "UTF-8"

    .line 1072
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    const/4 v15, 0x3

    aget-char v14, v14, v15

    aput-char v14, v12, v13

    .line 1073
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 999
    nop

    :sswitch_data_0
    .sparse-switch
        -0x20000 -> :sswitch_1
        0x3c -> :sswitch_2
        0xfeff -> :sswitch_0
        0x3c003f -> :sswitch_4
        0x3c000000 -> :sswitch_3
        0x3c003f00 -> :sswitch_5
        0x3c3f786d -> :sswitch_6
    .end sparse-switch
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 3
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 944
    iput-object p1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    .line 946
    const/4 v0, 0x1

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->line:I

    .line 947
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->column:I

    .line 948
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 949
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 950
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 951
    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 952
    const/4 v0, -0x1

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 953
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 954
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 955
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    .line 957
    if-nez p1, :cond_0

    .line 971
    :goto_0
    return-void

    .line 960
    :cond_0
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->srcPos:I

    .line 961
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    .line 962
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    .line 963
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    .line 965
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    .line 966
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    const-string v1, "amp"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    const-string v1, "apos"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    const-string v1, "gt"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    const-string v1, "lt"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    const-string v1, "quot"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1409
    const/4 v0, 0x1

    const-string v1, "location"

    invoke-direct {p0, p1, v0, v1}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    iput-object p2, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/Object;

    .line 1413
    return-void

    .line 1412
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipSubTree()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 1424
    invoke-virtual {p0, v3, v2, v2}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1425
    const/4 v1, 0x1

    .line 1426
    .local v1, "level":I
    :cond_0
    :goto_0
    if-gtz v1, :cond_1

    .line 1435
    return-void

    .line 1427
    :cond_1
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    move-result v0

    .line 1428
    .local v0, "eventType":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 1429
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1431
    :cond_2
    if-ne v0, v3, :cond_0

    .line 1432
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
