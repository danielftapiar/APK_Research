.class public final Lme/regexp/StringCharacterIterator;
.super Ljava/lang/Object;

# interfaces
.implements Lme/regexp/CharacterIterator;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/regexp/StringCharacterIterator;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1

    iget-object v0, p0, Lme/regexp/StringCharacterIterator;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final isEnd(I)Z
    .locals 1

    iget-object v0, p0, Lme/regexp/StringCharacterIterator;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

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

    iget-object v0, p0, Lme/regexp/StringCharacterIterator;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final substring(II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lme/regexp/StringCharacterIterator;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
