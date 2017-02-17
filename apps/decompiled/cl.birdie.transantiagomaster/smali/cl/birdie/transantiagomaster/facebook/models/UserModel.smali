.class public final Lcl/birdie/transantiagomaster/facebook/models/UserModel;
.super Ljava/lang/Object;
.source "UserModel.java"


# instance fields
.field public BirthDay:Ljava/lang/String;

.field public Email:Ljava/lang/String;

.field public FirstName:Ljava/lang/String;

.field public Gender:Ljava/lang/String;

.field public Id:Ljava/lang/String;

.field public LastName:Ljava/lang/String;

.field public Link:Ljava/lang/String;

.field public Locale:Ljava/lang/String;

.field public MiddleName:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public RelationshipStatus:Ljava/lang/String;

.field public Religion:Ljava/lang/String;

.field public Timezone:Ljava/lang/String;

.field public UpdatedTime:Ljava/lang/String;

.field public UrlProfilePicture:Ljava/lang/String;

.field public UserName:Ljava/lang/String;

.field public Verified:Ljava/lang/String;

.field public Website:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "user"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    :try_start_1
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Name:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    :goto_1
    :try_start_2
    const-string v0, "first_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->FirstName:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 37
    :goto_2
    :try_start_3
    const-string v0, "middle_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->MiddleName:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 39
    :goto_3
    :try_start_4
    const-string v0, "last_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->LastName:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 41
    :goto_4
    :try_start_5
    const-string v0, "link"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Link:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 43
    :goto_5
    :try_start_6
    const-string v0, "username"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UserName:Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 45
    :goto_6
    :try_start_7
    const-string v0, "birthday"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->BirthDay:Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 47
    :goto_7
    :try_start_8
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Gender:Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    .line 49
    :goto_8
    :try_start_9
    const-string v0, "relationship_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->RelationshipStatus:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_9

    .line 51
    :goto_9
    :try_start_a
    const-string v0, "religion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Religion:Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_a

    .line 53
    :goto_a
    :try_start_b
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Email:Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    .line 55
    :goto_b
    :try_start_c
    const-string v0, "website"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Website:Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_c

    .line 57
    :goto_c
    :try_start_d
    const-string v0, "timezone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Timezone:Ljava/lang/String;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_d

    .line 59
    :goto_d
    :try_start_e
    const-string v0, "locale"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Locale:Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_e

    .line 61
    :goto_e
    :try_start_f
    const-string v0, "verified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Verified:Ljava/lang/String;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_f

    .line 63
    :goto_f
    :try_start_10
    const-string v0, "updated_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UpdatedTime:Ljava/lang/String;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_10

    .line 65
    :goto_10
    :try_start_11
    const-string v0, "picture"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_11

    .line 69
    :goto_11
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    .line 70
    return-void

    .line 32
    :catch_0
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    goto/16 :goto_0

    .line 34
    :catch_1
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Name:Ljava/lang/String;

    goto/16 :goto_1

    .line 36
    :catch_2
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->FirstName:Ljava/lang/String;

    goto/16 :goto_2

    .line 38
    :catch_3
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->MiddleName:Ljava/lang/String;

    goto/16 :goto_3

    .line 40
    :catch_4
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->LastName:Ljava/lang/String;

    goto/16 :goto_4

    .line 42
    :catch_5
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Link:Ljava/lang/String;

    goto/16 :goto_5

    .line 44
    :catch_6
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UserName:Ljava/lang/String;

    goto/16 :goto_6

    .line 46
    :catch_7
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->BirthDay:Ljava/lang/String;

    goto/16 :goto_7

    .line 48
    :catch_8
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Gender:Ljava/lang/String;

    goto/16 :goto_8

    .line 50
    :catch_9
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->RelationshipStatus:Ljava/lang/String;

    goto :goto_9

    .line 52
    :catch_a
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Religion:Ljava/lang/String;

    goto :goto_a

    .line 54
    :catch_b
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Email:Ljava/lang/String;

    goto :goto_b

    .line 56
    :catch_c
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Website:Ljava/lang/String;

    goto :goto_c

    .line 58
    :catch_d
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Timezone:Ljava/lang/String;

    goto :goto_d

    .line 60
    :catch_e
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Locale:Ljava/lang/String;

    goto :goto_e

    .line 62
    :catch_f
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Verified:Ljava/lang/String;

    goto :goto_f

    .line 64
    :catch_10
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UpdatedTime:Ljava/lang/String;

    goto :goto_10

    .line 66
    :catch_11
    move-exception v0

    iput-object v2, p0, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    goto :goto_11
.end method
