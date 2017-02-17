.class public final Lcom/twitterapime/search/TweetEntity;
.super Lcom/twitterapime/model/DefaultEntity;
.source "TweetEntity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/twitterapime/model/DefaultEntity;-><init>()V

    .line 41
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
