.class public Lnet/veritran/function/model/FStringCall;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/function/model/IFCall;


# static fields
.field public static final METHOD_COUNT:Ljava/lang/String; = "count"

.field public static final METHOD_INDEX_OF:Ljava/lang/String; = "indexof"

.field public static final METHOD_INSERT:Ljava/lang/String; = "insert"

.field public static final METHOD_LAST_INDEX_OF:Ljava/lang/String; = "lastindexof"

.field public static final METHOD_LENGTH:Ljava/lang/String; = "length"

.field public static final METHOD_LOWERCASE:Ljava/lang/String; = "lowercase"

.field public static final METHOD_PAD_LEFT:Ljava/lang/String; = "lpad"

.field public static final METHOD_PAD_RIGHT:Ljava/lang/String; = "rpad"

.field public static final METHOD_PROPERCASE:Ljava/lang/String; = "propercase"

.field public static final METHOD_REPLACE:Ljava/lang/String; = "replace"

.field public static final METHOD_SUBSTRING:Ljava/lang/String; = "substr"

.field public static final METHOD_TRIM:Ljava/lang/String; = "trim"

.field public static final METHOD_TRIM_LEFT:Ljava/lang/String; = "ltrim"

.field public static final METHOD_TRIM_RIGHT:Ljava/lang/String; = "rtrim"

.field public static final METHOD_UPPERCASE:Ljava/lang/String; = "uppercase"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/function/model/CallParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/veritran/function/model/FStringCall;->a:Ljava/lang/String;

    iput-object v0, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    iput-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lnet/veritran/function/model/FStringCall;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x2

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v6, :cond_1

    :cond_0
    const-string v0, "lpad"

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v3, :cond_2

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_2
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v5, :cond_3

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_3
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :goto_0
    const-string v0, " "

    iget-object v3, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_9

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v3

    if-eq v3, v6, :cond_4

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_4
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    :cond_5
    const-string v0, " "

    move-object v3, v0

    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-le v1, v0, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    :goto_2
    return-void

    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    const-string v0, ""

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v1, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v3, v0

    goto :goto_1

    :cond_a
    move v1, v2

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    new-instance v0, Lnet/veritran/function/exception/VTFunctionWrongNumberOfParametersException;

    const/4 v1, 0x0

    const-string v2, "P022"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Se llamo a la funcion "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " con cantidad invalida de parametros."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/function/exception/VTFunctionWrongNumberOfParametersException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lnet/veritran/function/model/CallParam;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    new-instance v0, Lnet/veritran/function/exception/VTFunctionWrongNumberOfParametersException;

    const/4 v1, 0x0

    const-string v2, "P022"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CallParam esta ubicado en una posicion que no es correcta. CallParam: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/function/exception/VTFunctionWrongNumberOfParametersException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private b()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x2

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v6, :cond_1

    :cond_0
    const-string v0, "rpad"

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v3, :cond_2

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_2
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v5, :cond_3

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_3
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :goto_0
    const-string v0, " "

    iget-object v3, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_9

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v3

    if-eq v3, v6, :cond_4

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_4
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    :cond_5
    const-string v0, " "

    move-object v3, v0

    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-le v1, v0, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    :goto_2
    return-void

    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    const-string v0, ""

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v1, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v3, v0

    goto :goto_1

    :cond_a
    move v1, v2

    goto/16 :goto_0
.end method

.method private c()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v4, :cond_1

    :cond_0
    const-string v0, "ltrim"

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v3, :cond_2

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_2
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    const-string v0, " "

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_b

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v4, :cond_3

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_3
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_4
    const-string v0, " "

    move-object v5, v0

    :goto_0
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    :goto_1
    return-void

    :cond_6
    move v4, v1

    move v0, v1

    :goto_2
    if-nez v0, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_9

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v2, v1

    move v0, v3

    :goto_3
    if-eqz v0, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_8

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_7

    move v0, v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_9
    if-nez v0, :cond_a

    const-string v0, ""

    :goto_4
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto :goto_1

    :cond_a
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_b
    move-object v5, v0

    goto :goto_0
.end method

