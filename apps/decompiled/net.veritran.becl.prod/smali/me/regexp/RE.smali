.class public Lme/regexp/RE;
.super Ljava/lang/Object;


# static fields
.field public static final MATCH_CASEINDEPENDENT:I = 0x1

.field public static final MATCH_MULTILINE:I = 0x2

.field public static final MATCH_NORMAL:I = 0x0

.field public static final MATCH_SINGLELINE:I = 0x4

.field public static final REPLACE_ALL:I = 0x0

.field public static final REPLACE_BACKREFERENCES:I = 0x2

.field public static final REPLACE_FIRSTONLY:I = 0x1


# instance fields
.field private a:Lme/regexp/REProgram;

.field private transient b:Lme/regexp/CharacterIterator;

.field private c:I

.field private d:I

.field private transient e:I

.field private transient f:I

.field private transient g:I

.field private transient h:I

.field private transient i:I

.field private transient j:I

.field private transient k:I

.field private transient l:[I

.field private transient m:[I

.field private transient n:[I

.field private transient o:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lme/regexp/RE;-><init>(Lme/regexp/REProgram;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/regexp/RESyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/regexp/RE;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/regexp/RESyntaxException;
        }
    .end annotation

    new-instance v0, Lme/regexp/RECompiler;

    invoke-direct {v0}, Lme/regexp/RECompiler;-><init>()V

    invoke-virtual {v0, p1}, Lme/regexp/RECompiler;->compile(Ljava/lang/String;)Lme/regexp/REProgram;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lme/regexp/RE;-><init>(Lme/regexp/REProgram;I)V

    return-void
.end method

.method public constructor <init>(Lme/regexp/REProgram;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/regexp/RE;-><init>(Lme/regexp/REProgram;I)V

    return-void
.end method

.method public constructor <init>(Lme/regexp/REProgram;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lme/regexp/RE;->d:I

    invoke-virtual {p0, p1}, Lme/regexp/RE;->setProgram(Lme/regexp/REProgram;)V

    invoke-virtual {p0, p2}, Lme/regexp/RE;->setMatchFlags(I)V

    return-void
.end method

.method private static a(CCZ)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {p0}, Lme/regexp/RECharacter;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Lme/regexp/RECharacter;->toLowerCase(C)C

    move-result p1

    :cond_0
    sub-int v0, p0, p1

    return v0
.end method

.method private a()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lme/regexp/RE;->d:I

    new-array v0, v0, [I

    iput-object v0, p0, Lme/regexp/RE;->l:[I

    iget v0, p0, Lme/regexp/RE;->d:I

    new-array v0, v0, [I

    iput-object v0, p0, Lme/regexp/RE;->m:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lme/regexp/RE;->d:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lme/regexp/RE;->l:[I

    aput v2, v1, v0

    iget-object v1, p0, Lme/regexp/RE;->m:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(I)Z
    .locals 2

    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, p1}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x85

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2028

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2029

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static simplePatternToFullRegularExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string v2, ".*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :sswitch_1
    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_1
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2a -> :sswitch_0
        0x2b -> :sswitch_1
        0x2e -> :sswitch_1
        0x3f -> :sswitch_1
        0x5b -> :sswitch_1
        0x5c -> :sswitch_1
        0x5d -> :sswitch_1
        0x5e -> :sswitch_1
        0x7b -> :sswitch_1
        0x7c -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public getMatchFlags()I
    .locals 1

    iget v0, p0, Lme/regexp/RE;->c:I

    return v0
.end method

.method public getParen(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lme/regexp/RE;->e:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lme/regexp/RE;->getParenStart(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-virtual {p0, p1}, Lme/regexp/RE;->getParenEnd(I)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lme/regexp/CharacterIterator;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParenCount()I
    .locals 1

    iget v0, p0, Lme/regexp/RE;->e:I

    return v0
.end method

.method public final getParenEnd(I)I
    .locals 1

    iget v0, p0, Lme/regexp/RE;->e:I

    if-ge p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lme/regexp/RE;->m:[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lme/regexp/RE;->a()V

    :cond_0
    iget-object v0, p0, Lme/regexp/RE;->m:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lme/regexp/RE;->g:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lme/regexp/RE;->i:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lme/regexp/RE;->k:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getParenLength(I)I
    .locals 2

    iget v0, p0, Lme/regexp/RE;->e:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lme/regexp/RE;->getParenEnd(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lme/regexp/RE;->getParenStart(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getParenStart(I)I
    .locals 1

    iget v0, p0, Lme/regexp/RE;->e:I

    if-ge p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lme/regexp/RE;->l:[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lme/regexp/RE;->a()V

    :cond_0
    iget-object v0, p0, Lme/regexp/RE;->l:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lme/regexp/RE;->f:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lme/regexp/RE;->h:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lme/regexp/RE;->j:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getProgram()Lme/regexp/REProgram;
    .locals 1

    iget-object v0, p0, Lme/regexp/RE;->a:Lme/regexp/REProgram;

    return-object v0
.end method

.method public grep([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lme/regexp/RE;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method

.method protected internalError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RE internal error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lme/regexp/RE;->match(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/String;I)Z
    .locals 1

    new-instance v0, Lme/regexp/StringCharacterIterator;

    invoke-direct {v0, p1}, Lme/regexp/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lme/regexp/RE;->match(Lme/regexp/CharacterIterator;I)Z

    move-result v0

    return v0
.end method

.method public match(Lme/regexp/CharacterIterator;I)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lme/regexp/RE;->a:Lme/regexp/REProgram;

    if-nez v0, :cond_0

    const-string v0, "No RE program to run!"

    invoke-virtual {p0, v0}, Lme/regexp/RE;->internalError(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    iget-object v0, p0, Lme/regexp/RE;->a:Lme/regexp/REProgram;

    iget v0, v0, Lme/regexp/REProgram;->c:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    iget v0, p0, Lme/regexp/RE;->c:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    if-nez p2, :cond_2

    invoke-virtual {p0, p2}, Lme/regexp/RE;->matchAt(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 p2, p2, 0x1

    :cond_4
    invoke-interface {p1, p2}, Lme/regexp/CharacterIterator;->isEnd(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p2}, Lme/regexp/RE;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Lme/regexp/RE;->matchAt(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-interface {p1, p2}, Lme/regexp/CharacterIterator;->isEnd(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p2}, Lme/regexp/RE;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lme/regexp/RE;->a:Lme/regexp/REProgram;

    iget-object v0, v0, Lme/regexp/REProgram;->b:[C

    if-nez v0, :cond_8

    :goto_2
    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Lme/regexp/CharacterIterator;->isEnd(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, p2}, Lme/regexp/RE;->matchAt(I)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    iget v0, p0, Lme/regexp/RE;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    move v0, v1

    :goto_3
    iget-object v3, p0, Lme/regexp/RE;->a:Lme/regexp/REProgram;

    iget-object v6, v3, Lme/regexp/REProgram;->b:[C

    :goto_4
    array-length v3, v6

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Lme/regexp/CharacterIterator;->isEnd(I)Z

    move-result v3

    if-nez v3, :cond_d

    move v3, v2

    move v4, p2

    :goto_5
    add-int/lit8 v5, v4, 0x1

    invoke-interface {p1, v4}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v7

    add-int/lit8 v4, v3, 0x1

    aget-char v3, v6, v3

    invoke-static {v7, v3, v0}, Lme/regexp/RE;->a(CCZ)I

    move-result v3

    if-nez v3, :cond_c

    move v3, v1

    :goto_6
    if-eqz v3, :cond_9

    array-length v3, v6

    if-lt v4, v3, :cond_e

    :cond_9
    array-length v3, v6

    if-ne v4, v3, :cond_a

    invoke-virtual {p0, p2}, Lme/regexp/RE;->matchAt(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    move v3, v2

    goto :goto_6

    :cond_d
    move v1, v2

    goto :goto_0

    :cond_e
    move v3, v4

    move v4, v5

    goto :goto_5
.end method

.method protected matchAt(I)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    iput v3, p0, Lme/regexp/RE;->f:I

    iput v3, p0, Lme/regexp/RE;->g:I

    iput v3, p0, Lme/regexp/RE;->h:I

    iput v3, p0, Lme/regexp/RE;->i:I

    iput v3, p0, Lme/regexp/RE;->j:I

    iput v3, p0, Lme/regexp/RE;->k:I

    iput-object v2, p0, Lme/regexp/RE;->l:[I

    iput-object v2, p0, Lme/regexp/RE;->m:[I

    iput v0, p0, Lme/regexp/RE;->e:I

    invoke-virtual {p0, v1, p1}, Lme/regexp/RE;->setParenStart(II)V

    iget-object v2, p0, Lme/regexp/RE;->a:Lme/regexp/REProgram;

    iget v2, v2, Lme/regexp/REProgram;->c:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lme/regexp/RE;->d:I

    new-array v2, v2, [I

    iput-object v2, p0, Lme/regexp/RE;->n:[I

    iget v2, p0, Lme/regexp/RE;->d:I

    new-array v2, v2, [I

    iput-object v2, p0, Lme/regexp/RE;->o:[I

    :cond_0
    const/high16 v2, 0x10000

    invoke-virtual {p0, v1, v2, p1}, Lme/regexp/RE;->matchNodes(III)I

    move-result v2

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v1, v2}, Lme/regexp/RE;->setParenEnd(II)V

    :goto_0
    return v0

    :cond_1
    iput v1, p0, Lme/regexp/RE;->e:I

    move v0, v1

    goto :goto_0
.end method

.method protected matchNodes(III)I
    .locals 10

    iget-object v0, p0, Lme/regexp/RE;->a:Lme/regexp/REProgram;

    iget-object v4, v0, Lme/regexp/REProgram;->a:[C

    move v1, p1

    move v2, p3

    :goto_0
    if-ge v1, p2, :cond_34

    aget-char v0, v4, v1

    add-int/lit8 v3, v1, 0x2

    aget-char v3, v4, v3

    int-to-short v3, v3

    add-int p1, v1, v3

    add-int/lit8 v3, v1, 0x1

    aget-char v5, v4, v3

    sparse-switch v0, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid opcode \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/regexp/RE;->internalError(Ljava/lang/String;)V

    :cond_0
    move v0, v2

    :goto_1
    move v1, p1

    move v2, v0

    goto :goto_0

    :sswitch_0
    add-int/lit8 v0, v1, 0x3

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1, v2}, Lme/regexp/RE;->matchNodes(III)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v2, v0

    :goto_2
    return v2

    :sswitch_1
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0, v2}, Lme/regexp/RE;->matchNodes(III)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    move v2, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, p1, 0x2

    aget-char v0, v4, v0

    int-to-short v0, v0

    add-int v1, p1, v0

    goto :goto_0

    :sswitch_2
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0, v2}, Lme/regexp/RE;->matchNodes(III)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p0, v0, p1, v2}, Lme/regexp/RE;->matchNodes(III)I

    move-result v2

    goto :goto_2

    :sswitch_3
    add-int/lit8 v0, p1, 0x2

    aget-char v0, v4, v0

    int-to-short v0, v0

    add-int/2addr v0, p1

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1, v2}, Lme/regexp/RE;->matchNodes(III)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v2, v0

    goto :goto_2

    :sswitch_4
    iget-object v0, p0, Lme/regexp/RE;->a:Lme/regexp/REProgram;

    iget v0, v0, Lme/regexp/REProgram;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lme/regexp/RE;->n:[I

    aput v2, v0, v5

    :cond_3
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0, v2}, Lme/regexp/RE;->matchNodes(III)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget v1, p0, Lme/regexp/RE;->e:I

    if-lt v5, v1, :cond_4

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Lme/regexp/RE;->e:I

    :cond_4
    invoke-virtual {p0, v5}, Lme/regexp/RE;->getParenStart(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    invoke-virtual {p0, v5, v2}, Lme/regexp/RE;->setParenStart(II)V

    :cond_5
    move v2, v0

    goto :goto_2

    :sswitch_5
    iget-object v0, p0, Lme/regexp/RE;->a:Lme/regexp/REProgram;

    iget v0, v0, Lme/regexp/REProgram;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lme/regexp/RE;->o:[I

    aput v2, v0, v5

    :cond_6
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0, v2}, Lme/regexp/RE;->matchNodes(III)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v1, p0, Lme/regexp/RE;->e:I

    if-lt v5, v1, :cond_7

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Lme/regexp/RE;->e:I

    :cond_7
    invoke-virtual {p0, v5}, Lme/regexp/RE;->getParenEnd(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_8

    invoke-virtual {p0, v5, v2}, Lme/regexp/RE;->setParenEnd(II)V

    :cond_8
    move v2, v0

    goto/16 :goto_2

    :sswitch_6
    iget-object v0, p0, Lme/regexp/RE;->n:[I

    aget v6, v0, v5

    iget-object v0, p0, Lme/regexp/RE;->o:[I

    aget v0, v0, v5

    const/4 v1, -0x1

    if-eq v6, v1, :cond_9

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    :cond_9
    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_a
    if-eq v6, v0, :cond_0

    sub-int v5, v0, v6

    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    add-int v1, v2, v5

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lme/regexp/CharacterIterator;->isEnd(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_b
    iget v0, p0, Lme/regexp/RE;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_3
    const/4 v1, 0x0

    move v9, v1

    move v1, v2

    move v2, v9

    :goto_4
    if-ge v2, v5, :cond_e

    iget-object v7, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v7, v1}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v1

    iget-object v7, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    add-int v8, v6, v2

    invoke-interface {v7, v8}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v7

    invoke-static {v1, v7, v0}, Lme/regexp/RE;->a(CCZ)I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_c
    const/4 v0, 0x0

    goto :goto_3

    :cond_d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_4

    :cond_e
    move v0, v1

    goto/16 :goto_1

    :sswitch_7
    if-eqz v2, :cond_0

    iget v0, p0, Lme/regexp/RE;->c:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    add-int/lit8 v0, v2, -0x1

    invoke-direct {p0, v0}, Lme/regexp/RE;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_f
    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_8
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lme/regexp/CharacterIterator;->isEnd(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->isEnd(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lme/regexp/RE;->c:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    invoke-direct {p0, v2}, Lme/regexp/RE;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_10
    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_9
    sparse-switch v5, :sswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized escape \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/regexp/RE;->internalError(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_1

    :sswitch_a
    if-nez v2, :cond_11

    const/16 v0, 0xa

    :goto_5
    iget-object v1, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v1, v2}, Lme/regexp/CharacterIterator;->isEnd(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0xa

    :goto_6
    invoke-static {v0}, Lme/regexp/RECharacter;->isLetterOrDigit(C)Z

    move-result v0

    invoke-static {v1}, Lme/regexp/RECharacter;->isLetterOrDigit(C)Z

    move-result v1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    move v1, v0

    :goto_7
    const/16 v0, 0x62

    if-ne v5, v0, :cond_14

    const/4 v0, 0x1

    :goto_8
    if-ne v1, v0, :cond_15

    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_11
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    goto :goto_5

    :cond_12
    iget-object v1, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v1, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v1

    goto :goto_6

    :cond_13
    const/4 v0, 0x0

    move v1, v0

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    goto :goto_8

    :cond_15
    move v0, v2

    goto/16 :goto_1

    :sswitch_b
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->isEnd(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_16
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    sparse-switch v5, :sswitch_data_2

    :cond_17
    add-int/lit8 v0, v2, 0x1

    goto/16 :goto_1

    :sswitch_c
    invoke-static {v0}, Lme/regexp/RECharacter;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_18

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_19

    :cond_18
    const/4 v0, 0x1

    move v1, v0

    :goto_9
    const/16 v0, 0x77

    if-ne v5, v0, :cond_1a

    const/4 v0, 0x1

    :goto_a
    if-eq v1, v0, :cond_17

    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_19
    const/4 v0, 0x0

    move v1, v0

    goto :goto_9

    :cond_1a
    const/4 v0, 0x0

    goto :goto_a

    :sswitch_d
    invoke-static {v0}, Lme/regexp/RECharacter;->isDigit(C)Z

    move-result v1

    const/16 v0, 0x64

    if-ne v5, v0, :cond_1b

    const/4 v0, 0x1

    :goto_b
    if-eq v1, v0, :cond_17

    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_1b
    const/4 v0, 0x0

    goto :goto_b

    :sswitch_e
    invoke-static {v0}, Lme/regexp/RECharacter;->isWhitespace(C)Z

    move-result v1

    const/16 v0, 0x73

    if-ne v5, v0, :cond_1c

    const/4 v0, 0x1

    :goto_c
    if-eq v1, v0, :cond_17

    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_1c
    const/4 v0, 0x0

    goto :goto_c

    :sswitch_f
    iget v0, p0, Lme/regexp/RE;->c:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->isEnd(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_1d
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->isEnd(I)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct {p0, v2}, Lme/regexp/RE;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_1f
    add-int/lit8 v0, v2, 0x1

    goto/16 :goto_1

    :sswitch_10
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->isEnd(I)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_20
    add-int/lit8 v6, v1, 0x3

    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    add-int v1, v5, v2

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lme/regexp/CharacterIterator;->isEnd(I)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_21
    iget v0, p0, Lme/regexp/RE;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_d
    const/4 v1, 0x0

    move v9, v1

    move v1, v2

    move v2, v9

    :goto_e
    if-ge v2, v5, :cond_24

    iget-object v7, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v7, v1}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v1

    add-int v7, v6, v2

    aget-char v7, v4, v7

    invoke-static {v1, v7, v0}, Lme/regexp/RE;->a(CCZ)I

    move-result v1

    if-eqz v1, :cond_23

    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_22
    const/4 v0, 0x0

    goto :goto_d

    :cond_23
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_e

    :cond_24
    move v0, v1

    goto/16 :goto_1

    :sswitch_11
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->isEnd(I)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_25
    sparse-switch v5, :sswitch_data_3

    const-string v0, "Bad posix class"

    invoke-virtual {p0, v0}, Lme/regexp/RE;->internalError(Ljava/lang/String;)V

    :cond_26
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    goto/16 :goto_1

    :sswitch_12
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lme/regexp/RECharacter;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_13
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lme/regexp/RECharacter;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_14
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lme/regexp/RECharacter;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_15
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lme/regexp/RECharacter;->isSpaceChar(C)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_16
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lme/regexp/RECharacter;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_17
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lme/regexp/RECharacter;->getType(C)B

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_26

    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_18
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lme/regexp/RECharacter;->getType(C)B

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_19
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lme/regexp/RECharacter;->getType(C)B

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_1a
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lme/regexp/RECharacter;->getType(C)B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_1b
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lme/regexp/RECharacter;->getType(C)B

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_26

    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_1c
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lme/regexp/RECharacter;->getType(C)B

    move-result v0

    packed-switch v0, :pswitch_data_1

    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_1d
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_27

    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-le v0, v1, :cond_29

    :cond_27
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_28

    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    const/16 v1, 0x66

    if-le v0, v1, :cond_29

    :cond_28
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_2a

    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    const/16 v1, 0x46

    if-gt v0, v1, :cond_2a

    :cond_29
    const/4 v0, 0x1

    :goto_f
    if-nez v0, :cond_26

    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_2a
    const/4 v0, 0x0

    goto :goto_f

    :sswitch_1e
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lme/regexp/RECharacter;->isJavaIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_1f
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lme/regexp/RECharacter;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_20
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->isEnd(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_2b
    iget-object v0, p0, Lme/regexp/RE;->b:Lme/regexp/CharacterIterator;

    invoke-interface {v0, v2}, Lme/regexp/CharacterIterator;->charAt(I)C

    move-result v6

    iget v0, p0, Lme/regexp/RE;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_10
    add-int/lit8 v3, v1, 0x3

    shl-int/lit8 v1, v5, 0x1

    add-int v5, v3, v1

    const/4 v1, 0x0

    :goto_11
    if-nez v1, :cond_2e

    if-ge v3, v5, :cond_2e

    add-int/lit8 v1, v3, 0x1

    aget-char v7, v4, v3

    add-int/lit8 v3, v1, 0x1

    aget-char v1, v4, v1

    invoke-static {v6, v7, v0}, Lme/regexp/RE;->a(CCZ)I

    move-result v7

    if-ltz v7, :cond_2d

    invoke-static {v6, v1, v0}, Lme/regexp/RE;->a(CCZ)I

    move-result v1

    if-gtz v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_11

    :cond_2c
    const/4 v0, 0x0

    goto :goto_10

    :cond_2d
    const/4 v1, 0x0

    goto :goto_11

    :cond_2e
    if-nez v1, :cond_2f

    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_2f
    add-int/lit8 v0, v2, 0x1

    goto/16 :goto_1

    :sswitch_21
    aget-char v0, v4, p1

    const/16 v3, 0x7c

    if-eq v0, v3, :cond_30

    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_30
    move v0, v1

    :cond_31
    add-int/lit8 v1, v0, 0x3

    const/high16 v3, 0x10000

    invoke-virtual {p0, v1, v3, v2}, Lme/regexp/RE;->matchNodes(III)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_32

    move v2, v1

    goto/16 :goto_2

    :cond_32
    add-int/lit8 v1, v0, 0x2

    aget-char v1, v4, v1

    int-to-short v1, v1

    add-int/2addr v0, v1

    if-eqz v1, :cond_33

    aget-char v1, v4, v0

    const/16 v3, 0x7c

    if-eq v1, v3, :cond_31

    :cond_33
    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_22
    move v0, v2

    goto/16 :goto_1

    :sswitch_23
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :sswitch_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lme/regexp/RE;->setParenEnd(II)V

    goto/16 :goto_2

    :cond_34
    const-string v0, "Corrupt program"

    invoke-virtual {p0, v0}, Lme/regexp/RE;->internalError(Ljava/lang/String;)V

    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_6
        0x24 -> :sswitch_8
        0x28 -> :sswitch_4
        0x29 -> :sswitch_5
        0x2a -> :sswitch_0
        0x2b -> :sswitch_1
        0x2e -> :sswitch_f
        0x2f -> :sswitch_2
        0x38 -> :sswitch_2
        0x3c -> :sswitch_22
        0x3d -> :sswitch_3
        0x3e -> :sswitch_22
        0x3f -> :sswitch_0
        0x41 -> :sswitch_10
        0x43 -> :sswitch_23
        0x45 -> :sswitch_24
        0x47 -> :sswitch_22
        0x4e -> :sswitch_22
        0x50 -> :sswitch_11
        0x5b -> :sswitch_20
        0x5c -> :sswitch_9
        0x5e -> :sswitch_7
        0x7c -> :sswitch_21
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x42 -> :sswitch_a
        0x44 -> :sswitch_b
        0x53 -> :sswitch_b
        0x57 -> :sswitch_b
        0x62 -> :sswitch_a
        0x64 -> :sswitch_b
        0x73 -> :sswitch_b
        0x77 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x44 -> :sswitch_d
        0x53 -> :sswitch_e
        0x57 -> :sswitch_c
        0x64 -> :sswitch_d
        0x73 -> :sswitch_e
        0x77 -> :sswitch_c
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x21 -> :sswitch_1c
        0x61 -> :sswitch_13
        0x62 -> :sswitch_15
        0x63 -> :sswitch_17
        0x64 -> :sswitch_14
        0x67 -> :sswitch_18
        0x6a -> :sswitch_1e
        0x6b -> :sswitch_1f
        0x6c -> :sswitch_19
        0x70 -> :sswitch_1b
        0x73 -> :sswitch_16
        0x75 -> :sswitch_1a
        0x77 -> :sswitch_12
        0x78 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setMatchFlags(I)V
    .locals 0

    iput p1, p0, Lme/regexp/RE;->c:I

    return-void
.end method

.method protected final setParenEnd(II)V
    .locals 1

    iget v0, p0, Lme/regexp/RE;->e:I

    if-ge p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lme/regexp/RE;->m:[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lme/regexp/RE;->a()V

    :cond_0
    iget-object v0, p0, Lme/regexp/RE;->m:[I

    aput p2, v0, p1

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iput p2, p0, Lme/regexp/RE;->g:I

    goto :goto_0

    :pswitch_1
    iput p2, p0, Lme/regexp/RE;->i:I

    goto :goto_0

    :pswitch_2
    iput p2, p0, Lme/regexp/RE;->k:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final setParenStart(II)V
    .locals 1

    iget v0, p0, Lme/regexp/RE;->e:I

    if-ge p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lme/regexp/RE;->l:[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lme/regexp/RE;->a()V

    :cond_0
    iget-object v0, p0, Lme/regexp/RE;->l:[I

    aput p2, v0, p1

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iput p2, p0, Lme/regexp/RE;->f:I

    goto :goto_0

    :pswitch_1
    iput p2, p0, Lme/regexp/RE;->h:I

    goto :goto_0

    :pswitch_2
    iput p2, p0, Lme/regexp/RE;->j:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setProgram(Lme/regexp/REProgram;)V
    .locals 2

    iput-object p1, p0, Lme/regexp/RE;->a:Lme/regexp/REProgram;

    if-eqz p1, :cond_0

    iget v0, p1, Lme/regexp/REProgram;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lme/regexp/REProgram;->d:I

    iput v0, p0, Lme/regexp/RE;->d:I

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x10

    iput v0, p0, Lme/regexp/RE;->d:I

    goto :goto_0
.end method

.method public split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {p0, p1, v1}, Lme/regexp/RE;->match(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lme/regexp/RE;->getParenStart(I)I

    move-result v5

    invoke-virtual {p0, v2}, Lme/regexp/RE;->getParenEnd(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method

.method public subst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lme/regexp/RE;->subst(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public subst(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_6

    invoke-virtual {p0, p1, v3}, Lme/regexp/RE;->match(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2}, Lme/regexp/RE;->getParenStart(I)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_5

    const/4 v0, -0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    move v1, v2

    :goto_1
    const-string v7, "$"

    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_3

    if-eqz v1, :cond_0

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_2

    :cond_0
    add-int/lit8 v7, v1, 0x1

    if-ge v7, v6, :cond_2

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-lt v7, v8, :cond_2

    const/16 v8, 0x39

    if-gt v7, v8, :cond_2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v7, -0x30

    invoke-virtual {p0, v0}, Lme/regexp/RE;->getParen(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    move v0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {p0, v2}, Lme/regexp/RE;->getParenEnd(I)I

    move-result v0

    if-ne v0, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_7

    move v3, v0

    goto :goto_0

    :cond_5
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    move v0, v3

    :cond_7
    if-ge v0, v5, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
