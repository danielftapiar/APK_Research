.class public final Lcl/birdie/transantiagomaster/facebook/models/CommentModel;
.super Ljava/lang/Object;
.source "CommentModel.java"


# instance fields
.field public Id:Ljava/lang/String;

.field public LikeCount:I

.field public Message:Ljava/lang/String;

.field public User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    :try_start_0
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->Message:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    :try_start_1
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->Id:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    :goto_1
    :try_start_2
    const-string v0, "likes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->LikeCount:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 25
    :goto_2
    iget v0, p0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->LikeCount:I

    if-nez v0, :cond_0

    .line 26
    :try_start_3
    const-string v0, "like_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->LikeCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 29
    :cond_0
    :goto_3
    :try_start_4
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    const-string v1, "from"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcl/birdie/transantiagomaster/facebook/models/UserModel;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 31
    :goto_4
    return-void

    .line 20
    :catch_0
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->Message:Ljava/lang/String;

    goto :goto_0

    .line 22
    :catch_1
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->Id:Ljava/lang/String;

    goto :goto_1

    .line 24
    :catch_2
    move-exception v0

    iput v1, p0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->LikeCount:I

    goto :goto_2

    .line 27
    :catch_3
    move-exception v0

    iput v1, p0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->LikeCount:I

    goto :goto_3

    .line 30
    :catch_4
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    goto :goto_4
.end method

.method public static GetCommentsFromJSONArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .param p0, "commentsArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/facebook/models/CommentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v1, "commentsReturns":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/facebook/models/CommentModel;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 38
    .local v4, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 46
    .end local v2    # "i":I
    .end local v4    # "sz":I
    :goto_1
    return-object v1

    .line 40
    .restart local v2    # "i":I
    .restart local v4    # "sz":I
    :cond_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 41
    .local v3, "o":Lorg/json/JSONObject;
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;

    invoke-direct {v0, v3}, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;-><init>(Lorg/json/JSONObject;)V

    .line 42
    .local v0, "comment":Lcl/birdie/transantiagomaster/facebook/models/CommentModel;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "comment":Lcl/birdie/transantiagomaster/facebook/models/CommentModel;
    .end local v2    # "i":I
    .end local v3    # "o":Lorg/json/JSONObject;
    .end local v4    # "sz":I
    :catch_0
    move-exception v5

    goto :goto_1
.end method