.method private d()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v4, :cond_1

    :cond_0
    const-string v0, "rtrim"

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v3, :cond_2

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_2
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    const-string v0, " "

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_b

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v4, :cond_3

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_3
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_4
    const-string v0, " "

    move-object v5, v0

    :goto_0
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    :goto_1
    return-void

    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v0, v1

    :goto_2
    if-nez v0, :cond_9

    if-ltz v4, :cond_9

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v2, v1

    move v0, v3

    :goto_3
    if-eqz v0, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_8

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_7

    move v0, v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_2

    :cond_9
    if-nez v0, :cond_a

    const-string v0, ""

    :goto_4
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto :goto_1

    :cond_a
    add-int/lit8 v0, v4, 0x2

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_b
    move-object v5, v0

    goto :goto_0
.end method

.method private e()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v4, :cond_1

    :cond_0
    const-string v0, "trim"

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v3, :cond_2

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_2
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    const-string v0, " "

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_f

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v4, :cond_3

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_3
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    :cond_4
    const-string v0, " "

    move-object v5, v0

    :goto_0
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    :goto_1
    return-void

    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move v4, v1

    move v0, v1

    :goto_2
    if-nez v0, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_9

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v2, v1

    move v0, v3

    :goto_3
    if-eqz v0, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_8

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_7

    move v0, v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_9
    if-nez v0, :cond_a

    const-string v0, ""

    :goto_4
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto :goto_1

    :cond_a
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v0, v1

    :goto_5
    if-nez v0, :cond_d

    if-ltz v4, :cond_d

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v2, v1

    move v0, v3

    :goto_6
    if-eqz v0, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_c

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_b

    move v0, v1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_5

    :cond_d
    if-nez v0, :cond_e

    const-string v0, ""

    goto :goto_4

    :cond_e
    add-int/lit8 v0, v4, 0x2

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_f
    move-object v5, v0

    goto/16 :goto_0
.end method

