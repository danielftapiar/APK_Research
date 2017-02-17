.class public final Lcom/twitterapime/search/Query;
.super Ljava/lang/Object;
.source "Query.java"


# instance fields
.field private query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Query must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/twitterapime/search/Query;->query:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 49
    :catch_0
    move-exception v0

    new-instance v0, Lcom/twitterapime/search/InvalidQueryException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid UTF-8 string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitterapime/search/InvalidQueryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 57
    if-ne p1, p0, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 62
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 59
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/twitterapime/search/Query;

    if-nez v0, :cond_2

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/twitterapime/search/Query;->query:Ljava/lang/String;

    check-cast p1, Lcom/twitterapime/search/Query;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/twitterapime/search/Query;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/twitterapime/search/Query;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitterapime/search/Query;->query:Ljava/lang/String;

    return-object v0
.end method
