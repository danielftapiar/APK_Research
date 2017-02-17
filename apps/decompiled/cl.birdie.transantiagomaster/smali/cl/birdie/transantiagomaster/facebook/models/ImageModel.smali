.class public final Lcl/birdie/transantiagomaster/facebook/models/ImageModel;
.super Ljava/lang/Object;
.source "ImageModel.java"


# instance fields
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

.field public IdImage:Ljava/lang/String;

.field public LikeCount:I

.field public NameImage:Ljava/lang/String;

.field public UrlImage:Ljava/lang/String;

.field public User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "urlImage"    # Ljava/lang/String;
    .param p2, "nameImage"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->UrlImage:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->NameImage:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->IdImage:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->Comments:Ljava/util/List;

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    :try_start_0
    const-string v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->UrlImage:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    :try_start_1
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->NameImage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    :goto_1
    :try_start_2
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->IdImage:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 35
    :goto_2
    :try_start_3
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    const-string v1, "from"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcl/birdie/transantiagomaster/facebook/models/UserModel;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 37
    :goto_3
    :try_start_4
    const-string v0, "likes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->LikeCount:I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 40
    :goto_4
    :try_start_5
    const-string v0, "comments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->GetCommentsFromJSONArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->Comments:Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 42
    :goto_5
    return-void

    .line 30
    :catch_0
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->UrlImage:Ljava/lang/String;

    goto :goto_0

    .line 32
    :catch_1
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->NameImage:Ljava/lang/String;

    goto :goto_1

    .line 34
    :catch_2
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->IdImage:Ljava/lang/String;

    goto :goto_2

    .line 36
    :catch_3
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    goto :goto_3

    .line 38
    :catch_4
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->LikeCount:I

    goto :goto_4

    .line 41
    :catch_5
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->Comments:Ljava/util/List;

    goto :goto_5
.end method
