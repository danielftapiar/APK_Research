.class public final Lcom/twitterapime/rest/List;
.super Lcom/twitterapime/model/DefaultEntity;
.source "List.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/twitterapime/model/DefaultEntity;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/twitterapime/model/DefaultEntity;-><init>()V

    .line 83
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 84
    .local v0, "t":Ljava/util/Hashtable;
    invoke-static {p1}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Name must not be null/empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_0
    const-string v1, "LIST_NAME"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "LIST_MODE"

    const-string v2, "private"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    if-eqz p2, :cond_1

    .line 91
    const-string v1, "LIST_DESCRIPTION"

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_1
    invoke-virtual {p0, v0}, Lcom/twitterapime/rest/List;->setData(Ljava/util/Hashtable;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "data"    # Ljava/util/Hashtable;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/twitterapime/model/DefaultEntity;-><init>(Ljava/util/Hashtable;)V

    .line 51
    return-void
.end method