.method private f()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v8, :cond_1

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "indexof"

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_2

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_2
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v5, :cond_3

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_3
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    const-string v0, ""

    iget-object v1, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_5

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v8, :cond_4

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_4
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_12

    move v1, v2

    :goto_0
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_11

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v5

    const/4 v8, 0x4

    if-eq v5, v8, :cond_6

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_6
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    const-string v0, "true"

    :cond_8
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    :goto_1
    move v5, v0

    :goto_2
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    :goto_3
    return-void

    :cond_a
    move v0, v3

    goto :goto_1

    :cond_b
    if-ne v1, v2, :cond_d

    if-eqz v5, :cond_c

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_4
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto :goto_3

    :cond_c
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_d
    move v0, v4

    :cond_e
    if-ge v3, v1, :cond_10

    if-eqz v5, :cond_f

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_5
    if-eq v0, v4, :cond_10

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_e

    goto :goto_4

    :cond_f
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_5

    :cond_10
    move v0, v4

    goto :goto_4

    :cond_11
    move v5, v2

    goto :goto_2

    :cond_12
    move v1, v0

    goto/16 :goto_0

    :cond_13
    move v1, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public addCallParam(Lnet/veritran/function/model/CallParam;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCallParams()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/function/model/CallParam;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOutput()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    return-object v0
.end method

.method public process()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lnet/veritran/function/exception/VTFunctionParserInvalidTypeException;

    const-string v2, "P020"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Metodo invalido en FCall. Method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/veritran/function/model/FStringCall;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/function/exception/VTFunctionParserInvalidTypeException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "substr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v6, :cond_3

    :cond_2
    const-string v0, "substr"

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_4

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_4
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v5, :cond_5

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_5
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v3

    if-eq v3, v6, :cond_6

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_6
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_8

    :cond_7
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_8
    add-int v3, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    :cond_9
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    iget-object v4, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string v3, "replace"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v5, :cond_c

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v6, :cond_c

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v7, :cond_c

    :cond_b
    const-string v0, "replace"

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_d

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_d
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v5, :cond_e

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_e
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    const-string v0, ""

    iget-object v1, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_53

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v6, :cond_f

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_f
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v6, :cond_13

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v7, :cond_10

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_10
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    const-string v0, "true"

    :cond_12
    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    :cond_13
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    if-eqz v2, :cond_16

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "(?i)"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_17
    const-string v3, "lpad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-direct {p0}, Lnet/veritran/function/model/FStringCall;->a()V

    goto/16 :goto_0

    :cond_18
    const-string v3, "rpad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-direct {p0}, Lnet/veritran/function/model/FStringCall;->b()V

    goto/16 :goto_0

    :cond_19
    const-string v3, "ltrim"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-direct {p0}, Lnet/veritran/function/model/FStringCall;->c()V

    goto/16 :goto_0

    :cond_1a
    const-string v3, "rtrim"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-direct {p0}, Lnet/veritran/function/model/FStringCall;->d()V

    goto/16 :goto_0

    :cond_1b
    const-string v3, "trim"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-direct {p0}, Lnet/veritran/function/model/FStringCall;->e()V

    goto/16 :goto_0

    :cond_1c
    const-string v3, "indexof"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-direct {p0}, Lnet/veritran/function/model/FStringCall;->f()V

    goto/16 :goto_0

    :cond_1d
    const-string v3, "lastindexof"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v5, :cond_1f

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v6, :cond_1f

    :cond_1e
    const-string v0, "lastindexof"

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Ljava/lang/String;)V

    :cond_1f
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v3

    if-eq v3, v2, :cond_20

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_20
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v4

    if-eq v4, v5, :cond_21

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_21
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_52

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v5

    if-eq v5, v6, :cond_22

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_22
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_24

    :cond_23
    const-string v0, "true"

    :cond_24
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v2

    :goto_3
    if-eqz v3, :cond_25

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_25

    if-eqz v4, :cond_25

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_27

    :cond_25
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_26
    move v0, v1

    goto :goto_3

    :cond_27
    if-eqz v0, :cond_28

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    :goto_4
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_28
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_29
    const-string v3, "insert"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v6, :cond_2b

    :cond_2a
    const-string v0, "insert"

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Ljava/lang/String;)V

    :cond_2b
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_2c

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_2c
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v5, :cond_2d

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_2d
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v3

    if-eq v3, v6, :cond_2e

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_2e
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2f

    invoke-static {v3}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    :cond_2f
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_30

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_30

    if-ltz v0, :cond_30

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_31

    :cond_30
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_32
    const-string v3, "lowercase"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v2, :cond_34

    :cond_33
    const-string v0, "lowercase"

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Ljava/lang/String;)V

    :cond_34
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_35

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_35
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_37

    :cond_36
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_37
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_38
    const-string v3, "uppercase"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v2, :cond_3a

    :cond_39
    const-string v0, "uppercase"

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Ljava/lang/String;)V

    :cond_3a
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_3b

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_3b
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3d

    :cond_3c
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3e
    const-string v3, "count"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v5, :cond_40

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v6, :cond_40

    :cond_3f
    const-string v0, "count"

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Ljava/lang/String;)V

    :cond_40
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v3

    if-eq v3, v2, :cond_41

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_41
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v4

    if-eq v4, v5, :cond_42

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_42
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_46

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v5

    if-eq v5, v6, :cond_43

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_43
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_45

    :cond_44
    const-string v0, "true"

    :cond_45
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    :cond_46
    :goto_5
    if-eqz v3, :cond_47

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_47

    if-eqz v4, :cond_47

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_49

    :cond_47
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_48
    move v2, v1

    goto :goto_5

    :cond_49
    if-eqz v2, :cond_4a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    :goto_6
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_6

    :cond_4b
    const-string v3, "length"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v2, :cond_4d

    :cond_4c
    const-string v0, "length"

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Ljava/lang/String;)V

    :cond_4d
    iget-object v0, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_4e

    invoke-static {v0}, Lnet/veritran/function/model/FStringCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_4e
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_50

    :cond_4f
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_51
    new-instance v0, Lnet/veritran/function/exception/VTFunctionUnsupportedFunctionalityException;

    const-string v2, "P021"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Metodo no soportado. Method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/veritran/function/model/FStringCall;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/function/exception/VTFunctionUnsupportedFunctionalityException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_52
    move v0, v2

    goto/16 :goto_3

    :cond_53
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public setCallParams(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/function/model/CallParam;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/veritran/function/model/FStringCall;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/function/model/FStringCall;->a:Ljava/lang/String;

    return-void
.end method

.method public setOutput(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/function/model/FStringCall;->b:Ljava/lang/String;

    return-void
.end method
