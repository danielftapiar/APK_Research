.class public Lnet/veritran/function/model/FCacheCall;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/function/model/IFCall;


# static fields
.field public static final METHOD_CLEAR_ALL:Ljava/lang/String; = "clearall"

.field public static final METHOD_GET_ARRAY:Ljava/lang/String; = "getarray"

.field public static final METHOD_GET_REGISTER:Ljava/lang/String; = "getregister"

.field public static final METHOD_INSERT_ARRAY:Ljava/lang/String; = "insertarray"

.field public static final METHOD_INSERT_REGISTER:Ljava/lang/String; = "insertregister"

.field public static final METHOD_REMOVE:Ljava/lang/String; = "remove"


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

    iput-object v0, p0, Lnet/veritran/function/model/FCacheCall;->a:Ljava/lang/String;

    iput-object v0, p0, Lnet/veritran/function/model/FCacheCall;->b:Ljava/lang/String;

    iput-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lnet/veritran/function/model/FCacheCall;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/veritran/function/model/FCacheCall;->b:Ljava/lang/String;

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

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOutput()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->b:Ljava/lang/String;

    return-object v0
.end method

.method public process()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lnet/veritran/function/exception/VTFunctionParserInvalidTypeException;

    const-string v1, "P020"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Metodo invalido en FCall. Method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/veritran/function/model/FCacheCall;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2}, Lnet/veritran/function/exception/VTFunctionParserInvalidTypeException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "insertarray"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v5, :cond_3

    :cond_2
    const-string v0, "insertarray"

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_4

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_4
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v3, :cond_5

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_5
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v3

    if-eq v3, v5, :cond_6

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_6
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->cacheArray(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "insertarray"

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void

    :cond_8
    const-string v1, "insertregister"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v5, :cond_a

    :cond_9
    const-string v0, "insertregister"

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->b(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_b

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_b
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v3, :cond_c

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_c
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v3

    if-eq v3, v5, :cond_d

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_d
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->cacheRegister(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "insertregister"

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    const-string v1, "getarray"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v3, :cond_10

    :cond_f
    const-string v0, "getarray"

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->b(Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_11

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_11
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v3, :cond_12

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_12
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getCachedArray(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "getarray"

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string v1, "getregister"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v3, :cond_15

    :cond_14
    const-string v0, "getregister"

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->b(Ljava/lang/String;)V

    :cond_15
    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_16

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_16
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v2

    if-eq v2, v3, :cond_17

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_17
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/function/utils/VTUtilS;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getCachedRegister(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "getregister"

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    const-string v1, "clearall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "clearall"

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->b(Ljava/lang/String;)V

    :cond_19
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->cacheClearAll()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "clearall"

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    const-string v1, "remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v2, :cond_1c

    :cond_1b
    const-string v0, "remove"

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->b(Ljava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/CallParam;

    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getOrder()I

    move-result v1

    if-eq v1, v2, :cond_1d

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Lnet/veritran/function/model/CallParam;)V

    :cond_1d
    invoke-virtual {v0}, Lnet/veritran/function/model/CallParam;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->cacheRemove(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "remove"

    invoke-static {v0}, Lnet/veritran/function/model/FCacheCall;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    new-instance v0, Lnet/veritran/function/exception/VTFunctionUnsupportedFunctionalityException;

    const-string v1, "P021"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Metodo no soportado. Method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/veritran/function/model/FCacheCall;->a:Ljava/lang/String;

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

    iput-object p1, p0, Lnet/veritran/function/model/FCacheCall;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/function/model/FCacheCall;->a:Ljava/lang/String;

    return-void
.end method

.method public setOutput(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/function/model/FCacheCall;->b:Ljava/lang/String;

    return-void
.end method
