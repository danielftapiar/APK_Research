.class public final Lorg/json/me/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"


# instance fields
.field private myArrayList:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/json/me/JSONArray;->myArrayList:Ljava/util/Vector;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lorg/json/me/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/me/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json/me/JSONArray;-><init>(Lorg/json/me/JSONTokener;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lorg/json/me/JSONTokener;)V
    .locals 3
    .param p1, "x"    # Lorg/json/me/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x5d

    .line 103
    invoke-direct {p0}, Lorg/json/me/JSONArray;-><init>()V

    .line 104
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    .line 105
    const-string v0, "A JSONArray text must start with \'[\'"

    invoke-virtual {p1, v0}, Lorg/json/me/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/me/JSONException;

    move-result-object v0

    throw v0

    .line 107
    :cond_0
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->nextClean()C

    move-result v0

    if-ne v0, v2, :cond_2

    .line 128
    :cond_1
    :sswitch_0
    return-void

    .line 110
    :cond_2
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->back()V

    .line 112
    :goto_0
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_3

    .line 113
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->back()V

    .line 114
    iget-object v0, p0, Lorg/json/me/JSONArray;->myArrayList:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 119
    :goto_1
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->nextClean()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 130
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lorg/json/me/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/me/JSONException;

    move-result-object v0

    throw v0

    .line 116
    :cond_3
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->back()V

    .line 117
    iget-object v0, p0, Lorg/json/me/JSONArray;->myArrayList:Ljava/util/Vector;

    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 122
    :sswitch_1
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->nextClean()C

    move-result v0

    if-eq v0, v2, :cond_1

    .line 125
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->back()V

    goto :goto_0

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method private get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    .line 172
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/json/me/JSONArray;->myArrayList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 173
    .local v0, "o":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_2

    .line 174
    new-instance v1, Lorg/json/me/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONArray["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/me/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    .end local v0    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lorg/json/me/JSONArray;->myArrayList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 176
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    return-object v0
.end method

.method private join(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v3, p0, Lorg/json/me/JSONArray;->myArrayList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 326
    .local v1, "len":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 328
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 334
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 329
    :cond_0
    if-lez v0, :cond_1

    .line 330
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    :cond_1
    iget-object v3, p0, Lorg/json/me/JSONArray;->myArrayList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/json/me/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final getJSONArray(I)Lorg/json/me/JSONArray;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lorg/json/me/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 255
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/me/JSONArray;

    if-eqz v1, :cond_0

    .line 256
    check-cast v0, Lorg/json/me/JSONArray;

    .end local v0    # "o":Ljava/lang/Object;
    return-object v0

    .line 258
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lorg/json/me/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONArray["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 259
    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-direct {v1, v2}, Lorg/json/me/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getJSONObject(I)Lorg/json/me/JSONObject;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lorg/json/me/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 272
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/me/JSONObject;

    if-eqz v1, :cond_0

    .line 273
    check-cast v0, Lorg/json/me/JSONObject;

    .end local v0    # "o":Ljava/lang/Object;
    return-object v0

    .line 275
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lorg/json/me/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONArray["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 276
    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-direct {v1, v2}, Lorg/json/me/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lorg/json/me/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/json/me/JSONArray;->myArrayList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 789
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-direct {p0, v1}, Lorg/json/me/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 791
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
