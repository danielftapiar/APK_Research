.class public Lnet/veritran/callapi/VTCustomAPIManager;
.super Ljava/lang/Object;


# static fields
.field public static final API_CUSTOM_FUNCTION_FROM:I = 0x1

.field public static final API_CUSTOM_FUNCTION_TO:I = 0x63

.field public static final API_CUSTOM_ID_FROM:I = 0x1f4

.field public static final API_CUSTOM_ID_TO:I = 0x257

.field public static final API_CUSTOM_INPUT_REGISTER_FROM:I = 0x186

.field public static final API_CUSTOM_INPUT_REGISTER_TO:I = 0x18f

.field public static final API_CUSTOM_OUTPUT_REGISTER_FROM:I = 0x122

.field public static final API_CUSTOM_OUTPUT_REGISTER_TO:I = 0x12b

.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/api/custom/CustomAPIInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/veritran/callapi/VTCustomAPIManager;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/callapi/exception/VTCallAPIException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v7, 0xa

    const/16 v6, 0x70

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    const/16 v1, 0x6f

    :try_start_0
    const-string v3, "0"

    invoke-virtual {v2, v1, v3}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    const/16 v3, 0x6e

    invoke-virtual {v1, v3}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    sget-object v3, Lnet/veritran/callapi/VTCustomAPIManager;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/api/custom/CustomAPIInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/custom/CustomAPIInterface;->getAPIId()I

    move-result v4

    if-ne v4, p0, :cond_0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/custom/CustomAPIInterface;->getFunctionId()I

    move-result v4

    if-ne v4, v1, :cond_0

    :cond_1
    move-object v1, v0

    if-nez v1, :cond_2

    const-string v0, "020"

    invoke-virtual {v2, v6, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x186

    :goto_1
    const/16 v4, 0x18f

    if-gt v0, v4, :cond_3

    invoke-virtual {v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x122

    :goto_2
    const/16 v5, 0x12b

    if-gt v0, v5, :cond_4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v1, v3, v4}, Lnet/veritran/vtuserapplication/api/custom/CustomAPIInterface;->executeAPI(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_5

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v7, :cond_6

    add-int/lit16 v5, v1, 0x122

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    const/16 v0, 0x70

    const-string v1, "021"

    invoke-virtual {v2, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const-string v1, "999"

    invoke-virtual {v0, v6, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    new-instance v1, Lnet/veritran/function/exception/VTFunctionException;

    const/4 v2, 0x2

    const-string v3, "999"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lnet/veritran/function/exception/VTFunctionException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->nofityFunctionException(Lnet/veritran/function/exception/VTFunctionException;)V

    goto :goto_0

    :cond_6
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v2, v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public static registerCustomAPI(Lnet/veritran/vtuserapplication/api/custom/CustomAPIInterface;)V
    .locals 2

    invoke-interface {p0}, Lnet/veritran/vtuserapplication/api/custom/CustomAPIInterface;->getAPIId()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    const/16 v1, 0x257

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid API id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p0}, Lnet/veritran/vtuserapplication/api/custom/CustomAPIInterface;->getFunctionId()I

    move-result v0

    if-gtz v0, :cond_1

    const/16 v1, 0x63

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid function id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lnet/veritran/callapi/VTCustomAPIManager;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
