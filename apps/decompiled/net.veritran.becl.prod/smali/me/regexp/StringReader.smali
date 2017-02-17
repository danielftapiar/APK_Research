.class public Lme/regexp/StringReader;
.super Ljava/io/Reader;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lme/regexp/StringReader;->b:I

    iput-object p1, p0, Lme/regexp/StringReader;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public read()I
    .locals 3

    iget v0, p0, Lme/regexp/StringReader;->b:I

    iget-object v1, p0, Lme/regexp/StringReader;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lme/regexp/StringReader;->a:Ljava/lang/String;

    iget v1, p0, Lme/regexp/StringReader;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lme/regexp/StringReader;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public read([CII)I
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lme/regexp/StringReader;->b:I

    iget-object v2, p0, Lme/regexp/StringReader;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_0

    iget v2, p0, Lme/regexp/StringReader;->b:I

    iget-object v3, p0, Lme/regexp/StringReader;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int v2, p2, v1

    iget-object v3, p0, Lme/regexp/StringReader;->a:Ljava/lang/String;

    iget v4, p0, Lme/regexp/StringReader;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lme/regexp/StringReader;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readLine()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lme/regexp/StringReader;->b:I

    iget-object v1, p0, Lme/regexp/StringReader;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lme/regexp/StringReader;->a:Ljava/lang/String;

    const/16 v1, 0xa

    iget v2, p0, Lme/regexp/StringReader;->b:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lme/regexp/StringReader;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    iget-object v1, p0, Lme/regexp/StringReader;->a:Ljava/lang/String;

    iget v2, p0, Lme/regexp/StringReader;->b:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/regexp/StringReader;->b:I

    move-object v0, v1

    goto :goto_0
.end method

.method public ready()Z
    .locals 2

    iget v0, p0, Lme/regexp/StringReader;->b:I

    iget-object v1, p0, Lme/regexp/StringReader;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
