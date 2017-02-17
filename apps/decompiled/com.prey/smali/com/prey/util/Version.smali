.class public Lcom/prey/util/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/prey/util/Version;",
        ">;"
    }
.end annotation


# instance fields
.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    const-string v0, "[0-9]+(\\.[0-9]+)*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid version format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    iput-object p1, p0, Lcom/prey/util/Version;->version:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/prey/util/Version;)I
    .locals 10
    .param p1, "that"    # Lcom/prey/util/Version;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 27
    if-nez p1, :cond_1

    move v6, v7

    .line 42
    :cond_0
    :goto_0
    return v6

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/prey/util/Version;->get()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\."

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 30
    .local v5, "thisParts":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/prey/util/Version;->get()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\."

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "thatParts":[Ljava/lang/String;
    array-length v8, v5

    array-length v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 32
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 33
    array-length v8, v5

    if-ge v0, v8, :cond_2

    aget-object v8, v5, v0

    .line 34
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 35
    .local v4, "thisPart":I
    :goto_2
    array-length v8, v3

    if-ge v0, v8, :cond_3

    aget-object v8, v3, v0

    .line 36
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 37
    .local v2, "thatPart":I
    :goto_3
    if-ge v4, v2, :cond_4

    .line 38
    const/4 v6, -0x1

    goto :goto_0

    .end local v2    # "thatPart":I
    .end local v4    # "thisPart":I
    :cond_2
    move v4, v6

    .line 34
    goto :goto_2

    .restart local v4    # "thisPart":I
    :cond_3
    move v2, v6

    .line 36
    goto :goto_3

    .line 39
    .restart local v2    # "thatPart":I
    :cond_4
    if-le v4, v2, :cond_5

    move v6, v7

    .line 40
    goto :goto_0

    .line 32
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/prey/util/Version;

    invoke-virtual {p0, p1}, Lcom/prey/util/Version;->compareTo(Lcom/prey/util/Version;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    if-ne p0, p1, :cond_1

    .line 53
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 49
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    check-cast p1, Lcom/prey/util/Version;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/prey/util/Version;->compareTo(Lcom/prey/util/Version;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/prey/util/Version;->version:Ljava/lang/String;

    return-object v0
.end method
