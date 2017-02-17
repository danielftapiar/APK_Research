.class public Lnet/veritran/function/model/FArrayCall;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/function/model/IFCall;


# static fields
.field public static final METHOD_ADD_ROW:Ljava/lang/String; = "addrow"

.field public static final METHOD_CLONE:Ljava/lang/String; = "clone"

.field public static final METHOD_CONCAT:Ljava/lang/String; = "concat"

.field public static final METHOD_CREATE:Ljava/lang/String; = "create"

.field public static final METHOD_DELETE_ROW:Ljava/lang/String; = "deleterow"

.field public static final METHOD_SELECT_ROW:Ljava/lang/String; = "selectrow"

.field public static final METHOD_SORT:Ljava/lang/String; = "sort"

.field public static final METHOD_UNSELECT_ROW:Ljava/lang/String; = "unselectrow"

.field public static final METHOD_UPDATE_ROW:Ljava/lang/String; = "updaterow"


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

    iput-object v0, p0, Lnet/veritran/function/model/FArrayCall;->a:Ljava/lang/String;

    iput-object v0, p0, Lnet/veritran/function/model/FArrayCall;->b:Ljava/lang/String;

    iput-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lnet/veritran/function/model/FArrayCall;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/veritran/function/model/FArrayCall;->b:Ljava/lang/String;

    return-void
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

    const-string v4, " con parametros invalidos."

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

.method private static b(Ljava/lang/String;)V
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


# virtual methods
.method public addCallParam(Lnet/veritran/function/model/CallParam;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOutput()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->b:Ljava/lang/String;

    return-object v0
.end method

.method public process()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lnet/veritran/function/exception/VTFunctionParserInvalidTypeException;

    const-string v1, "P020"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Metodo invalido en FCall. Method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/veritran/function/model/FArrayCall;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2}, Lnet/veritran/function/exception/VTFunctionParserInvalidTypeException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "create"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v3, :cond_3

    :cond_2
    const-string v0, "create"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_4

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_4
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v3, :cond_5

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_5
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->createArray(II)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "create"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    const-string v1, "clone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v3, :cond_9

    :cond_8
    const-string v0, "clone"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->b(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_a

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_a
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v3, :cond_b

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_b
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->cloneArray(II)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "clone"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const-string v1, "concat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v5, :cond_e

    :cond_d
    const-string v0, "concat"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->b(Ljava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_f

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_f
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v3, :cond_10

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_10
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v3

    if-eq v3, v5, :cond_11

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_11
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->concatArray(III)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "concat"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-string v1, "addrow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v2, :cond_14

    :cond_13
    const-string v0, "addrow"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->b(Ljava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_15

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_15
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRowToArray(I)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "addrow"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    const-string v1, "deleterow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v3, :cond_18

    :cond_17
    const-string v0, "deleterow"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->b(Ljava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_19

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_19
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v3, :cond_1a

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_1a
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->deleteRowFromArray(II)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "deleterow"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    const-string v1, "updaterow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1d

    :cond_1c
    const-string v0, "updaterow"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->b(Ljava/lang/String;)V

    :cond_1d
    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_1e

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_1e
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v3, :cond_1f

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_1f
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v3

    if-eq v3, v5, :cond_20

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_20
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v4

    if-eq v4, v6, :cond_21

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_21
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_22

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_22
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->updateRowFromArray(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "updaterow"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_23
    const-string v1, "sort"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v3, :cond_25

    :cond_24
    const-string v0, "sort"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->b(Ljava/lang/String;)V

    :cond_25
    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_26

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_26
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v3, :cond_27

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_27
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->sortArray(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "sort"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_28
    const-string v1, "selectrow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v5, :cond_2a

    :cond_29
    const-string v0, "selectrow"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->b(Ljava/lang/String;)V

    :cond_2a
    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_2b

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_2b
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v3, :cond_2c

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_2c
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v3

    if-eq v3, v5, :cond_2d

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_2d
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    add-int/2addr v0, v2

    invoke-virtual {v3, v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->markRow(II)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "selectrow"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2e
    const-string v1, "unselectrow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v2, :cond_30

    :cond_2f
    const-string v0, "unselectrow"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->b(Ljava/lang/String;)V

    :cond_30
    iget-object v0, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_31

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_31
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->unmarkRow(I)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "unselectrow"

    invoke-static {v0}, Lnet/veritran/function/model/FArrayCall;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_32
    new-instance v0, Lnet/veritran/function/exception/VTFunctionUnsupportedFunctionalityException;

    const-string v1, "P021"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Metodo no soportado. Method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/veritran/function/model/FArrayCall;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2}, Lnet/veritran/function/exception/VTFunctionUnsupportedFunctionalityException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0
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

    iput-object p1, p0, Lnet/veritran/function/model/FArrayCall;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/function/model/FArrayCall;->a:Ljava/lang/String;

    return-void
.end method

.method public setOutput(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/function/model/FArrayCall;->b:Ljava/lang/String;

    return-void
.end method
