.class public final Lcl/birdie/transantiagomaster/facebook/models/PostModel;
.super Ljava/lang/Object;
.source "PostModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;
    }
.end annotation


# instance fields
.field public Caption:Ljava/lang/String;

.field public Comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/facebook/models/CommentModel;",
            ">;"
        }
    .end annotation
.end field

.field public Icon:Ljava/lang/String;

.field public Id:Ljava/lang/String;

.field public LikeCount:I

.field public Link:Ljava/lang/String;

.field public Message:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public Object_id:Ljava/lang/String;

.field public Picture:Ljava/lang/String;

.field public Type:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

.field public User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "post"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    :try_start_0
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Id:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    :try_start_1
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Name:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    :goto_1
    :try_start_2
    const-string v2, "link"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Link:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 32
    :goto_2
    :try_start_3
    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Message:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 34
    :goto_3
    :try_start_4
    const-string v2, "picture"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Picture:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 36
    :goto_4
    :try_start_5
    const-string v2, "caption"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Caption:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 38
    :goto_5
    :try_start_6
    const-string v2, "icon"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Icon:Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 40
    :goto_6
    :try_start_7
    new-instance v2, Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    const-string v3, "from"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcl/birdie/transantiagomaster/facebook/models/UserModel;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 42
    :goto_7
    :try_start_8
    const-string v2, "likes"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->LikeCount:I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    .line 45
    :goto_8
    :try_start_9
    const-string v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "type":Ljava/lang/String;
    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    sget-object v2, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Photo:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Type:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 62
    .end local v1    # "type":Ljava/lang/String;
    :goto_9
    :try_start_a
    const-string v2, "object_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Object_id:Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_a

    .line 65
    :goto_a
    :try_start_b
    const-string v2, "comments"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->GetCommentsFromJSONArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Comments:Ljava/util/List;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 67
    :goto_b
    return-void

    .line 27
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    iput-object v4, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Id:Ljava/lang/String;

    goto :goto_0

    .line 29
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    iput-object v4, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Name:Ljava/lang/String;

    goto :goto_1

    .line 31
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    iput-object v4, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Link:Ljava/lang/String;

    goto :goto_2

    .line 33
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    iput-object v4, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Message:Ljava/lang/String;

    goto :goto_3

    .line 35
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    iput-object v4, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Picture:Ljava/lang/String;

    goto :goto_4

    .line 37
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    iput-object v4, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Caption:Ljava/lang/String;

    goto :goto_5

    .line 39
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    iput-object v4, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Icon:Ljava/lang/String;

    goto :goto_6

    .line 41
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_7
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    iput-object v4, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    goto :goto_7

    .line 43
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_8
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    iput v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->LikeCount:I

    goto :goto_8

    .line 49
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "type":Ljava/lang/String;
    :cond_0
    :try_start_c
    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    sget-object v2, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Status:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Type:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_9

    .line 59
    .end local v1    # "type":Ljava/lang/String;
    :catch_9
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Unknown:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Type:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    goto :goto_9

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "type":Ljava/lang/String;
    :cond_1
    :try_start_d
    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    sget-object v2, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Link:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Type:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    goto :goto_9

    .line 55
    :cond_2
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    sget-object v2, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Video:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Type:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    goto :goto_9

    .line 58
    :cond_3
    sget-object v2, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Unknown:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Type:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_9

    .line 63
    .end local v1    # "type":Ljava/lang/String;
    :catch_a
    move-exception v2

    iput-object v4, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Object_id:Ljava/lang/String;

    goto :goto_a

    .line 66
    :catch_b
    move-exception v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Comments:Ljava/util/List;

    goto :goto_b
.end method
