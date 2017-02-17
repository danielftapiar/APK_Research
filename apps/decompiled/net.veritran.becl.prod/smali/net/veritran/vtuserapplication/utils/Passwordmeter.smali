.class public Lnet/veritran/vtuserapplication/utils/Passwordmeter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field public attribs:[Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Hashtable;

.field public consecutiveLowercase:I

.field public consecutiveNumbers:I

.field public consecutiveUppercase:I

.field private d:[I

.field public lettersOnly:I

.field public lowercase:I

.field public middleNumbersSymbols:I

.field public numberCharacters:I

.field public numbers:I

.field public numbersOnly:I

.field public points:Ljava/util/Hashtable;

.field public repeatCharacters_caseInsensitive:I

.field public requirements:I

.field public score:I

.field public sequentialLetters:I

.field public sequentialNumbers:I

.field public symbols:I

.field public uppercase:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/veritran/vtuserapplication/utils/Passwordmeter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0xf

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Number of Characters"

    aput-object v1, v0, v3

    const-string v1, "Uppercase Letters"

    aput-object v1, v0, v5

    const-string v1, "Lowercase Letters"

    aput-object v1, v0, v6

    const-string v1, "Numbers"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Symbols"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Middle Numbers or Symbols"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Requirements"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Letters Only"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Numbers Only"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Repeat Characters (Case Insensitive)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Consecutive Uppercase Letters"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Consecutive Lowercase Letters"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Consecutive Numbers"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Sequential Letters (3+)"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Sequential Numbers (3+)"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->attribs:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "[+(n*4)]"

    aput-object v1, v0, v3

    const-string v1, "[+((len-n)*2)]"

    aput-object v1, v0, v5

    const-string v1, "[+((len-n)*2)]"

    aput-object v1, v0, v6

    const-string v1, "[+(n*4)]"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "[+(n*6)]"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "[+(n*2)]"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "[+(n*2)]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "[-n]"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "[-n*2]"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "[-(n(n)]"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "[-(n*2)]"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "[-(n*2)]"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "[-(n*2)]"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "[-(n*3)]"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "[-(n*3)]"

    aput-object v2, v0, v1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->points:Ljava/util/Hashtable;

    iput v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numberCharacters:I

    iput v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->uppercase:I

    iput v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->lowercase:I

    iput v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numbers:I

    iput v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->symbols:I

    iput v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->middleNumbersSymbols:I

    iput v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->requirements:I

    iput v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->lettersOnly:I

    iput v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numbersOnly:I

    iput v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->repeatCharacters_caseInsensitive:I

    iput v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->consecutiveUppercase:I

    iput v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->consecutiveLowercase:I

    iput v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->consecutiveNumbers:I

    iput v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->sequentialLetters:I

    iput v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->sequentialNumbers:I

    iput v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->score:I

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->processChain(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->computeCounters()V

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x2
        0x2
        0x4
        0x6
        0x2
        0x2
        0x1
        0x2
        0x1
        0x2
        0x2
        0x2
        0x3
        0x3
    .end array-data
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_2

    invoke-static {p1}, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->a(C)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x41

    if-lt p1, v2, :cond_0

    const/16 v2, 0x5a

    if-gt p1, v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    const/16 v2, 0x61

    if-lt p1, v2, :cond_1

    const/16 v2, 0x7a

    if-gt p1, v2, :cond_1

    move v2, v0

    :goto_1
    if-nez v2, :cond_2

    :goto_2
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    new-instance v1, Lnet/veritran/vtuserapplication/utils/Passwordmeter;

    aget-object v2, p0, v0

    invoke-direct {v1, v2}, Lnet/veritran/vtuserapplication/utils/Passwordmeter;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public calScore()V
    .locals 2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->getAdditions()I

    move-result v0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->getDeductions()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->score:I

    return-void
.end method

.method protected computeCounters()V
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numberCharacters:I

    const/4 v0, 0x0

    move v1, v2

    move-object v3, v0

    move v4, v2

    move v5, v2

    :goto_0
    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numberCharacters:I

    if-ge v1, v0, :cond_b

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, v6}, Ljava/lang/Character;-><init>(C)V

    new-instance v7, Ljava/lang/Character;

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-direct {v7, v0}, Ljava/lang/Character;-><init>(C)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v8, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->c:Ljava/util/Hashtable;

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v7, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numbers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numbers:I

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->consecutiveNumbers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->consecutiveNumbers:I

    :cond_0
    :goto_2
    invoke-static {v6}, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->a(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v6}, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->b(C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-lez v1, :cond_2

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numberCharacters:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->middleNumbersSymbols:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->middleNumbersSymbols:I

    :cond_2
    if-eqz v3, :cond_7

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    if-ne v0, v7, :cond_7

    add-int/lit8 v5, v5, 0x1

    :goto_3
    if-eqz v3, :cond_9

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-ne v0, v3, :cond_9

    add-int/lit8 v4, v4, 0x1

    :goto_4
    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, v6}, Ljava/lang/Character;-><init>(C)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->c:Ljava/util/Hashtable;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->uppercase:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->uppercase:I

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->consecutiveUppercase:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->consecutiveUppercase:I

    goto/16 :goto_2

    :cond_5
    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->lowercase:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->lowercase:I

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->consecutiveLowercase:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->consecutiveLowercase:I

    goto/16 :goto_2

    :cond_6
    invoke-direct {p0, v6}, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->symbols:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->symbols:I

    goto/16 :goto_2

    :cond_7
    if-le v5, v10, :cond_8

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->sequentialLetters:I

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v0, v5

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->sequentialLetters:I

    :cond_8
    move v5, v2

    goto/16 :goto_3

    :cond_9
    if-le v4, v10, :cond_a

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->sequentialNumbers:I

    add-int/lit8 v3, v4, -0x1

    add-int/2addr v0, v3

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->sequentialNumbers:I

    :cond_a
    move v4, v2

    goto :goto_4

    :cond_b
    if-le v5, v10, :cond_c

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->sequentialLetters:I

    add-int/lit8 v1, v5, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->sequentialLetters:I

    :cond_c
    if-le v4, v10, :cond_d

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->sequentialNumbers:I

    add-int/lit8 v1, v4, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->sequentialNumbers:I

    :cond_d
    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numbers:I

    if-lez v0, :cond_e

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->requirements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->requirements:I

    :cond_e
    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->uppercase:I

    if-lez v0, :cond_f

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->requirements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->requirements:I

    :cond_f
    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->lowercase:I

    if-lez v0, :cond_10

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->requirements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->requirements:I

    :cond_10
    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->symbols:I

    if-lez v0, :cond_11

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->requirements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->requirements:I

    :cond_11
    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numberCharacters:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_12

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->requirements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->requirements:I

    :cond_12
    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->symbols:I

    if-nez v0, :cond_13

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numbers:I

    if-nez v0, :cond_13

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numberCharacters:I

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->lettersOnly:I

    :cond_13
    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->symbols:I

    if-nez v0, :cond_14

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->uppercase:I

    if-nez v0, :cond_14

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->lowercase:I

    if-nez v0, :cond_14

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numberCharacters:I

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numbersOnly:I

    :cond_14
    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_15
    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_15

    iget v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->repeatCharacters_caseInsensitive:I

    add-int/2addr v0, v2

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->repeatCharacters_caseInsensitive:I

    goto :goto_5

    :cond_16
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->calScore()V

    return-void
.end method

.method public getAdditions()I
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    aget v2, v2, v1

    mul-int/2addr v2, v0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->points:Ljava/util/Hashtable;

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->attribs:[Ljava/lang/String;

    aget-object v3, v3, v1

    new-instance v4, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;

    iget v5, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numberCharacters:I

    invoke-direct {v4, p0, v5, v2}, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;-><init>(Lnet/veritran/vtuserapplication/utils/Passwordmeter;II)V

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->uppercase:I

    if-lez v0, :cond_1

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numberCharacters:I

    iget v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->uppercase:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    aget v3, v3, v6

    mul-int/2addr v0, v3

    :goto_0
    add-int/2addr v2, v0

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->points:Ljava/util/Hashtable;

    iget-object v4, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->attribs:[Ljava/lang/String;

    aget-object v4, v4, v6

    new-instance v5, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;

    iget v6, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->uppercase:I

    invoke-direct {v5, p0, v6, v0}, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;-><init>(Lnet/veritran/vtuserapplication/utils/Passwordmeter;II)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->lowercase:I

    if-lez v0, :cond_0

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numberCharacters:I

    iget v1, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->lowercase:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    aget v1, v1, v7

    mul-int/2addr v1, v0

    :cond_0
    add-int v0, v2, v1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->points:Ljava/util/Hashtable;

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->attribs:[Ljava/lang/String;

    aget-object v3, v3, v7

    new-instance v4, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;

    iget v5, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->lowercase:I

    invoke-direct {v4, p0, v5, v1}, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;-><init>(Lnet/veritran/vtuserapplication/utils/Passwordmeter;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numbers:I

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    aget v2, v2, v8

    mul-int/2addr v1, v2

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->points:Ljava/util/Hashtable;

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->attribs:[Ljava/lang/String;

    aget-object v3, v3, v8

    new-instance v4, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;

    iget v5, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numbers:I

    invoke-direct {v4, p0, v5, v1}, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;-><init>(Lnet/veritran/vtuserapplication/utils/Passwordmeter;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v0, v1

    iget v1, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->symbols:I

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    aget v2, v2, v9

    mul-int/2addr v1, v2

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->points:Ljava/util/Hashtable;

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->attribs:[Ljava/lang/String;

    aget-object v3, v3, v9

    new-instance v4, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;

    iget v5, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->symbols:I

    invoke-direct {v4, p0, v5, v1}, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;-><init>(Lnet/veritran/vtuserapplication/utils/Passwordmeter;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v0, v1

    iget v1, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->middleNumbersSymbols:I

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-int/2addr v1, v2

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->points:Ljava/util/Hashtable;

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->attribs:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    new-instance v4, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;

    iget v5, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->middleNumbersSymbols:I

    invoke-direct {v4, p0, v5, v1}, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;-><init>(Lnet/veritran/vtuserapplication/utils/Passwordmeter;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v0, v1

    iget v1, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->requirements:I

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-int/2addr v1, v2

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->points:Ljava/util/Hashtable;

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->attribs:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    new-instance v4, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;

    iget v5, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->requirements:I

    invoke-direct {v4, p0, v5, v1}, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;-><init>(Lnet/veritran/vtuserapplication/utils/Passwordmeter;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto/16 :goto_0
.end method

.method public getChain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDeductions()I
    .locals 9

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v3, 0x7

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->lettersOnly:I

    mul-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    aget v1, v1, v3

    mul-int/2addr v0, v1

    iget-object v1, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->points:Ljava/util/Hashtable;

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->attribs:[Ljava/lang/String;

    aget-object v2, v2, v3

    new-instance v3, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;

    iget v4, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->lettersOnly:I

    invoke-direct {v3, p0, v4, v0}, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;-><init>(Lnet/veritran/vtuserapplication/utils/Passwordmeter;II)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x0

    iget v1, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numbersOnly:I

    mul-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    aget v2, v2, v5

    mul-int/2addr v1, v2

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->points:Ljava/util/Hashtable;

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->attribs:[Ljava/lang/String;

    aget-object v3, v3, v5

    new-instance v4, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;

    iget v5, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->numbersOnly:I

    invoke-direct {v4, p0, v5, v1}, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;-><init>(Lnet/veritran/vtuserapplication/utils/Passwordmeter;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v0, v1

    iget v1, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->repeatCharacters_caseInsensitive:I

    mul-int/lit8 v1, v1, -0x1

    iget v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->repeatCharacters_caseInsensitive:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    aget v2, v2, v6

    mul-int/2addr v1, v2

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->points:Ljava/util/Hashtable;

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->attribs:[Ljava/lang/String;

    aget-object v3, v3, v6

    new-instance v4, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;

    iget v5, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->repeatCharacters_caseInsensitive:I

    invoke-direct {v4, p0, v5, v1}, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;-><init>(Lnet/veritran/vtuserapplication/utils/Passwordmeter;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v0, v1

    iget v1, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->consecutiveUppercase:I

    mul-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    aget v2, v2, v7

    mul-int/2addr v1, v2

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->points:Ljava/util/Hashtable;

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->attribs:[Ljava/lang/String;

    aget-object v3, v3, v7

    new-instance v4, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;

    iget v5, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->consecutiveUppercase:I

    invoke-direct {v4, p0, v5, v1}, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;-><init>(Lnet/veritran/vtuserapplication/utils/Passwordmeter;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v0, v1

    iget v1, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->consecutiveLowercase:I

    mul-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    aget v2, v2, v8

    mul-int/2addr v1, v2

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->points:Ljava/util/Hashtable;

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->attribs:[Ljava/lang/String;

    aget-object v3, v3, v8

    new-instance v4, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;

    iget v5, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->consecutiveLowercase:I

    invoke-direct {v4, p0, v5, v1}, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;-><init>(Lnet/veritran/vtuserapplication/utils/Passwordmeter;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v0, v1

    iget v1, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->consecutiveNumbers:I

    mul-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-int/2addr v1, v2

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->points:Ljava/util/Hashtable;

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->attribs:[Ljava/lang/String;

    const/16 v4, 0xc

    aget-object v3, v3, v4

    new-instance v4, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;

    iget v5, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->consecutiveNumbers:I

    invoke-direct {v4, p0, v5, v1}, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;-><init>(Lnet/veritran/vtuserapplication/utils/Passwordmeter;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v0, v1

    iget v1, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->sequentialLetters:I

    mul-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-int/2addr v1, v2

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->points:Ljava/util/Hashtable;

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->attribs:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    new-instance v4, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;

    iget v5, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->sequentialLetters:I

    invoke-direct {v4, p0, v5, v1}, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;-><init>(Lnet/veritran/vtuserapplication/utils/Passwordmeter;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v0, v1

    iget v1, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->sequentialNumbers:I

    mul-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-int/2addr v1, v2

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->points:Ljava/util/Hashtable;

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->attribs:[Ljava/lang/String;

    const/16 v4, 0xe

    aget-object v3, v3, v4

    new-instance v4, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;

    iget v5, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->sequentialNumbers:I

    invoke-direct {v4, p0, v5, v1}, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;-><init>(Lnet/veritran/vtuserapplication/utils/Passwordmeter;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v0, v1

    return v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->score:I

    return v0
.end method

.method protected processChain(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->d:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    return-void
.end method

.method protected showCounters()V
    .locals 0

    return-void
.end method
