.class public Lme/regexp/RECompiler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/regexp/RECompiler$a;
    }
.end annotation


# static fields
.field private static i:Ljava/util/Hashtable;


# instance fields
.field a:[C

.field b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lme/regexp/RECompiler;->i:Ljava/util/Hashtable;

    const-string v1, "alnum"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x77

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lme/regexp/RECompiler;->i:Ljava/util/Hashtable;

    const-string v1, "alpha"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x61

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lme/regexp/RECompiler;->i:Ljava/util/Hashtable;

    const-string v1, "blank"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x62

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lme/regexp/RECompiler;->i:Ljava/util/Hashtable;

    const-string v1, "cntrl"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x63

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lme/regexp/RECompiler;->i:Ljava/util/Hashtable;

    const-string v1, "digit"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lme/regexp/RECompiler;->i:Ljava/util/Hashtable;

    const-string v1, "graph"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x67

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lme/regexp/RECompiler;->i:Ljava/util/Hashtable;

    const-string v1, "lower"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x6c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lme/regexp/RECompiler;->i:Ljava/util/Hashtable;

    const-string v1, "print"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x70

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lme/regexp/RECompiler;->i:Ljava/util/Hashtable;

    const-string v1, "punct"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lme/regexp/RECompiler;->i:Ljava/util/Hashtable;

    const-string v1, "space"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x73

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lme/regexp/RECompiler;->i:Ljava/util/Hashtable;

    const-string v1, "upper"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x75

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lme/regexp/RECompiler;->i:Ljava/util/Hashtable;

    const-string v1, "xdigit"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x78

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lme/regexp/RECompiler;->i:Ljava/util/Hashtable;

    const-string v1, "javastart"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x6a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lme/regexp/RECompiler;->i:Ljava/util/Hashtable;

    const-string v1, "javapart"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x6b

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lme/regexp/RECompiler;->a:[C

    const/4 v0, 0x0

    iput v0, p0, Lme/regexp/RECompiler;->b:I

    return-void
.end method

.method private a(CI)I
    .locals 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lme/regexp/RECompiler;->a(I)V

    iget-object v0, p0, Lme/regexp/RECompiler;->a:[C

    iget v1, p0, Lme/regexp/RECompiler;->b:I

    aput-char p1, v0, v1

    iget-object v0, p0, Lme/regexp/RECompiler;->a:[C

    iget v1, p0, Lme/regexp/RECompiler;->b:I

    add-int/lit8 v1, v1, 0x1

    int-to-char v2, p2

    aput-char v2, v0, v1

    iget-object v0, p0, Lme/regexp/RECompiler;->a:[C

    iget v1, p0, Lme/regexp/RECompiler;->b:I

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    aput-char v2, v0, v1

    iget v0, p0, Lme/regexp/RECompiler;->b:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lme/regexp/RECompiler;->b:I

    iget v0, p0, Lme/regexp/RECompiler;->b:I

    add-int/lit8 v0, v0, -0x3

    return v0
.end method

.method private a([I)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/regexp/RESyntaxException;
        }
    .end annotation

    const/16 v13, 0x5d

    const/16 v12, 0x3a

    const/4 v3, 0x1

    const v6, 0xffff

    const/4 v1, 0x0

    iget-object v0, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v2, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    aget v0, p1, v1

    and-int/lit8 v0, v0, -0x2

    aput v0, p1, v1

    invoke-direct {p0}, Lme/regexp/RECompiler;->c()I

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    iget-object v0, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v2, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0, v1}, Lme/regexp/RECompiler;->a(CI)I

    move-result v0

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v2, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_0

    invoke-static {}, Lme/regexp/RECompiler;->a()V

    :cond_0
    iget v0, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lme/regexp/RECompiler;->d:I

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v2, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v13, :cond_2

    :cond_1
    const-string v0, "Empty or unterminated class"

    invoke-static {v0}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lme/regexp/RECompiler;->e:I

    iget v2, p0, Lme/regexp/RECompiler;->d:I

    if-ge v0, v2, :cond_6

    iget-object v0, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v2, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_6

    iget v0, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/regexp/RECompiler;->e:I

    iget v0, p0, Lme/regexp/RECompiler;->e:I

    :goto_2
    iget v2, p0, Lme/regexp/RECompiler;->e:I

    iget v4, p0, Lme/regexp/RECompiler;->d:I

    if-ge v2, v4, :cond_3

    iget-object v2, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v4, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x61

    if-lt v2, v4, :cond_3

    iget-object v2, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v4, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x7a

    if-gt v2, v4, :cond_3

    iget v2, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lme/regexp/RECompiler;->e:I

    goto :goto_2

    :cond_3
    iget v2, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v2, v2, 0x1

    iget v4, p0, Lme/regexp/RECompiler;->d:I

    if-ge v2, v4, :cond_5

    iget-object v2, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v4, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v12, :cond_5

    iget-object v2, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v4, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v13, :cond_5

    iget-object v2, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v4, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lme/regexp/RECompiler;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    if-eqz v0, :cond_4

    iget v1, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lme/regexp/RECompiler;->e:I

    const/16 v1, 0x50

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {p0, v1, v0}, Lme/regexp/RECompiler;->a(CI)I

    move-result v0

    goto/16 :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Invalid POSIX character class \'"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_5
    const-string v0, "Invalid POSIX character class syntax"

    invoke-static {v0}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_6
    const/16 v0, 0x5b

    invoke-direct {p0, v0, v1}, Lme/regexp/RECompiler;->a(CI)I

    move-result v7

    iget v8, p0, Lme/regexp/RECompiler;->e:I

    new-instance v9, Lme/regexp/RECompiler$a;

    invoke-direct {v9, p0}, Lme/regexp/RECompiler$a;-><init>(Lme/regexp/RECompiler;)V

    move v0, v1

    move v2, v1

    move v4, v3

    move v5, v6

    :cond_7
    :goto_3
    iget v10, p0, Lme/regexp/RECompiler;->e:I

    iget v11, p0, Lme/regexp/RECompiler;->d:I

    if-ge v10, v11, :cond_10

    iget-object v10, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v11, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v13, :cond_10

    iget-object v10, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v11, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sparse-switch v10, :sswitch_data_1

    iget-object v5, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v10, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_4
    if-eqz v2, :cond_e

    if-lt v0, v5, :cond_8

    const-string v2, "Bad character class"

    invoke-static {v2}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v9, v0, v5, v4}, Lme/regexp/RECompiler$a;->a(IIZ)V

    move v2, v1

    move v5, v6

    goto :goto_3

    :sswitch_2
    if-nez v4, :cond_a

    move v4, v3

    :goto_5
    iget v10, p0, Lme/regexp/RECompiler;->e:I

    if-ne v10, v8, :cond_9

    invoke-virtual {v9, v1, v6, v3}, Lme/regexp/RECompiler$a;->a(IIZ)V

    :cond_9
    iget v10, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lme/regexp/RECompiler;->e:I

    goto :goto_3

    :cond_a
    move v4, v1

    goto :goto_5

    :sswitch_3
    invoke-direct {p0}, Lme/regexp/RECompiler;->b()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    int-to-char v5, v5

    goto :goto_4

    :pswitch_0
    const-string v5, "Bad character class"

    invoke-static {v5}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :pswitch_1
    if-eqz v2, :cond_b

    const-string v5, "Bad character class"

    invoke-static {v5}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_b
    iget-object v5, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v10, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_2

    :goto_6
    move v5, v6

    goto :goto_3

    :sswitch_4
    const/4 v5, 0x7

    invoke-virtual {v9, v1, v5, v4}, Lme/regexp/RECompiler$a;->a(IIZ)V

    const/16 v5, 0xb

    invoke-virtual {v9, v5, v4}, Lme/regexp/RECompiler$a;->a(CZ)V

    const/16 v5, 0xe

    const/16 v10, 0x1f

    invoke-virtual {v9, v5, v10, v4}, Lme/regexp/RECompiler$a;->a(IIZ)V

    const/16 v5, 0x21

    invoke-virtual {v9, v5, v6, v4}, Lme/regexp/RECompiler$a;->a(IIZ)V

    goto :goto_6

    :sswitch_5
    const/16 v5, 0x2f

    invoke-virtual {v9, v1, v5, v4}, Lme/regexp/RECompiler$a;->a(IIZ)V

    const/16 v5, 0x40

    invoke-virtual {v9, v12, v5, v4}, Lme/regexp/RECompiler$a;->a(IIZ)V

    const/16 v5, 0x5b

    const/16 v10, 0x5e

    invoke-virtual {v9, v5, v10, v4}, Lme/regexp/RECompiler$a;->a(IIZ)V

    const/16 v5, 0x60

    invoke-virtual {v9, v5, v4}, Lme/regexp/RECompiler$a;->a(CZ)V

    const/16 v5, 0x7b

    invoke-virtual {v9, v5, v6, v4}, Lme/regexp/RECompiler$a;->a(IIZ)V

    goto :goto_6

    :sswitch_6
    const/16 v5, 0x2f

    invoke-virtual {v9, v1, v5, v4}, Lme/regexp/RECompiler$a;->a(IIZ)V

    invoke-virtual {v9, v12, v6, v4}, Lme/regexp/RECompiler$a;->a(IIZ)V

    goto :goto_6

    :sswitch_7
    const/16 v5, 0x9

    invoke-virtual {v9, v5, v4}, Lme/regexp/RECompiler$a;->a(CZ)V

    const/16 v5, 0xd

    invoke-virtual {v9, v5, v4}, Lme/regexp/RECompiler$a;->a(CZ)V

    const/16 v5, 0xc

    invoke-virtual {v9, v5, v4}, Lme/regexp/RECompiler$a;->a(CZ)V

    const/16 v5, 0xa

    invoke-virtual {v9, v5, v4}, Lme/regexp/RECompiler$a;->a(CZ)V

    const/16 v5, 0x8

    invoke-virtual {v9, v5, v4}, Lme/regexp/RECompiler$a;->a(CZ)V

    const/16 v5, 0x20

    invoke-virtual {v9, v5, v4}, Lme/regexp/RECompiler$a;->a(CZ)V

    goto :goto_6

    :sswitch_8
    const/16 v5, 0x61

    const/16 v10, 0x7a

    invoke-virtual {v9, v5, v10, v4}, Lme/regexp/RECompiler$a;->a(IIZ)V

    const/16 v5, 0x41

    const/16 v10, 0x5a

    invoke-virtual {v9, v5, v10, v4}, Lme/regexp/RECompiler$a;->a(IIZ)V

    const/16 v5, 0x5f

    invoke-virtual {v9, v5, v4}, Lme/regexp/RECompiler$a;->a(CZ)V

    :sswitch_9
    const/16 v5, 0x30

    const/16 v10, 0x39

    invoke-virtual {v9, v5, v10, v4}, Lme/regexp/RECompiler$a;->a(IIZ)V

    goto :goto_6

    :sswitch_a
    if-eqz v2, :cond_c

    const-string v0, "Bad class range"

    invoke-static {v0}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_c
    if-ne v5, v6, :cond_d

    move v0, v1

    :goto_7
    iget v2, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v2, v2, 0x1

    iget v10, p0, Lme/regexp/RECompiler;->d:I

    if-ge v2, v10, :cond_14

    iget-object v2, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v10, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v13, :cond_14

    move v2, v3

    move v5, v6

    goto/16 :goto_4

    :cond_d
    move v0, v5

    goto :goto_7

    :cond_e
    iget v10, p0, Lme/regexp/RECompiler;->e:I

    iget v11, p0, Lme/regexp/RECompiler;->d:I

    if-ge v10, v11, :cond_f

    iget-object v10, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v11, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_7

    :cond_f
    invoke-virtual {v9, v5, v4}, Lme/regexp/RECompiler$a;->a(CZ)V

    goto/16 :goto_3

    :cond_10
    iget v0, p0, Lme/regexp/RECompiler;->e:I

    iget v2, p0, Lme/regexp/RECompiler;->d:I

    if-ne v0, v2, :cond_11

    const-string v0, "Unterminated character class"

    invoke-static {v0}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_11
    iget v0, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/regexp/RECompiler;->e:I

    iget-object v0, p0, Lme/regexp/RECompiler;->a:[C

    add-int/lit8 v2, v7, 0x1

    iget v3, v9, Lme/regexp/RECompiler$a;->c:I

    int-to-char v3, v3

    aput-char v3, v0, v2

    :goto_8
    iget v0, v9, Lme/regexp/RECompiler$a;->c:I

    if-ge v1, v0, :cond_12

    iget-object v0, v9, Lme/regexp/RECompiler$a;->a:[I

    aget v0, v0, v1

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lme/regexp/RECompiler;->a(C)V

    iget-object v0, v9, Lme/regexp/RECompiler$a;->b:[I

    aget v0, v0, v1

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lme/regexp/RECompiler;->a(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    move v0, v7

    goto/16 :goto_1

    :sswitch_b
    invoke-direct {p0, p1}, Lme/regexp/RECompiler;->d([I)I

    move-result v0

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "Unexpected close paren"

    invoke-static {v0}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :sswitch_d
    invoke-static {}, Lme/regexp/RECompiler;->a()V

    :sswitch_e
    const-string v0, "Mismatched class"

    invoke-static {v0}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :sswitch_f
    const-string v0, "Unexpected end of input"

    invoke-static {v0}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :sswitch_10
    const-string v0, "Missing operand to closure"

    invoke-static {v0}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :sswitch_11
    iget v0, p0, Lme/regexp/RECompiler;->e:I

    invoke-direct {p0}, Lme/regexp/RECompiler;->b()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    iput v0, p0, Lme/regexp/RECompiler;->e:I

    aget v0, p1, v1

    and-int/lit8 v0, v0, -0x2

    aput v0, p1, v1

    goto/16 :goto_0

    :pswitch_2
    aget v0, p1, v1

    and-int/lit8 v0, v0, -0x2

    aput v0, p1, v1

    const/16 v0, 0x5c

    iget-object v1, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v2, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v0, v1}, Lme/regexp/RECompiler;->a(CI)I

    move-result v0

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v2, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    int-to-char v0, v0

    iget v2, p0, Lme/regexp/RECompiler;->f:I

    if-gt v2, v0, :cond_13

    const-string v2, "Bad backreference"

    invoke-static {v2}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_13
    aget v2, p1, v1

    or-int/lit8 v2, v2, 0x1

    aput v2, p1, v1

    const/16 v1, 0x23

    invoke-direct {p0, v1, v0}, Lme/regexp/RECompiler;->a(CI)I

    move-result v0

    goto/16 :goto_1

    :cond_14
    move v2, v3

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0x24 -> :sswitch_0
        0x28 -> :sswitch_b
        0x29 -> :sswitch_c
        0x2a -> :sswitch_10
        0x2b -> :sswitch_10
        0x2e -> :sswitch_0
        0x3f -> :sswitch_10
        0x5b -> :sswitch_1
        0x5c -> :sswitch_11
        0x5d -> :sswitch_e
        0x5e -> :sswitch_0
        0x7b -> :sswitch_10
        0x7c -> :sswitch_d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2d -> :sswitch_a
        0x5c -> :sswitch_3
        0x5e -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xffffd
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x44 -> :sswitch_6
        0x53 -> :sswitch_4
        0x57 -> :sswitch_5
        0x64 -> :sswitch_9
        0x73 -> :sswitch_7
        0x77 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0xffffd
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Internal error!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(C)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lme/regexp/RECompiler;->a(I)V

    iget-object v0, p0, Lme/regexp/RECompiler;->a:[C

    iget v1, p0, Lme/regexp/RECompiler;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lme/regexp/RECompiler;->b:I

    aput-char p1, v0, v1

    return-void
.end method

.method private a(CII)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lme/regexp/RECompiler;->a(I)V

    iget-object v0, p0, Lme/regexp/RECompiler;->a:[C

    iget-object v1, p0, Lme/regexp/RECompiler;->a:[C

    add-int/lit8 v2, p3, 0x3

    iget v3, p0, Lme/regexp/RECompiler;->b:I

    sub-int/2addr v3, p3

    invoke-static {v0, p3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lme/regexp/RECompiler;->a:[C

    aput-char p1, v0, p3

    iget-object v0, p0, Lme/regexp/RECompiler;->a:[C

    add-int/lit8 v1, p3, 0x1

    aput-char v4, v0, v1

    iget-object v0, p0, Lme/regexp/RECompiler;->a:[C

    add-int/lit8 v1, p3, 0x2

    aput-char v4, v0, v1

    iget v0, p0, Lme/regexp/RECompiler;->b:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lme/regexp/RECompiler;->b:I

    return-void
.end method

.method private a(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lme/regexp/RECompiler;->a:[C

    array-length v0, v0

    iget v1, p0, Lme/regexp/RECompiler;->b:I

    add-int/2addr v1, p1

    if-lt v1, v0, :cond_1

    :goto_0
    iget v1, p0, Lme/regexp/RECompiler;->b:I

    add-int/2addr v1, p1

    if-lt v1, v0, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v0, [C

    iget-object v1, p0, Lme/regexp/RECompiler;->a:[C

    iget v2, p0, Lme/regexp/RECompiler;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lme/regexp/RECompiler;->a:[C

    :cond_1
    return-void
.end method

.method private a(II)V
    .locals 3

    iget-object v0, p0, Lme/regexp/RECompiler;->a:[C

    add-int/lit8 v1, p1, 0x2

    aget-char v0, v0, v1

    move v1, v0

    move v0, p2

    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lme/regexp/RECompiler;->b:I

    if-ge p1, v2, :cond_1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lme/regexp/RECompiler;->b:I

    :cond_0
    add-int/2addr p1, v1

    iget-object v1, p0, Lme/regexp/RECompiler;->a:[C

    add-int/lit8 v2, p1, 0x2

    aget-char v1, v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Lme/regexp/RECompiler;->b:I

    if-ge p1, v1, :cond_3

    sub-int/2addr v0, p1

    int-to-short v1, v0

    if-eq v0, v1, :cond_2

    new-instance v0, Lme/regexp/RESyntaxException;

    const-string v1, "Exceeded short jump range."

    invoke-direct {v0, v1}, Lme/regexp/RESyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lme/regexp/RECompiler;->a:[C

    add-int/lit8 v2, p1, 0x2

    int-to-char v0, v0

    aput-char v0, v1, v2

    :cond_3
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/regexp/RESyntaxException;
        }
    .end annotation

    new-instance v0, Lme/regexp/RESyntaxException;

    invoke-direct {v0, p0}, Lme/regexp/RESyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/regexp/RESyntaxException;
        }
    .end annotation

    const/16 v5, 0x30

    iget-object v0, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v1, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_0

    invoke-static {}, Lme/regexp/RECompiler;->a()V

    :cond_0
    iget v0, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lme/regexp/RECompiler;->d:I

    if-ne v0, v1, :cond_1

    const-string v0, "Escape terminates string"

    invoke-static {v0}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lme/regexp/RECompiler;->e:I

    iget-object v0, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v1, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v0, v3

    :cond_2
    :goto_0
    return v0

    :sswitch_0
    const v0, 0xffffe

    goto :goto_0

    :sswitch_1
    const v0, 0xffffd

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x75

    if-ne v3, v0, :cond_3

    const/4 v0, 0x4

    :goto_1
    const/4 v1, 0x0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_2
    iget v2, p0, Lme/regexp/RECompiler;->e:I

    iget v4, p0, Lme/regexp/RECompiler;->d:I

    if-ge v2, v4, :cond_2

    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2

    iget-object v1, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v4, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v5, :cond_4

    const/16 v4, 0x39

    if-gt v1, v4, :cond_4

    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x30

    :goto_3
    iget v1, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lme/regexp/RECompiler;->e:I

    move v1, v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    const/16 v4, 0x61

    if-lt v1, v4, :cond_5

    const/16 v4, 0x66

    if-gt v1, v4, :cond_5

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v1, -0x61

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " hexadecimal digits after \\"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_3
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_6
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_7
    iget v0, p0, Lme/regexp/RECompiler;->e:I

    iget v1, p0, Lme/regexp/RECompiler;->d:I

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v1, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    if-ne v3, v5, :cond_8

    :cond_7
    add-int/lit8 v0, v3, -0x30

    iget v1, p0, Lme/regexp/RECompiler;->e:I

    iget v2, p0, Lme/regexp/RECompiler;->d:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v2, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    shl-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v2, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    iget v1, p0, Lme/regexp/RECompiler;->e:I

    iget v2, p0, Lme/regexp/RECompiler;->d:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v2, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    shl-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v2, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    goto/16 :goto_0

    :cond_8
    const v0, 0xfffff

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_7
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x42 -> :sswitch_0
        0x44 -> :sswitch_1
        0x53 -> :sswitch_1
        0x57 -> :sswitch_1
        0x62 -> :sswitch_0
        0x64 -> :sswitch_1
        0x66 -> :sswitch_6
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x73 -> :sswitch_1
        0x74 -> :sswitch_3
        0x75 -> :sswitch_2
        0x77 -> :sswitch_1
        0x78 -> :sswitch_2
    .end sparse-switch
.end method

.method private b([I)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/regexp/RESyntaxException;
        }
    .end annotation

    const/16 v9, 0x7d

    const/4 v2, 0x1

    const/16 v12, 0x4e

    const/16 v11, 0x3f

    const/4 v1, 0x0

    iget v6, p0, Lme/regexp/RECompiler;->e:I

    new-array v7, v2, [I

    aput v1, v7, v1

    invoke-direct {p0, v7}, Lme/regexp/RECompiler;->a([I)I

    move-result v0

    aget v3, p1, v1

    aget v4, v7, v1

    or-int/2addr v3, v4

    aput v3, p1, v1

    iget v3, p0, Lme/regexp/RECompiler;->e:I

    iget v4, p0, Lme/regexp/RECompiler;->d:I

    if-lt v3, v4, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v4, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    iget v3, p0, Lme/regexp/RECompiler;->e:I

    iget v5, p0, Lme/regexp/RECompiler;->d:I

    if-ge v3, v5, :cond_1b

    iget-object v3, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v5, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v11, :cond_1b

    iget v3, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lme/regexp/RECompiler;->e:I

    move v3, v1

    :goto_2
    if-eqz v3, :cond_1a

    sparse-switch v4, :sswitch_data_1

    goto :goto_0

    :sswitch_0
    const/16 v2, 0x2a

    invoke-direct {p0, v2, v1, v0}, Lme/regexp/RECompiler;->a(CII)V

    add-int/lit8 v1, v0, 0x3

    invoke-direct {p0, v1, v0}, Lme/regexp/RECompiler;->a(II)V

    goto :goto_0

    :sswitch_1
    aget v3, p1, v1

    or-int/lit8 v3, v3, 0x1

    aput v3, p1, v1

    :sswitch_2
    iget v3, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lme/regexp/RECompiler;->e:I

    :sswitch_3
    iget-object v3, p0, Lme/regexp/RECompiler;->a:[C

    aget-char v3, v3, v0

    const/16 v5, 0x5e

    if-eq v3, v5, :cond_2

    const/16 v5, 0x24

    if-ne v3, v5, :cond_3

    :cond_2
    const-string v3, "Bad closure operand"

    invoke-static {v3}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_3
    aget v3, v7, v1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const-string v3, "Closure operand can\'t be nullable"

    invoke-static {v3}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    iget v3, p0, Lme/regexp/RECompiler;->e:I

    iget v4, p0, Lme/regexp/RECompiler;->d:I

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v4, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_5

    :cond_4
    invoke-static {}, Lme/regexp/RECompiler;->a()V

    :cond_5
    iget v3, p0, Lme/regexp/RECompiler;->e:I

    iget v4, p0, Lme/regexp/RECompiler;->d:I

    if-ge v3, v4, :cond_6

    iget-object v3, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v4, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    const-string v3, "Expected digit"

    invoke-static {v3}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_3
    iget v4, p0, Lme/regexp/RECompiler;->e:I

    iget v5, p0, Lme/regexp/RECompiler;->d:I

    if-ge v4, v5, :cond_8

    iget-object v4, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v5, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v5, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lme/regexp/RECompiler;->g:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iget v4, p0, Lme/regexp/RECompiler;->e:I

    iget v5, p0, Lme/regexp/RECompiler;->d:I

    if-lt v4, v5, :cond_9

    const-string v4, "Expected comma or right bracket"

    invoke-static {v4}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_9
    iget-object v4, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v5, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_b

    iget v3, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lme/regexp/RECompiler;->e:I

    iput v1, p0, Lme/regexp/RECompiler;->h:I

    :cond_a
    :goto_5
    iget v8, p0, Lme/regexp/RECompiler;->e:I

    iget v9, p0, Lme/regexp/RECompiler;->g:I

    iget v10, p0, Lme/regexp/RECompiler;->h:I

    move v3, v1

    move v4, v0

    :goto_6
    if-ge v3, v9, :cond_15

    iput v6, p0, Lme/regexp/RECompiler;->e:I

    invoke-direct {p0, v7}, Lme/regexp/RECompiler;->a([I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lme/regexp/RECompiler;->a(II)V

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_6

    :catch_0
    move-exception v4

    const-string v4, "Expected valid number"

    invoke-static {v4}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    iget v4, p0, Lme/regexp/RECompiler;->e:I

    iget v5, p0, Lme/regexp/RECompiler;->d:I

    if-ge v4, v5, :cond_c

    iget-object v4, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v5, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_d

    :cond_c
    const-string v4, "Expected comma"

    invoke-static {v4}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_d
    iget v4, p0, Lme/regexp/RECompiler;->e:I

    iget v5, p0, Lme/regexp/RECompiler;->d:I

    if-lt v4, v5, :cond_e

    const-string v4, "Expected comma or right bracket"

    invoke-static {v4}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_e
    iget-object v4, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v5, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_f

    iget v3, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lme/regexp/RECompiler;->e:I

    const/4 v3, -0x1

    iput v3, p0, Lme/regexp/RECompiler;->h:I

    goto :goto_5

    :cond_f
    iget v4, p0, Lme/regexp/RECompiler;->e:I

    iget v5, p0, Lme/regexp/RECompiler;->d:I

    if-ge v4, v5, :cond_10

    iget-object v4, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v5, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_11

    :cond_10
    const-string v4, "Expected digit"

    invoke-static {v4}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_7
    iget v4, p0, Lme/regexp/RECompiler;->e:I

    iget v5, p0, Lme/regexp/RECompiler;->d:I

    if-ge v4, v5, :cond_12

    iget-object v4, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v5, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v5, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_12
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lme/regexp/RECompiler;->g:I

    sub-int/2addr v3, v4

    iput v3, p0, Lme/regexp/RECompiler;->h:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_8
    iget v3, p0, Lme/regexp/RECompiler;->h:I

    if-gez v3, :cond_13

    const-string v3, "Bad range"

    invoke-static {v3}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_13
    iget v3, p0, Lme/regexp/RECompiler;->e:I

    iget v4, p0, Lme/regexp/RECompiler;->d:I

    if-ge v3, v4, :cond_14

    iget-object v3, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v4, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v9, :cond_a

    :cond_14
    const-string v3, "Missing close brace"

    invoke-static {v3}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_1
    move-exception v3

    const-string v3, "Expected valid number"

    invoke-static {v3}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_15
    const/4 v3, -0x1

    if-ne v10, v3, :cond_16

    iput v8, p0, Lme/regexp/RECompiler;->e:I

    const/16 v2, 0x2a

    invoke-direct {p0, v2, v1, v4}, Lme/regexp/RECompiler;->a(CII)V

    add-int/lit8 v1, v4, 0x3

    invoke-direct {p0, v1, v4}, Lme/regexp/RECompiler;->a(II)V

    goto/16 :goto_0

    :cond_16
    if-lez v10, :cond_18

    add-int/lit8 v3, v10, 0x1

    new-array v3, v3, [I

    invoke-direct {p0, v11, v1, v4}, Lme/regexp/RECompiler;->a(CII)V

    aput v4, v3, v1

    :goto_9
    if-ge v2, v10, :cond_17

    invoke-direct {p0, v11, v1}, Lme/regexp/RECompiler;->a(CI)I

    move-result v4

    aput v4, v3, v2

    iput v6, p0, Lme/regexp/RECompiler;->e:I

    invoke-direct {p0, v7}, Lme/regexp/RECompiler;->a([I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    invoke-direct {p0, v12, v1}, Lme/regexp/RECompiler;->a(CI)I

    move-result v2

    aput v2, v3, v10

    :goto_a
    if-ge v1, v10, :cond_19

    aget v4, v3, v1

    invoke-direct {p0, v4, v2}, Lme/regexp/RECompiler;->a(II)V

    aget v4, v3, v1

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v1, 0x1

    aget v5, v3, v5

    invoke-direct {p0, v4, v5}, Lme/regexp/RECompiler;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    iput v4, p0, Lme/regexp/RECompiler;->b:I

    invoke-direct {p0, v12, v1}, Lme/regexp/RECompiler;->a(CI)I

    :cond_19
    iput v8, p0, Lme/regexp/RECompiler;->e:I

    goto/16 :goto_0

    :sswitch_5
    invoke-direct {p0, v11, v1, v0}, Lme/regexp/RECompiler;->a(CII)V

    invoke-direct {p0, v12, v1}, Lme/regexp/RECompiler;->a(CI)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lme/regexp/RECompiler;->a(II)V

    add-int/lit8 v2, v0, 0x3

    invoke-direct {p0, v2, v1}, Lme/regexp/RECompiler;->a(II)V

    goto/16 :goto_0

    :sswitch_6
    const/16 v2, 0x43

    invoke-direct {p0, v2, v1, v0}, Lme/regexp/RECompiler;->a(CII)V

    const/16 v2, 0x2b

    invoke-direct {p0, v2, v1}, Lme/regexp/RECompiler;->a(CI)I

    move-result v1

    add-int/lit8 v2, v0, 0x3

    invoke-direct {p0, v2, v1}, Lme/regexp/RECompiler;->a(II)V

    invoke-direct {p0, v1, v0}, Lme/regexp/RECompiler;->a(II)V

    goto/16 :goto_0

    :cond_1a
    sparse-switch v4, :sswitch_data_2

    goto/16 :goto_0

    :sswitch_7
    const/16 v2, 0x38

    invoke-direct {p0, v2, v1, v0}, Lme/regexp/RECompiler;->a(CII)V

    add-int/lit8 v1, v0, 0x3

    invoke-direct {p0, v1, v0}, Lme/regexp/RECompiler;->a(II)V

    goto/16 :goto_0

    :sswitch_8
    const/16 v2, 0x2f

    invoke-direct {p0, v2, v1, v0}, Lme/regexp/RECompiler;->a(CII)V

    invoke-direct {p0, v12, v1}, Lme/regexp/RECompiler;->a(CI)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lme/regexp/RECompiler;->a(II)V

    add-int/lit8 v2, v0, 0x3

    invoke-direct {p0, v2, v1}, Lme/regexp/RECompiler;->a(II)V

    goto/16 :goto_0

    :sswitch_9
    const/16 v2, 0x43

    invoke-direct {p0, v2, v1, v0}, Lme/regexp/RECompiler;->a(CII)V

    const/16 v2, 0x3d

    invoke-direct {p0, v2, v1}, Lme/regexp/RECompiler;->a(CI)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lme/regexp/RECompiler;->a(II)V

    add-int/lit8 v2, v0, 0x3

    invoke-direct {p0, v2, v1}, Lme/regexp/RECompiler;->a(II)V

    goto/16 :goto_0

    :cond_1b
    move v3, v2

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2b -> :sswitch_2
        0x3f -> :sswitch_1
        0x7b -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_0
        0x2b -> :sswitch_6
        0x3f -> :sswitch_5
        0x7b -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2a -> :sswitch_7
        0x2b -> :sswitch_9
        0x3f -> :sswitch_8
    .end sparse-switch
.end method

.method private c()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/regexp/RESyntaxException;
        }
    .end annotation

    const v6, 0xffff0

    const/4 v0, 0x0

    const/16 v1, 0x41

    invoke-direct {p0, v1, v0}, Lme/regexp/RECompiler;->a(CI)I

    move-result v2

    :goto_0
    iget v1, p0, Lme/regexp/RECompiler;->e:I

    iget v3, p0, Lme/regexp/RECompiler;->d:I

    if-ge v1, v3, :cond_3

    iget v1, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lme/regexp/RECompiler;->d:I

    if-ge v1, v3, :cond_2

    iget-object v1, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v3, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v3, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v4, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    iget v3, p0, Lme/regexp/RECompiler;->e:I

    invoke-direct {p0}, Lme/regexp/RECompiler;->b()I

    iget v4, p0, Lme/regexp/RECompiler;->e:I

    iget v5, p0, Lme/regexp/RECompiler;->d:I

    if-ge v4, v5, :cond_0

    iget-object v1, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v4, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_0
    iput v3, p0, Lme/regexp/RECompiler;->e:I

    :cond_1
    sparse-switch v1, :sswitch_data_0

    :cond_2
    iget-object v1, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v3, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_1

    iget-object v1, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v3, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lme/regexp/RECompiler;->a(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    if-eqz v0, :cond_2

    :cond_3
    :goto_1
    :sswitch_1
    if-nez v0, :cond_4

    invoke-static {}, Lme/regexp/RECompiler;->a()V

    :cond_4
    iget-object v1, p0, Lme/regexp/RECompiler;->a:[C

    add-int/lit8 v3, v2, 0x1

    int-to-char v0, v0

    aput-char v0, v1, v3

    return v2

    :sswitch_2
    if-nez v0, :cond_3

    const-string v1, "Missing operand to closure"

    invoke-static {v1}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    iget v1, p0, Lme/regexp/RECompiler;->e:I

    invoke-direct {p0}, Lme/regexp/RECompiler;->b()I

    move-result v3

    and-int v4, v3, v6

    if-ne v4, v6, :cond_5

    iput v1, p0, Lme/regexp/RECompiler;->e:I

    goto :goto_1

    :cond_5
    int-to-char v1, v3

    invoke-direct {p0, v1}, Lme/regexp/RECompiler;->a(C)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x3f -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x24 -> :sswitch_1
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2a -> :sswitch_2
        0x2b -> :sswitch_2
        0x2e -> :sswitch_1
        0x3f -> :sswitch_2
        0x5b -> :sswitch_1
        0x5c -> :sswitch_3
        0x5d -> :sswitch_1
        0x5e -> :sswitch_1
        0x7b -> :sswitch_2
        0x7c -> :sswitch_1
    .end sparse-switch
.end method

.method private c([I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/regexp/RESyntaxException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    new-array v6, v0, [I

    move v1, v2

    move v4, v2

    :goto_0
    iget v3, p0, Lme/regexp/RECompiler;->e:I

    iget v7, p0, Lme/regexp/RECompiler;->d:I

    if-ge v3, v7, :cond_2

    iget-object v3, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v7, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x7c

    if-eq v3, v7, :cond_2

    iget-object v3, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v7, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x29

    if-eq v3, v7, :cond_2

    aput v5, v6, v5

    invoke-direct {p0, v6}, Lme/regexp/RECompiler;->b([I)I

    move-result v3

    aget v7, v6, v5

    if-nez v7, :cond_0

    move v0, v5

    :cond_0
    if-eq v1, v2, :cond_1

    invoke-direct {p0, v1, v3}, Lme/regexp/RECompiler;->a(II)V

    :cond_1
    if-ne v4, v2, :cond_5

    move v1, v3

    move v4, v3

    goto :goto_0

    :cond_2
    if-ne v4, v2, :cond_3

    const/16 v1, 0x4e

    invoke-direct {p0, v1, v5}, Lme/regexp/RECompiler;->a(CI)I

    move-result v4

    :cond_3
    if-eqz v0, :cond_4

    aget v0, p1, v5

    or-int/lit8 v0, v0, 0x1

    aput v0, p1, v5

    :cond_4
    return v4

    :cond_5
    move v1, v3

    goto :goto_0
.end method

.method private d([I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/regexp/RESyntaxException;
        }
    .end annotation

    const/16 v4, 0x28

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/16 v9, 0x7c

    const/4 v5, 0x0

    iget v7, p0, Lme/regexp/RECompiler;->f:I

    aget v0, p1, v5

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_9

    iget-object v0, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v2, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_9

    iget v0, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Lme/regexp/RECompiler;->d:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v2, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3f

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v2, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_0

    const/4 v2, 0x2

    iget v0, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lme/regexp/RECompiler;->e:I

    const/16 v0, 0x3c

    invoke-direct {p0, v0, v5}, Lme/regexp/RECompiler;->a(CI)I

    move-result v0

    :goto_0
    aget v4, p1, v5

    and-int/lit8 v4, v4, -0x3

    aput v4, p1, v5

    invoke-direct {p0, p1}, Lme/regexp/RECompiler;->c([I)I

    move-result v4

    if-ne v0, v1, :cond_1

    move v0, v4

    move v1, v5

    move v6, v4

    :goto_1
    iget v4, p0, Lme/regexp/RECompiler;->e:I

    iget v8, p0, Lme/regexp/RECompiler;->d:I

    if-ge v4, v8, :cond_2

    iget-object v4, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v8, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_2

    if-nez v1, :cond_8

    invoke-direct {p0, v9, v5, v0}, Lme/regexp/RECompiler;->a(CII)V

    move v4, v3

    :goto_2
    iget v1, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lme/regexp/RECompiler;->e:I

    invoke-direct {p0, v9, v5}, Lme/regexp/RECompiler;->a(CI)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lme/regexp/RECompiler;->a(II)V

    invoke-direct {p0, p1}, Lme/regexp/RECompiler;->c([I)I

    move v0, v1

    move v1, v4

    goto :goto_1

    :cond_0
    iget v0, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/regexp/RECompiler;->e:I

    iget v0, p0, Lme/regexp/RECompiler;->f:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lme/regexp/RECompiler;->f:I

    invoke-direct {p0, v4, v0}, Lme/regexp/RECompiler;->a(CI)I

    move-result v0

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v4}, Lme/regexp/RECompiler;->a(II)V

    move v1, v5

    move v6, v0

    move v0, v4

    goto :goto_1

    :cond_2
    if-lez v2, :cond_6

    iget v0, p0, Lme/regexp/RECompiler;->e:I

    iget v1, p0, Lme/regexp/RECompiler;->d:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    iget v1, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_4

    iget v0, p0, Lme/regexp/RECompiler;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/regexp/RECompiler;->e:I

    :goto_3
    if-ne v2, v3, :cond_5

    const/16 v0, 0x29

    invoke-direct {p0, v0, v7}, Lme/regexp/RECompiler;->a(CI)I

    move-result v0

    :goto_4
    invoke-direct {p0, v6, v0}, Lme/regexp/RECompiler;->a(II)V

    iget-object v1, p0, Lme/regexp/RECompiler;->a:[C

    add-int/lit8 v2, v6, 0x2

    aget-char v1, v1, v2

    move v2, v6

    :goto_5
    if-eqz v1, :cond_7

    iget v1, p0, Lme/regexp/RECompiler;->b:I

    if-ge v2, v1, :cond_7

    iget-object v1, p0, Lme/regexp/RECompiler;->a:[C

    aget-char v1, v1, v2

    if-ne v1, v9, :cond_3

    add-int/lit8 v1, v2, 0x3

    invoke-direct {p0, v1, v0}, Lme/regexp/RECompiler;->a(II)V

    :cond_3
    iget-object v1, p0, Lme/regexp/RECompiler;->a:[C

    add-int/lit8 v3, v2, 0x2

    aget-char v1, v1, v3

    add-int/2addr v2, v1

    goto :goto_5

    :cond_4
    const-string v0, "Missing close paren"

    invoke-static {v0}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const/16 v0, 0x3e

    invoke-direct {p0, v0, v5}, Lme/regexp/RECompiler;->a(CI)I

    move-result v0

    goto :goto_4

    :cond_6
    const/16 v0, 0x45

    invoke-direct {p0, v0, v5}, Lme/regexp/RECompiler;->a(CI)I

    move-result v0

    goto :goto_4

    :cond_7
    return v6

    :cond_8
    move v4, v1

    goto/16 :goto_2

    :cond_9
    move v0, v1

    move v2, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Lme/regexp/REProgram;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/regexp/RESyntaxException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lme/regexp/RECompiler;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lme/regexp/RECompiler;->d:I

    iput v3, p0, Lme/regexp/RECompiler;->e:I

    iput v3, p0, Lme/regexp/RECompiler;->b:I

    iput v1, p0, Lme/regexp/RECompiler;->f:I

    new-array v0, v1, [I

    const/4 v1, 0x2

    aput v1, v0, v3

    invoke-direct {p0, v0}, Lme/regexp/RECompiler;->d([I)I

    iget v0, p0, Lme/regexp/RECompiler;->e:I

    iget v1, p0, Lme/regexp/RECompiler;->d:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lme/regexp/RECompiler;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    const-string v0, "Unmatched close paren"

    invoke-static {v0}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "Unexpected input remains"

    invoke-static {v0}, Lme/regexp/RECompiler;->a(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lme/regexp/RECompiler;->b:I

    new-array v0, v0, [C

    iget-object v1, p0, Lme/regexp/RECompiler;->a:[C

    iget v2, p0, Lme/regexp/RECompiler;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lme/regexp/REProgram;

    iget v2, p0, Lme/regexp/RECompiler;->f:I

    invoke-direct {v1, v2, v0}, Lme/regexp/REProgram;-><init>(I[C)V

    return-object v1
.end method
