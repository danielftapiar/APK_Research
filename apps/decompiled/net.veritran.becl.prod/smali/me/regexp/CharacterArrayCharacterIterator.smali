.class public final Lme/regexp/CharacterArrayCharacterIterator;
.super Ljava/lang/Object;

# interfaces
.implements Lme/regexp/CharacterIterator;


# instance fields
.field private final a:[C

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>([CII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/regexp/CharacterArrayCharacterIterator;->a:[C

    iput p2, p0, Lme/regexp/CharacterArrayCharacterIterator;->b:I

    iput p3, p0, Lme/regexp/CharacterArrayCharacterIterator;->c:I

    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 2

    iget-object v0, p0, Lme/regexp/CharacterArrayCharacterIterator;->a:[C

    iget v1, p0, Lme/regexp/CharacterArrayCharacterIterator;->b:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public final isEnd(I)Z
    .locals 1

    iget v0, p0, Lme/regexp/CharacterArrayCharacterIterator;->c:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final substring(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lme/regexp/CharacterArrayCharacterIterator;->c:I

    invoke-virtual {p0, p1, v0}, Lme/regexp/CharacterArrayCharacterIterator;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final substring(II)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lme/regexp/CharacterArrayCharacterIterator;->c:I

    if-le p2, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; sequence size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lme/regexp/CharacterArrayCharacterIterator;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p1, :cond_1

    if-le p1, p2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "beginIndex="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; endIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lme/regexp/CharacterArrayCharacterIterator;->a:[C

    iget v2, p0, Lme/regexp/CharacterArrayCharacterIterator;->b:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
