.class public final Lcom/twitterapime/search/Tweet;
.super Lcom/twitterapime/model/DefaultEntity;
.source "Tweet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/twitterapime/model/DefaultEntity;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "data"    # Ljava/util/Hashtable;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/twitterapime/model/DefaultEntity;-><init>(Ljava/util/Hashtable;)V

    .line 64
    return-void
.end method


# virtual methods
.method public final getUserAccount()Lcom/twitterapime/rest/UserAccount;
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/twitterapime/search/Tweet;->data:Ljava/util/Hashtable;

    const-string v1, "TWEET_USER_ACCOUNT"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitterapime/rest/UserAccount;

    return-object v0
.end method
