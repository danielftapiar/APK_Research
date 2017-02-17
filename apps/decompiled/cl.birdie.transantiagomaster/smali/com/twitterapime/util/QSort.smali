.class public final Lcom/twitterapime/util/QSort;
.super Ljava/lang/Object;
.source "QSort.java"


# instance fields
.field private isAscending:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitterapime/util/QSort;->isAscending:Z

    .line 34
    return-void
.end method

.method private static greater(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "i1"    # Ljava/lang/Object;
    .param p1, "i2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    if-nez p0, :cond_2

    move v0, v1

    .line 117
    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static lesser(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "i1"    # Ljava/lang/Object;
    .param p1, "i2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    if-nez p0, :cond_2

    move v0, v1

    .line 98
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static swap([Ljava/lang/Object;II)V
    .locals 2
    .param p0, "its"    # [Ljava/lang/Object;
    .param p1, "i1"    # I
    .param p2, "i2"    # I

    .prologue
    .line 132
    aget-object v0, p0, p1

    .line 133
    .local v0, "auxo":Ljava/lang/Object;
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 134
    aput-object v0, p0, p2

    .line 135
    return-void
.end method


# virtual methods
.method public final quicksort([Ljava/lang/Object;II)V
    .locals 5
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "s"    # I
    .param p3, "e"    # I

    .prologue
    .line 65
    :goto_0
    if-gt p3, p2, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    add-int/lit8 v1, p2, -0x1

    aget-object v3, p1, p3

    iget-boolean v2, p0, Lcom/twitterapime/util/QSort;->isAscending:Z

    if-eqz v2, :cond_8

    move v2, v1

    move v1, p3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    aget-object v4, p1, v2

    invoke-static {v4, v3}, Lcom/twitterapime/util/QSort;->lesser(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    aget-object v4, p1, v1

    invoke-static {v3, v4}, Lcom/twitterapime/util/QSort;->lesser(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne v1, p2, :cond_2

    :cond_3
    if-ge v2, v1, :cond_7

    invoke-static {p1, v2, v1}, Lcom/twitterapime/util/QSort;->swap([Ljava/lang/Object;II)V

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    aget-object v4, p1, v2

    invoke-static {v4, v3}, Lcom/twitterapime/util/QSort;->greater(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_5
    add-int/lit8 v1, v1, -0x1

    aget-object v4, p1, v1

    invoke-static {v3, v4}, Lcom/twitterapime/util/QSort;->greater(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-ne v1, p2, :cond_5

    :cond_6
    if-ge v2, v1, :cond_7

    invoke-static {p1, v2, v1}, Lcom/twitterapime/util/QSort;->swap([Ljava/lang/Object;II)V

    goto :goto_2

    :cond_7
    move v0, v2

    invoke-static {p1, v0, p3}, Lcom/twitterapime/util/QSort;->swap([Ljava/lang/Object;II)V

    .line 69
    .local v0, "i":I
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/twitterapime/util/QSort;->quicksort([Ljava/lang/Object;II)V

    .line 70
    add-int/lit8 p2, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_8
    move v2, v1

    move v1, p3

    goto :goto_2
.end method
