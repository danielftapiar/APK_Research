.class public Lnet/veritran/vtuserapplication/model/ProcessHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/veritran/vtuserapplication/model/ProcessHelper;

.field private static g:Ljava/util/concurrent/Semaphore;


# instance fields
.field private b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

.field private c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

.field private d:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->g:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->f:Z

    return-void
.end method

.method private a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getFunction()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTServiceFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/processes/ProcessVTService;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;)V

    iput-object v1, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->d:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->d:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->execute()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "VTBranchFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lnet/veritran/vtuserapplication/processes/ProcessVTBranch;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/processes/ProcessVTBranch;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/processes/ProcessVTBranch;->execute()V
    :try_end_0
    .catch Lnet/veritran/function/exception/VTFunctionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->nofityFunctionException(Lnet/veritran/function/exception/VTFunctionException;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v2, "VTDumpStorageFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lnet/veritran/vtuserapplication/processes/ProcessVTDumpStorage;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpStorage;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/processes/ProcessVTDumpStorage;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpStorage;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/processes/ProcessVTDumpStorage;->execute()V

    goto :goto_0

    :cond_3
    const-string v2, "VTStringUtilsFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lnet/veritran/vtuserapplication/processes/ProcessVTStringUtils;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTStringUtils;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/processes/ProcessVTStringUtils;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTStringUtils;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/processes/ProcessVTStringUtils;->execute()V

    goto :goto_0

    :cond_4
    const-string v2, "VTMathFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Lnet/veritran/vtuserapplication/processes/ProcessVTMath;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/processes/ProcessVTMath;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/processes/ProcessVTMath;->execute()V

    goto :goto_0

    :cond_5
    const-string v2, "VTCallAPIFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v1, Lnet/veritran/vtuserapplication/processes/ProcessVTCallAPI;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/processes/ProcessVTCallAPI;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/processes/ProcessVTCallAPI;->execute()V

    goto :goto_0

    :cond_6
    const-string v2, "VTArrayFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v1, Lnet/veritran/vtuserapplication/processes/ProcessVTArray;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTArray;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/processes/ProcessVTArray;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTArray;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/processes/ProcessVTArray;->execute()V

    goto :goto_0

    :cond_7
    const-string v2, "VTTrackingUtilsFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v1, Lnet/veritran/vtuserapplication/processes/ProcessVTTrackingUtils;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtils;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/processes/ProcessVTTrackingUtils;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/processes/ProcessVTTrackingUtils;->execute()V

    goto/16 :goto_0

    :cond_8
    const-string v2, "VTCacheFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/veritran/vtuserapplication/processes/ProcessVTCache;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCache;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/processes/ProcessVTCache;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCache;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/processes/ProcessVTCache;->execute()V
    :try_end_1
    .catch Lnet/veritran/function/exception/VTFunctionException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->a:Lnet/veritran/vtuserapplication/model/ProcessHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/ProcessHelper;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->a:Lnet/veritran/vtuserapplication/model/ProcessHelper;

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->a:Lnet/veritran/vtuserapplication/model/ProcessHelper;

    return-object v0
.end method

.method public static waitUntilProcessAvailable()V
    .locals 2

    :try_start_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->g:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->g:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "ProcessHelper"

    const-string v1, "Catched InterruptedException when acquiring semaphore"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public evaluateNextStep(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;)I
    .locals 5

    const/4 v2, -0x1

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v0, "ProcessHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "evaluateNextStep("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v3

    const-string v0, "ProcessHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "evaluateNextStep("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getNextStep()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getProcess()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->getSteps()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v0

    if-ne v3, v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method

.method public nofityFunctionException(Lnet/veritran/function/exception/VTFunctionException;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->g:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iput-boolean v7, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->f:Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    iget v1, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->e:I

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->getStepById(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    move-result-object v1

    const-string v0, "ProcessHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "evaluateNextActionForStep("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ProcessHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "evaluateNextActionForStep("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") e is not null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ProcessHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "evaluateNextActionForStep("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") e.getType():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lnet/veritran/function/exception/VTFunctionException;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ProcessHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "evaluateNextActionForStep("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") e.getDescription():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lnet/veritran/function/exception/VTFunctionException;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ProcessHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "evaluateNextActionForStep("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") e.getCode():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lnet/veritran/function/exception/VTFunctionException;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getOnError()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;

    const-string v3, "ProcessHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "evaluateNextActionForStep("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") err.getType():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ProcessHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "evaluateNextActionForStep("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") err.getCode():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ProcessHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "evaluateNextActionForStep("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") err.getNext():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->getNext()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->getNext()Ljava/lang/String;

    move-result-object v0

    const-string v5, "error"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lnet/veritran/function/exception/VTFunctionException;->getType()I

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const-string v5, "event"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lnet/veritran/function/exception/VTFunctionException;->getType()I

    move-result v5

    if-eq v5, v7, :cond_3

    :cond_2
    const-string v5, "local"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lnet/veritran/function/exception/VTFunctionException;->getType()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    :cond_3
    invoke-virtual {p1}, Lnet/veritran/function/exception/VTFunctionException;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "ProcessHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "evaluateNextActionForStep("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") goto processAction("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ProcessHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "evaluateNextActionForStep("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") parsedAction="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    iput-object v6, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    iput-object v6, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    const/4 v1, -0x2

    iput v1, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->e:I

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->processAction(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v3, "ZZZ"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "ProcessHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ZZZ -> evaluateNextActionForStep("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") goto processAction("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ProcessHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "evaluateNextActionForStep("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") parsedAction="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getOnError()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;->getNext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_7
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->getOnerrornext()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public notifyFunctionEnd()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->evaluateNextStep(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;)I

    move-result v0

    iput v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->e:I

    iget v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    iget v1, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->e:I

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->getStepById(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->a()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->f:Z

    sget-object v0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->g:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->getNext()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processes nextStep("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parsedAction="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    iput-object v4, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    const/4 v1, -0x2

    iput v1, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->e:I

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->processAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    :try_start_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->g:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid proc requested: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->getProcessId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v0, "ProcessHelper"

    const-string v1, "Catched InterruptedException when acquiring semaphore"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->getSteps()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v0

    iput v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->e:I

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    iget v1, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->e:I

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->getStepById(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->a()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setProcess(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    return-void
.end method

.method public setProcessHelperAvailability(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->g:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    iput-boolean p1, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->f:Z

    return-void
.end method

.method public setVTService(Lnet/veritran/vtuserapplication/processes/ProcessVTService;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->d:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    return-void
.end method

.method public tryLockProcessHelper()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->f:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/model/ProcessHelper;->f:Z

    const/4 v0, 0x1

    goto :goto_0
.end method
