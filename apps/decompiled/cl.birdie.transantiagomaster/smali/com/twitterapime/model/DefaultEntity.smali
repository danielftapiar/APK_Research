.class public Lcom/twitterapime/model/DefaultEntity;
.super Ljava/lang/Object;
.source "DefaultEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected data:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitterapime/model/DefaultEntity;->setData(Ljava/util/Hashtable;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "data"    # Ljava/util/Hashtable;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/twitterapime/model/DefaultEntity;->setData(Ljava/util/Hashtable;)V

    .line 76
    return-void
.end method


# virtual methods
.method public final checkEmpty(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/twitterapime/model/DefaultEntity;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 231
    if-ne p1, p0, :cond_1

    move v3, v4

    .line 236
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 233
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/twitterapime/model/DefaultEntity;

    if-eqz v0, :cond_0

    .line 236
    iget-object v5, p0, Lcom/twitterapime/model/DefaultEntity;->data:Ljava/util/Hashtable;

    check-cast p1, Lcom/twitterapime/model/DefaultEntity;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v6, p1, Lcom/twitterapime/model/DefaultEntity;->data:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v8, v0, [Ljava/lang/Object;

    if-eqz v8, :cond_3

    instance-of v8, v1, [Ljava/lang/Object;

    if-eqz v8, :cond_3

    check-cast v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v0

    array-length v8, v1

    if-ne v2, v8, :cond_0

    move v2, v3

    :goto_1
    array-length v8, v0

    if-ge v2, v8, :cond_2

    aget-object v8, v0, v2

    aget-object v9, v1, v2

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method public final getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "attr"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/twitterapime/model/DefaultEntity;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "v":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 123
    .end local v0    # "v":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 118
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 119
    check-cast v0, Ljava/util/Date;

    goto :goto_0

    .line 120
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 121
    new-instance v1, Ljava/util/Date;

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "v":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    .line 122
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 123
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    .line 125
    :cond_3
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid type value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "attr"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/twitterapime/model/DefaultEntity;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 167
    .local v0, "v":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 168
    const-wide/high16 v1, -0x8000000000000000L

    .line 180
    .end local v0    # "v":Ljava/lang/Object;
    :goto_0
    return-wide v1

    .line 171
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 172
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "v":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 173
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 174
    check-cast v0, Ljava/util/Date;

    .end local v0    # "v":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_0

    .line 175
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .line 177
    :cond_3
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 178
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "v":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 179
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_4
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 180
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "v":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_5
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 182
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_6
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid type value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "attr"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/twitterapime/model/DefaultEntity;->data:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "attr"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v1, p0, Lcom/twitterapime/model/DefaultEntity;->data:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 200
    .local v0, "v":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/twitterapime/model/DefaultEntity;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v1, p0, Lcom/twitterapime/model/DefaultEntity;->data:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 281
    .local v0, "v":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isNull(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/twitterapime/model/DefaultEntity;->data:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setData(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "data"    # Ljava/util/Hashtable;

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance p1, Ljava/util/Hashtable;

    .end local p1    # "data":Ljava/util/Hashtable;
    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    .line 88
    .restart local p1    # "data":Ljava/util/Hashtable;
    :cond_0
    iput-object p1, p0, Lcom/twitterapime/model/DefaultEntity;->data:Ljava/util/Hashtable;

    .line 89
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 251
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 252
    .local v2, "s":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/twitterapime/model/DefaultEntity;->data:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 255
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/twitterapime/model/DefaultEntity;->data:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 260
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
