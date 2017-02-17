.class public Lnet/veritran/function/VTCallAPIFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/function/IVTFunction;


# instance fields
.field private a:Lnet/veritran/callapi/model/CallApiParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/function/VTCallAPIFunction;->a:Lnet/veritran/callapi/model/CallApiParams;

    new-instance v0, Lnet/veritran/callapi/model/CallApiParams;

    invoke-direct {v0}, Lnet/veritran/callapi/model/CallApiParams;-><init>()V

    iput-object v0, p0, Lnet/veritran/function/VTCallAPIFunction;->a:Lnet/veritran/callapi/model/CallApiParams;

    return-void
.end method


# virtual methods
.method public addInput(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/veritran/function/VTCallAPIFunction;->a:Lnet/veritran/callapi/model/CallApiParams;

    new-instance v1, Lnet/veritran/function/model/Input;

    invoke-direct {v1, p1, p2}, Lnet/veritran/function/model/Input;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lnet/veritran/callapi/model/CallApiParams;->put(ILnet/veritran/function/model/Input;)V

    return-void
.end method

.method public addInput(Lnet/veritran/function/model/Input;)V
    .locals 2

    iget-object v0, p0, Lnet/veritran/function/VTCallAPIFunction;->a:Lnet/veritran/callapi/model/CallApiParams;

    invoke-virtual {p1}, Lnet/veritran/function/model/Input;->getRegisterId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lnet/veritran/callapi/model/CallApiParams;->put(ILnet/veritran/function/model/Input;)V

    return-void
.end method

.method public execute()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v0, Lnet/veritran/callapi/VTCallAPIManager;

    iget-object v1, p0, Lnet/veritran/function/VTCallAPIFunction;->a:Lnet/veritran/callapi/model/CallApiParams;

    invoke-direct {v0, v1}, Lnet/veritran/callapi/VTCallAPIManager;-><init>(Lnet/veritran/callapi/model/CallApiParams;)V

    :try_start_0
    invoke-virtual {v0}, Lnet/veritran/callapi/VTCallAPIManager;->process()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/veritran/function/exception/VTFunctionException;

    const/4 v2, 0x0

    const-string v3, "P030"

    const-string v4, "Error invocando al metodo _callApiManager.process()"

    new-instance v5, Lnet/veritran/callapi/exception/VTCallAPIException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lnet/veritran/callapi/exception/VTCallAPIException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lnet/veritran/function/exception/VTFunctionException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_0
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lnet/veritran/function/exception/VTFunctionException;

    const-string v2, "P030"

    const-string v3, "Error invocando al metodo _callApiManager.process()"

    invoke-direct {v1, v8, v2, v3, v0}, Lnet/veritran/function/exception/VTFunctionException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_0
    return-void
.end method
