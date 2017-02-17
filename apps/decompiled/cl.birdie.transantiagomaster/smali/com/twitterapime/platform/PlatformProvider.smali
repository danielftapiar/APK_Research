.class public final Lcom/twitterapime/platform/PlatformProvider;
.super Ljava/lang/Object;
.source "PlatformProvider.java"


# instance fields
.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/twitterapime/platform/PlatformProvider;->id:I

    .line 93
    iput-object p1, p0, Lcom/twitterapime/platform/PlatformProvider;->name:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    if-ne p1, p0, :cond_1

    .line 115
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 112
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/twitterapime/platform/PlatformProvider;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 113
    goto :goto_0

    .line 115
    :cond_3
    iget v2, p0, Lcom/twitterapime/platform/PlatformProvider;->id:I

    check-cast p1, Lcom/twitterapime/platform/PlatformProvider;

    .end local p1    # "o":Ljava/lang/Object;
    iget v3, p1, Lcom/twitterapime/platform/PlatformProvider;->id:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getID()J
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/twitterapime/platform/PlatformProvider;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/twitterapime/platform/PlatformProvider;->id:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/twitterapime/platform/PlatformProvider;->name:Ljava/lang/String;

    return-object v0
.end method
