.class public final Lorg/mapsforge/core/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient hashCodeValue:I

.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 47
    .local v0, "splitPosition":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/core/Tag;->key:Ljava/lang/String;

    .line 48
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/core/Tag;->value:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lorg/mapsforge/core/Tag;->calculateHashCode()I

    move-result v1

    iput v1, p0, Lorg/mapsforge/core/Tag;->hashCodeValue:I

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/mapsforge/core/Tag;->key:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lorg/mapsforge/core/Tag;->value:Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lorg/mapsforge/core/Tag;->calculateHashCode()I

    move-result v0

    iput v0, p0, Lorg/mapsforge/core/Tag;->hashCodeValue:I

    .line 62
    return-void
.end method

.method private calculateHashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v1, p0, Lorg/mapsforge/core/Tag;->key:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0xd9

    .line 106
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lorg/mapsforge/core/Tag;->value:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_1
    add-int/2addr v1, v2

    .line 107
    return v1

    .line 104
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/core/Tag;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 106
    .restart local v0    # "result":I
    :cond_1
    iget-object v2, p0, Lorg/mapsforge/core/Tag;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    if-ne p0, p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    instance-of v3, p1, Lorg/mapsforge/core/Tag;

    if-nez v3, :cond_2

    move v1, v2

    .line 69
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 71
    check-cast v0, Lorg/mapsforge/core/Tag;

    .line 72
    .local v0, "other":Lorg/mapsforge/core/Tag;
    iget-object v3, p0, Lorg/mapsforge/core/Tag;->key:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v0, Lorg/mapsforge/core/Tag;->key:Ljava/lang/String;

    if-eqz v3, :cond_3

    move v1, v2

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object v3, p0, Lorg/mapsforge/core/Tag;->key:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapsforge/core/Tag;->key:Ljava/lang/String;

    iget-object v4, v0, Lorg/mapsforge/core/Tag;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    iget-object v3, p0, Lorg/mapsforge/core/Tag;->value:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/mapsforge/core/Tag;->value:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 77
    goto :goto_0

    .line 78
    :cond_5
    iget-object v3, p0, Lorg/mapsforge/core/Tag;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/mapsforge/core/Tag;->value:Ljava/lang/String;

    iget-object v4, v0, Lorg/mapsforge/core/Tag;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 79
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/mapsforge/core/Tag;->hashCodeValue:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "Tag [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Lorg/mapsforge/core/Tag;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lorg/mapsforge/core/Tag;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
