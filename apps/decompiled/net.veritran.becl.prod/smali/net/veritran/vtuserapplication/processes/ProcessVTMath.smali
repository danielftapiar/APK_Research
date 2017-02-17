.class public Lnet/veritran/vtuserapplication/processes/ProcessVTMath;
.super Ljava/lang/Object;


# instance fields
.field private a:Lnet/veritran/function/VTMathFunction;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/veritran/function/VTMathFunction;

    invoke-direct {v0}, Lnet/veritran/function/VTMathFunction;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTMath;->a:Lnet/veritran/function/VTMathFunction;

    const-string v0, "ProcessVTMath"

    const-string v1, "new VTStringUtilsFunction()"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;->getInput()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessVTMath"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "inputExpression:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;->getOutput()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProcessVTMath"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "outputRegister:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTMath;->a:Lnet/veritran/function/VTMathFunction;

    invoke-virtual {v2, v0}, Lnet/veritran/function/VTMathFunction;->setMathExpression(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTMath;->a:Lnet/veritran/function/VTMathFunction;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/function/VTMathFunction;->setOutputRegister(I)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->debugRegisters()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTMath;->a:Lnet/veritran/function/VTMathFunction;

    invoke-virtual {v0}, Lnet/veritran/function/VTMathFunction;->execute()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    return-void
.end method
