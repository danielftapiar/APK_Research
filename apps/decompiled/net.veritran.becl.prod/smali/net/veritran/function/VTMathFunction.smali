.class public Lnet/veritran/function/VTMathFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/function/IVTFunction;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lnet/veritran/function/VTMathFunction;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/function/VTMathFunction;->b:I

    iput-object v1, p0, Lnet/veritran/function/VTMathFunction;->c:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lnet/veritran/function/VTMathFunction;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/function/VTMathFunction;->b:I

    iput-object v1, p0, Lnet/veritran/function/VTMathFunction;->c:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    iput-object p1, p0, Lnet/veritran/function/VTMathFunction;->a:Ljava/lang/String;

    iput p2, p0, Lnet/veritran/function/VTMathFunction;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lnet/veritran/function/VTMathFunction;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/function/VTMathFunction;->b:I

    iput-object v1, p0, Lnet/veritran/function/VTMathFunction;->c:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    iput-object p1, p0, Lnet/veritran/function/VTMathFunction;->a:Ljava/lang/String;

    iput p2, p0, Lnet/veritran/function/VTMathFunction;->b:I

    iput-object p3, p0, Lnet/veritran/function/VTMathFunction;->c:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/veritran/function/VTMathFunction;->a:Ljava/lang/String;

    iput v5, p0, Lnet/veritran/function/VTMathFunction;->b:I

    iput-object v0, p0, Lnet/veritran/function/VTMathFunction;->c:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    iput-object p1, p0, Lnet/veritran/function/VTMathFunction;->a:Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/function/VTMathFunction;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lnet/veritran/function/exception/VTFunctionException;

    const-string v2, "P040"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error pasando el parametro outputRegister: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " a Entero. Ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v2, v3, v0}, Lnet/veritran/function/exception/VTFunctionException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/veritran/function/VTMathFunction;->a:Ljava/lang/String;

    iput v5, p0, Lnet/veritran/function/VTMathFunction;->b:I

    iput-object v0, p0, Lnet/veritran/function/VTMathFunction;->c:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    iput-object p1, p0, Lnet/veritran/function/VTMathFunction;->a:Ljava/lang/String;

    iput-object p3, p0, Lnet/veritran/function/VTMathFunction;->c:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/function/VTMathFunction;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lnet/veritran/function/exception/VTFunctionException;

    const-string v2, "P040"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error pasando el parametro outputRegister: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " a Entero. Ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v2, v3, v0}, Lnet/veritran/function/exception/VTFunctionException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    new-instance v0, Lnet/veritran/function/parsers/MathParser;

    invoke-direct {v0}, Lnet/veritran/function/parsers/MathParser;-><init>()V

    iget-object v1, p0, Lnet/veritran/function/VTMathFunction;->a:Ljava/lang/String;

    iget-object v2, p0, Lnet/veritran/function/VTMathFunction;->c:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/function/parsers/MathParser;->parsear(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnet/veritran/function/parsers/MathParser;->f(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    iget v3, p0, Lnet/veritran/function/VTMathFunction;->b:I

    invoke-static {v0, v1}, Lnet/veritran/function/utils/NumberUtil;->convertDouble(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    return-void
.end method

.method public getMathExpression()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/VTMathFunction;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputRegister()I
    .locals 1

    iget v0, p0, Lnet/veritran/function/VTMathFunction;->b:I

    return v0
.end method

.method public getarray()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/VTMathFunction;->c:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    return-object v0
.end method

.method public setMathExpression(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/function/VTMathFunction;->a:Ljava/lang/String;

    return-void
.end method

.method public setOutputRegister(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/function/VTMathFunction;->b:I

    return-void
.end method

.method public setarray(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/function/VTMathFunction;->c:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    return-void
.end method
