.class public final Lorg/json/me/JSONObject;
.super Ljava/lang/Object;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/json/me/JSONObject$Null;
    }
.end annotation


# static fields
.field public static final FALSE:Ljava/lang/Boolean;

.field public static final NULL:Ljava/lang/Object;

.field public static final TRUE:Ljava/lang/Boolean;


# instance fields
.field private myHashMap:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lorg/json/me/JSONObject;->TRUE:Ljava/lang/Boolean;

    .line 90
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lorg/json/me/JSONObject;->FALSE:Ljava/lang/Boolean;

    .line 143
    new-instance v0, Lorg/json/me/JSONObject$Null;

    invoke-direct {v0, v2}, Lorg/json/me/JSONObject$Null;-><init>(B)V

    sput-object v0, Lorg/json/me/JSONObject;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/json/me/JSONObject;->myHashMap:Ljava/util/Hashtable;

    .line 150
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
    .line 259
    new-instance v0, Lorg/json/me/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/me/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json/me/JSONObject;-><init>(Lorg/json/me/JSONTokener;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Lorg/json/me/JSONTokener;)V
    .locals 4
    .param p1, "x"    # Lorg/json/me/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Lorg/json/me/JSONObject;-><init>()V

    .line 180
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_1

    .line 181
    const-string v2, "A JSONObject text must begin with \'{\'"

    invoke-virtual {p1, v2}, Lorg/json/me/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/me/JSONException;

    move-result-object v2

    throw v2

    .line 219
    .local v0, "c":C
    .local v1, "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->back()V

    .line 184
    .end local v0    # "c":C
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->nextClean()C

    move-result v2

    .line 185
    sparse-switch v2, :sswitch_data_0

    .line 191
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->back()V

    .line 192
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->nextClean()C

    move-result v0

    .line 200
    .restart local v0    # "c":C
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_3

    .line 201
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->next()C

    move-result v2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_2

    .line 202
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->back()V

    .line 207
    :cond_2
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_4

    new-instance v2, Lorg/json/me/JSONException;

    const-string v3, "Null key."

    invoke-direct {v2, v3}, Lorg/json/me/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    .end local v0    # "c":C
    .end local v1    # "key":Ljava/lang/String;
    :sswitch_0
    const-string v2, "A JSONObject text must end with \'}\'"

    invoke-virtual {p1, v2}, Lorg/json/me/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/me/JSONException;

    move-result-object v2

    throw v2

    .line 204
    .restart local v0    # "c":C
    .restart local v1    # "key":Ljava/lang/String;
    :cond_3
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_2

    .line 205
    const-string v2, "Expected a \':\' after a key"

    invoke-virtual {p1, v2}, Lorg/json/me/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/me/JSONException;

    move-result-object v2

    throw v2

    .line 207
    :cond_4
    if-eqz v2, :cond_5

    iget-object v3, p0, Lorg/json/me/JSONObject;->myHashMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :goto_0
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->nextClean()C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 224
    const-string v2, "Expected a \',\' or \'}\'"

    invoke-virtual {p1, v2}, Lorg/json/me/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/me/JSONException;

    move-result-object v2

    throw v2

    .line 207
    :cond_5
    iget-object v2, p0, Lorg/json/me/JSONObject;->myHashMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 216
    :sswitch_1
    invoke-virtual {p1}, Lorg/json/me/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_0

    .line 222
    .end local v0    # "c":C
    .end local v1    # "key":Ljava/lang/String;
    :sswitch_2
    return-void

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7d -> :sswitch_2
    .end sparse-switch

    .line 213
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private static numberToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 619
    if-nez p0, :cond_0

    .line 620
    new-instance v0, Lorg/json/me/JSONException;

    const-string v1, "Null pointer"

    invoke-direct {v0, v1}, Lorg/json/me/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    :goto_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x22

    .line 964
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 965
    :cond_0
    const-string v6, "\"\""

    .line 1016
    :goto_0
    return-object v6

    .line 969
    :cond_1
    const/4 v1, 0x0

    .line 971
    .local v1, "c":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 972
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v3, 0x4

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 975
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 976
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_2

    .line 1015
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1016
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 977
    :cond_2
    move v0, v1

    .line 978
    .local v0, "b":C
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 979
    sparse-switch v1, :sswitch_data_0

    .line 1007
    const/16 v6, 0x20

    if-ge v1, v6, :cond_4

    .line 1008
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "000"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1009
    .local v5, "t":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\\u"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 976
    .end local v5    # "t":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 982
    :sswitch_0
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 983
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 986
    :sswitch_1
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_3

    .line 987
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 989
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 992
    :sswitch_2
    const-string v6, "\\b"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 995
    :sswitch_3
    const-string v6, "\\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 998
    :sswitch_4
    const-string v6, "\\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1001
    :sswitch_5
    const-string v6, "\\f"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1004
    :sswitch_6
    const-string v6, "\\r"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1011
    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 979
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0x22 -> :sswitch_0
        0x2f -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    .line 1196
    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1197
    :cond_0
    const-string v1, "null"

    .line 1224
    :goto_0
    return-object v1

    .line 1199
    :cond_1
    instance-of v2, p0, Lorg/json/me/JSONString;

    if-eqz v2, :cond_3

    .line 1202
    :try_start_0
    check-cast p0, Lorg/json/me/JSONString;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0}, Lorg/json/me/JSONString;->toJSONString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1206
    .local v1, "o":Ljava/lang/String;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1207
    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 1203
    .end local v1    # "o":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1204
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/json/me/JSONException;

    invoke-direct {v2, v0}, Lorg/json/me/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1209
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "o":Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/json/me/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad value from toJSONString: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/me/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1216
    .end local v1    # "o":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v2, p0, Ljava/lang/Byte;

    if-nez v2, :cond_4

    instance-of v2, p0, Ljava/lang/Short;

    if-nez v2, :cond_4

    .line 1217
    instance-of v2, p0, Ljava/lang/Integer;

    if-nez v2, :cond_4

    instance-of v2, p0, Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 1218
    :cond_4
    invoke-static {p0}, Lorg/json/me/JSONObject;->numberToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1220
    :cond_5
    instance-of v2, p0, Ljava/lang/Boolean;

    if-nez v2, :cond_6

    instance-of v2, p0, Lorg/json/me/JSONObject;

    if-nez v2, :cond_6

    .line 1221
    instance-of v2, p0, Lorg/json/me/JSONArray;

    if-eqz v2, :cond_7

    .line 1222
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1224
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/json/me/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    .line 352
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 353
    .local v0, "o":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    .line 354
    new-instance v1, Lorg/json/me/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONObject["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/json/me/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 355
    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-direct {v1, v2}, Lorg/json/me/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    .end local v0    # "o":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lorg/json/me/JSONObject;->myHashMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 357
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method public final getInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Lorg/json/me/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 439
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 440
    check-cast v0, Ljava/lang/Byte;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 446
    :goto_0
    return v1

    .line 441
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_1

    .line 442
    check-cast v0, Ljava/lang/Short;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    goto :goto_0

    .line 443
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 444
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 445
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 446
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 456
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_3
    new-instance v1, Lorg/json/me/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONObject["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/json/me/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 457
    const-string v3, "] is not a number."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-direct {v1, v2}, Lorg/json/me/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getJSONArray(Ljava/lang/String;)Lorg/json/me/JSONArray;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-virtual {p0, p1}, Lorg/json/me/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 471
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/me/JSONArray;

    if-eqz v1, :cond_0

    .line 472
    check-cast v0, Lorg/json/me/JSONArray;

    .end local v0    # "o":Ljava/lang/Object;
    return-object v0

    .line 474
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lorg/json/me/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONObject["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/json/me/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 475
    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-direct {v1, v2}, Lorg/json/me/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getJSONObject(Ljava/lang/String;)Lorg/json/me/JSONObject;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lorg/json/me/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 488
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/me/JSONObject;

    if-eqz v1, :cond_0

    .line 489
    check-cast v0, Lorg/json/me/JSONObject;

    .end local v0    # "o":Ljava/lang/Object;
    return-object v0

    .line 491
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lorg/json/me/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONObject["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/json/me/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 492
    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-direct {v1, v2}, Lorg/json/me/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-virtual {p0, p1}, Lorg/json/me/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 544
    iget-object v0, p0, Lorg/json/me/JSONObject;->myHashMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final keys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lorg/json/me/JSONObject;->myHashMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1085
    :try_start_0
    iget-object v3, p0, Lorg/json/me/JSONObject;->myHashMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 1086
    .local v0, "keys":Ljava/util/Enumeration;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1088
    .local v2, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1097
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1098
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1100
    .end local v0    # "keys":Ljava/util/Enumeration;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    return-object v3

    .line 1089
    .restart local v0    # "keys":Ljava/util/Enumeration;
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1090
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1092
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 1093
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/json/me/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1094
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1095
    iget-object v3, p0, Lorg/json/me/JSONObject;->myHashMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/json/me/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1100
    .end local v0    # "keys":Ljava/util/Enumeration;
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto :goto_1
.end method
