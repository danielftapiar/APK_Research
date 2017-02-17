.class public final Lme/regexp/ReaderCharacterIterator;
.super Ljava/lang/Object;

# interfaces
.implements Lme/regexp/CharacterIterator;


# instance fields
.field private final a:Ljava/io/Reader;

.field private final b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/regexp/ReaderCharacterIterator;->a:Ljava/io/Reader;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lme/regexp/ReaderCharacterIterator;->b:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/regexp/ReaderCharacterIterator;->c:Z

    return-void
.end method

.method private a(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lme/regexp/ReaderCharacterIterator;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    new-array v2, p1, [C

    move v0, v1

    :cond_1
    iget-object v3, p0, Lme/regexp/ReaderCharacterIterator;->a:Ljava/io/Reader;

    invoke-virtual {v3, v2}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-gez v3, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lme/regexp/ReaderCharacterIterator;->c:Z

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    add-int/2addr v0, v3

    iget-object v4, p0, Lme/regexp/ReaderCharacterIterator;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    if-lt v0, p1, :cond_1

    goto :goto_1
.end method

.method private b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lme/regexp/ReaderCharacterIterator;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lme/regexp/ReaderCharacterIterator;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lme/regexp/ReaderCharacterIterator;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lme/regexp/ReaderCharacterIterator;->a(I)I

    goto :goto_0
.end method


# virtual methods
.method public final charAt(I)C
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lme/regexp/ReaderCharacterIterator;->b(I)V

    iget-object v0, p0, Lme/regexp/ReaderCharacterIterator;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final isEnd(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lme/regexp/ReaderCharacterIterator;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lme/regexp/ReaderCharacterIterator;->b(I)V

    iget-object v1, p0, Lme/regexp/ReaderCharacterIterator;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gt v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final substring(I)Ljava/lang/String;
    .locals 2

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lme/regexp/ReaderCharacterIterator;->c:Z

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lme/regexp/ReaderCharacterIterator;->a(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lme/regexp/ReaderCharacterIterator;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method public final substring(II)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-direct {p0, p2}, Lme/regexp/ReaderCharacterIterator;->b(I)V

    iget-object v0, p0, Lme/regexp/ReaderCharacterIterator;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
