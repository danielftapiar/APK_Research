.class public Lnet/veritran/function/model/Condition;
.super Ljava/lang/Object;


# static fields
.field public static final OPERATION_EQUAL:I = 0xa

.field public static final OPERATION_GREATER_THAN:I = 0x14

.field public static final OPERATION_IN:I = 0x3c

.field public static final OPERATION_LESS_EQUAL:I = 0x28

.field public static final OPERATION_LESS_THAN:I = 0x1e

.field public static final OPERATION_MOST_EQUAL:I = 0x32

.field public static final OPERATION_NOT_EQUAL:I = 0x46

.field public static final TYPE_NUMERIC:I = 0x4e

.field public static final TYPE_STRING:I = 0x53


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lnet/veritran/function/model/Condition;->a:I

    iput v0, p0, Lnet/veritran/function/model/Condition;->b:I

    iput-object v1, p0, Lnet/veritran/function/model/Condition;->c:Ljava/lang/String;

    iput-object v1, p0, Lnet/veritran/function/model/Condition;->d:Ljava/lang/String;

    iput p1, p0, Lnet/veritran/function/model/Condition;->a:I

    iput p2, p0, Lnet/veritran/function/model/Condition;->b:I

    iput-object p3, p0, Lnet/veritran/function/model/Condition;->c:Ljava/lang/String;

    iput-object p4, p0, Lnet/veritran/function/model/Condition;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEvaluatedValueAsDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/veritran/function/model/Condition;->c:Ljava/lang/String;

    sget-object v1, Lnet/veritran/function/parsers/ElementParser;->ARRAY_NULL:Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Lnet/veritran/function/exception/VTFunctionParserNumberFormatException;

    const/4 v2, 0x0

    const-string v3, "P012"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No se pudo convertir el String: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lnet/veritran/function/model/Condition;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " a double"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lnet/veritran/function/exception/VTFunctionParserNumberFormatException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getOperation()I
    .locals 1

    iget v0, p0, Lnet/veritran/function/model/Condition;->a:I

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/Condition;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lnet/veritran/function/model/Condition;->b:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/Condition;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Condition [operation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/veritran/function/model/Condition;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/veritran/function/model/Condition;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/Condition;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/Condition;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
