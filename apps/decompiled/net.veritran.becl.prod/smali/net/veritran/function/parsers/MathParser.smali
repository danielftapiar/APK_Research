.class public Lnet/veritran/function/parsers/MathParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/function/parsers/MathParser$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lnet/veritran/function/parsers/MathParser;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(C)I
    .locals 1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x25

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x5e

    if-ne p0, v0, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/util/Stack;Ljava/util/Stack;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "+ - * / ^ %"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method

.method private a(Ljava/util/Stack;Ljava/util/Stack;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "( ln log abs sen sin cos tan sec csc cot sgn asen asin acos atan asec acsc acot senh sinh cosh tanh sech csch coth sqrt round asenh asinh acosh atanh asech acsch acoth"

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lnet/veritran/function/parsers/MathParser;->a(C)I

    move-result v0

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lnet/veritran/function/parsers/MathParser;->a(C)I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Lnet/veritran/function/parsers/MathParser;->a(Ljava/util/Stack;Ljava/util/Stack;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v1, ""

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public f(D)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/veritran/function/parsers/MathParser;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lnet/veritran/function/parsers/MathParser;->f(Ljava/lang/String;D)D
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public f(Ljava/lang/String;D)D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    new-instance v7, Lnet/veritran/function/utils/StringTokenizer;

    const-string v0, " "

    invoke-direct {v7, p1, v0}, Lnet/veritran/function/utils/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    invoke-virtual {v7}, Lnet/veritran/function/utils/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v7}, Lnet/veritran/function/utils/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/Double;

    const-wide v8, 0x4005bf0a8b145769L    # Math.E

    invoke-direct {v0, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Expresion mal parseada"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    const-string v1, "pi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/Double;

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    invoke-direct {v0, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Expresion mal digitada"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_2
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/EmptyStackException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Valor no real en la expresion"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_3
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v10, Ljava/lang/Double;

    add-double/2addr v0, v8

    invoke-direct {v10, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v10, Ljava/lang/Double;

    sub-double/2addr v0, v8

    invoke-direct {v10, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v10, Ljava/lang/Double;

    mul-double/2addr v0, v8

    invoke-direct {v10, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v10, Ljava/lang/Double;

    div-double/2addr v0, v8

    invoke-direct {v10, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v10, Ljava/lang/Double;

    invoke-static {v0, v1, v8, v9}, Lnet/veritran/function/utils/VTMath;->pow(DD)D

    move-result-wide v0

    invoke-direct {v10, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v10, Ljava/lang/Double;

    rem-double/2addr v0, v8

    invoke-direct {v10, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    const-string v1, "ln"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v8, Ljava/lang/Double;

    invoke-static {v0, v1}, Lnet/veritran/function/utils/VTMath;->log(D)D

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    const-string v1, "log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v8, Ljava/lang/Double;

    invoke-static {v0, v1}, Lnet/veritran/function/utils/VTMath;->log(D)D

    move-result-wide v0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    invoke-static {v10, v11}, Lnet/veritran/function/utils/VTMath;->log(D)D

    move-result-wide v10

    div-double/2addr v0, v10

    invoke-direct {v8, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    const-string v1, "abs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v8, Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    const-string v1, "sen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "sin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v8, Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_d
    const-string v1, "cos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v8, Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_e
    const-string v1, "tan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v8, Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_f
    const-string v1, "sec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v8, Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    div-double v0, v2, v0

    invoke-direct {v8, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_10
    const-string v1, "csc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v8, Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    div-double v0, v2, v0

    invoke-direct {v8, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_11
    const-string v1, "cot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v8, Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    div-double v0, v2, v0

    invoke-direct {v8, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_12
    const-string v1, "sgn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v8, Ljava/lang/Double;

    cmpg-double v9, v0, v4

    if-gez v9, :cond_13

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_1
    invoke-direct {v8, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_13
    cmpl-double v0, v0, v4

    if-lez v0, :cond_14

    move-wide v0, v2

    goto :goto_1

    :cond_14
    move-wide v0, v4

    goto :goto_1

    :cond_15
    const-string v1, "sqrt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v8, Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_16
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/EmptyStackException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v6}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_18

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Expresion mal digitada"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    return-wide v0
.end method

.method public parsear(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/parsers/MathParser$a;
        }
    .end annotation

    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/parsers/MathParser;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v0, 0x6

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "1 2 3 4 5 6 7 8 9 0 ( ) x e + - * / ^ %"

    aput-object v1, v8, v0

    const/4 v0, 0x1

    const-string v1, "pi"

    aput-object v1, v8, v0

    const/4 v0, 0x2

    const-string v1, "ln("

    aput-object v1, v8, v0

    const/4 v0, 0x3

    const-string v1, "log( abs( sen( sin( cos( tan( sec( csc( cot( sgn("

    aput-object v1, v8, v0

    const/4 v0, 0x4

    const-string v1, "rnd() asen( asin( acos( atan( asec( acsc( acot( senh( sinh( cosh( tanh( sech( csch( coth( sqrt("

    aput-object v1, v8, v0

    const/4 v0, 0x5

    const-string v1, "round( asenh( acosh( atanh( asech( acsch( acoth("

    aput-object v1, v8, v0

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_25

    const/4 v2, 0x0

    const/4 v1, 0x1

    :goto_1
    if-nez v2, :cond_0

    const/4 v0, 0x6

    if-gt v1, v0, :cond_0

    add-int v0, v4, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v0, v9, :cond_29

    add-int/lit8 v0, v1, -0x1

    aget-object v0, v8, v0

    add-int v9, v4, v1

    invoke-virtual {v7, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_29

    move v0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    move v2, v0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const-string v0, "0"

    iput-object v0, p0, Lnet/veritran/function/parsers/MathParser;->a:Ljava/lang/String;

    new-instance v0, Lnet/veritran/function/parsers/MathParser$a;

    const-string v1, "Error en la expresion"

    invoke-direct {v0, p0, v1}, Lnet/veritran/function/parsers/MathParser$a;-><init>(Lnet/veritran/function/parsers/MathParser;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v0, "0"

    iput-object v0, p0, Lnet/veritran/function/parsers/MathParser;->a:Ljava/lang/String;

    new-instance v0, Lnet/veritran/function/parsers/MathParser$a;

    const-string v1, "Expresion mal digitada"

    invoke-direct {v0, p0, v1}, Lnet/veritran/function/parsers/MathParser$a;-><init>(Lnet/veritran/function/parsers/MathParser;Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    if-ne v2, v0, :cond_1b

    add-int v0, v4, v2

    :try_start_1
    invoke-virtual {v7, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/parsers/MathParser;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    if-eq v3, v0, :cond_2

    const/4 v0, 0x4

    if-ne v3, v0, :cond_3

    :cond_2
    const-string v0, "*"

    invoke-direct {p0, v5, v6, v0}, Lnet/veritran/function/parsers/MathParser;->a(Ljava/util/Stack;Ljava/util/Stack;Ljava/lang/String;)V

    :cond_3
    const-string v0, ""

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_5

    add-int v1, v4, v2

    invoke-virtual {v7, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/veritran/function/parsers/MathParser;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_4

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_4

    :cond_5
    :try_start_2
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/EmptyStackException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    add-int/lit8 v1, v4, -0x1

    :goto_3
    add-int v4, v1, v2

    move v3, v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, "0"

    iput-object v0, p0, Lnet/veritran/function/parsers/MathParser;->a:Ljava/lang/String;

    new-instance v0, Lnet/veritran/function/parsers/MathParser$a;

    const-string v1, "Numero mal digitado"

    invoke-direct {v0, p0, v1}, Lnet/veritran/function/parsers/MathParser$a;-><init>(Lnet/veritran/function/parsers/MathParser;Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_7

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_a

    :cond_7
    const/4 v0, 0x1

    if-eq v3, v0, :cond_8

    const/4 v0, 0x4

    if-ne v3, v0, :cond_9

    :cond_8
    const-string v0, "*"

    invoke-direct {p0, v5, v6, v0}, Lnet/veritran/function/parsers/MathParser;->a(Ljava/util/Stack;Ljava/util/Stack;Ljava/lang/String;)V

    :cond_9
    add-int v0, v4, v2

    invoke-virtual {v7, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    move v1, v4

    goto :goto_3

    :cond_a
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_b

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_b

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_b

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_e

    :cond_b
    if-eqz v3, :cond_c

    const/4 v0, 0x2

    if-eq v3, v0, :cond_c

    const/4 v0, 0x3

    if-ne v3, v0, :cond_d

    :cond_c
    new-instance v0, Lnet/veritran/function/parsers/MathParser$a;

    const-string v1, "Error en la expresion"

    invoke-direct {v0, p0, v1}, Lnet/veritran/function/parsers/MathParser$a;-><init>(Lnet/veritran/function/parsers/MathParser;Ljava/lang/String;)V

    throw v0

    :cond_d
    add-int v0, v4, v2

    invoke-virtual {v7, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v6, v0}, Lnet/veritran/function/parsers/MathParser;->a(Ljava/util/Stack;Ljava/util/Stack;Ljava/lang/String;)V

    const/4 v0, 0x2

    move v1, v4

    goto :goto_3

    :cond_e
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5e

    if-ne v0, v1, :cond_11

    if-eqz v3, :cond_f

    const/4 v0, 0x2

    if-eq v3, v0, :cond_f

    const/4 v0, 0x3

    if-ne v3, v0, :cond_10

    :cond_f
    new-instance v0, Lnet/veritran/function/parsers/MathParser$a;

    const-string v1, "Error en la expresion"

    invoke-direct {v0, p0, v1}, Lnet/veritran/function/parsers/MathParser$a;-><init>(Lnet/veritran/function/parsers/MathParser;Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/String;

    const-string v1, "^"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    move v1, v4

    goto/16 :goto_3

    :cond_11
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_14

    if-eqz v3, :cond_12

    const/4 v0, 0x2

    if-eq v3, v0, :cond_12

    const/4 v0, 0x3

    if-ne v3, v0, :cond_13

    :cond_12
    new-instance v0, Ljava/lang/String;

    const-string v1, "-1"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "*"

    invoke-direct {p0, v5, v6, v0}, Lnet/veritran/function/parsers/MathParser;->a(Ljava/util/Stack;Ljava/util/Stack;Ljava/lang/String;)V

    :goto_4
    const/4 v0, 0x2

    move v1, v4

    goto/16 :goto_3

    :cond_13
    const-string v0, "-"

    invoke-direct {p0, v5, v6, v0}, Lnet/veritran/function/parsers/MathParser;->a(Ljava/util/Stack;Ljava/util/Stack;Ljava/lang/String;)V

    goto :goto_4

    :cond_14
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    if-eq v3, v0, :cond_15

    const/4 v0, 0x4

    if-ne v3, v0, :cond_16

    :cond_15
    const-string v0, "*"

    invoke-direct {p0, v5, v6, v0}, Lnet/veritran/function/parsers/MathParser;->a(Ljava/util/Stack;Ljava/util/Stack;Ljava/lang/String;)V

    :cond_16
    new-instance v0, Ljava/lang/String;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    move v1, v4

    goto/16 :goto_3

    :cond_17
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_28

    const/4 v0, 0x1

    if-eq v3, v0, :cond_18

    const/4 v0, 0x4

    if-eq v3, v0, :cond_18

    new-instance v0, Lnet/veritran/function/parsers/MathParser$a;

    const-string v1, "Error en la expresion"

    invoke-direct {v0, p0, v1}, Lnet/veritran/function/parsers/MathParser$a;-><init>(Lnet/veritran/function/parsers/MathParser;Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_5
    invoke-virtual {v6}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_19

    const-string v1, "( ln log abs sen sin cos tan sec csc cot sgn asen asin acos atan asec acsc acot senh sinh cosh tanh sech csch coth sqrt round asenh asinh acosh atanh asech acsch acoth"

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    invoke-static {v5, v6}, Lnet/veritran/function/parsers/MathParser;->a(Ljava/util/Stack;Ljava/util/Stack;)V

    goto :goto_5

    :cond_19
    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    const/4 v0, 0x4

    move v1, v4

    goto/16 :goto_3

    :cond_1a
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_6

    :cond_1b
    const/4 v0, 0x2

    if-lt v2, v0, :cond_28

    add-int v0, v4, v2

    invoke-virtual {v7, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    if-eq v3, v1, :cond_1c

    const/4 v1, 0x4

    if-ne v3, v1, :cond_1d

    :cond_1c
    const-string v1, "*"

    invoke-direct {p0, v5, v6, v1}, Lnet/veritran/function/parsers/MathParser;->a(Ljava/util/Stack;Ljava/util/Stack;Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    move v1, v4

    goto/16 :goto_3

    :cond_1e
    const-string v1, "rnd()"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    if-eq v3, v0, :cond_1f

    const/4 v0, 0x4

    if-ne v3, v0, :cond_20

    :cond_1f
    const-string v0, "*"

    invoke-direct {p0, v5, v6, v0}, Lnet/veritran/function/parsers/MathParser;->a(Ljava/util/Stack;Ljava/util/Stack;Ljava/lang/String;)V

    :cond_20
    const-string v0, "rnd"

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    move v1, v4

    goto/16 :goto_3

    :cond_21
    const/4 v1, 0x1

    if-eq v3, v1, :cond_22

    const/4 v1, 0x4

    if-ne v3, v1, :cond_23

    :cond_22
    const-string v1, "*"

    invoke-direct {p0, v5, v6, v1}, Lnet/veritran/function/parsers/MathParser;->a(Ljava/util/Stack;Ljava/util/Stack;Ljava/lang/String;)V

    :cond_23
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    move v1, v4

    goto/16 :goto_3

    :cond_24
    invoke-static {v5, v6}, Lnet/veritran/function/parsers/MathParser;->a(Ljava/util/Stack;Ljava/util/Stack;)V

    :cond_25
    invoke-virtual {v6}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_26

    const-string v1, "( ln log abs sen sin cos tan sec csc cot sgn asen asin acos atan asec acsc acot senh sinh cosh tanh sech csch coth sqrt round asenh asinh acosh atanh asech acsch acoth"

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    new-instance v0, Lnet/veritran/function/parsers/MathParser$a;

    const-string v1, "Hay un parentesis de mas"

    invoke-direct {v0, p0, v1}, Lnet/veritran/function/parsers/MathParser$a;-><init>(Lnet/veritran/function/parsers/MathParser;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/util/EmptyStackException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_26
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lnet/veritran/function/parsers/MathParser;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "0"

    iput-object v0, p0, Lnet/veritran/function/parsers/MathParser;->a:Ljava/lang/String;

    new-instance v0, Lnet/veritran/function/parsers/MathParser$a;

    const-string v1, "Error en la expresion"

    invoke-direct {v0, p0, v1}, Lnet/veritran/function/parsers/MathParser$a;-><init>(Lnet/veritran/function/parsers/MathParser;Ljava/lang/String;)V

    throw v0

    :cond_27
    iget-object v0, p0, Lnet/veritran/function/parsers/MathParser;->a:Ljava/lang/String;

    return-object v0

    :cond_28
    move v0, v3

    move v1, v4

    goto/16 :goto_3

    :cond_29
    move v0, v2

    goto/16 :goto_2
.end method
