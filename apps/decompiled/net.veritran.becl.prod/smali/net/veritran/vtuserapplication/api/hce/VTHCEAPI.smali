.class public Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "VTHCEAPI"

.field private static a:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getHCEImplementation()Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    move-result-object v0

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->a:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static process()V
    .locals 10

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/16 v8, 0x70

    const-string v1, "VTHCEAPI"

    const-string v2, "process"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    const/16 v2, 0x6f

    :try_start_0
    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "VTHCEAPI"

    const-string v2, "getStatus"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->a:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;->getStatus()I

    move-result v2

    const/16 v3, 0xf1

    and-int/lit8 v0, v2, 0x1

    if-ne v0, v9, :cond_0

    const-string v0, "1"

    :goto_1
    invoke-virtual {v1, v3, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v3, 0xf2

    and-int/lit8 v0, v2, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    const-string v0, "1"

    :goto_2
    invoke-virtual {v1, v3, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v3, 0xf3

    and-int/lit8 v0, v2, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    const-string v0, "1"

    :goto_3
    invoke-virtual {v1, v3, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x70

    const/4 v2, 0x0

    invoke-static {v2}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v9}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "0"

    goto :goto_1

    :cond_1
    const-string v0, "0"

    goto :goto_2

    :cond_2
    const-string v0, "0"

    goto :goto_3

    :pswitch_1
    const-string v0, "VTHCEAPI"

    const-string v2, "executeDeviceFunction"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x165

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$1;

    invoke-direct {v2}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$1;-><init>()V

    packed-switch v0, :pswitch_data_1

    const/16 v0, 0x70

    const/4 v2, 0x1

    invoke-static {v2}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->a:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    sget-object v3, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;->TURN_NFC_ON:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;

    invoke-interface {v0, v3, v2}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;->executeDeviceFunction(Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;Lnet/veritran/vtuserapplication/api/hce/VTHCEDeviceFunctionListener;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v0, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->a:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    sget-object v3, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;->SET_DEFAULT_HCE_PAYMENT_APP:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;

    invoke-interface {v0, v3, v2}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;->executeDeviceFunction(Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;Lnet/veritran/vtuserapplication/api/hce/VTHCEDeviceFunctionListener;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "VTHCEAPI"

    const-string v2, "Brand Availability"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x166

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    sget-object v0, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->a:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;->getBrandAvailability()Ljava/util/Vector;

    const/16 v0, 0x70

    const/4 v2, 0x0

    invoke-static {v2}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "VTHCEAPI"

    const-string v2, "Product Availability"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x171

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x167

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    sget-object v2, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->a:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    invoke-interface {v2, v0}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;->getProductAvailability(Ljava/lang/String;)Ljava/util/Vector;

    const/16 v0, 0x70

    const/4 v2, 0x0

    invoke-static {v2}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "VTHCEAPI"

    const-string v2, "Mode Availability"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x172

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x168

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    sget-object v2, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->a:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    invoke-interface {v2, v0}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;->getModeAvailability(Ljava/lang/String;)Ljava/util/Vector;

    const/16 v0, 0x70

    const/4 v2, 0x0

    invoke-static {v2}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "VTHCEAPI"

    const-string v2, "Is Enrolled"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x16a

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->a:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    invoke-interface {v2, v0}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;->isEnrolled(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x103

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_4
    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x70

    const/4 v2, 0x0

    invoke-static {v2}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto/16 :goto_0

    :cond_3
    const-string v0, "0"

    goto :goto_4

    :pswitch_8
    const-string v2, "VTHCEAPI"

    const-string v3, "Enroll"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;

    invoke-direct {v2}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;-><init>()V

    const/16 v3, 0x16a

    invoke-virtual {v1, v3}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;->dcid:Ljava/lang/String;

    const/16 v3, 0x171

    invoke-virtual {v1, v3}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;->brand:Ljava/lang/String;

    const/16 v3, 0x172

    invoke-virtual {v1, v3}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;->product:Ljava/lang/String;

    const/16 v3, 0x173

    invoke-virtual {v1, v3}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;->mode:Ljava/lang/String;

    const/16 v3, 0x175

    invoke-virtual {v1, v3}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;->AID:Ljava/lang/String;

    const/16 v3, 0x16b

    invoke-virtual {v1, v3}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    :goto_5
    if-ge v0, v5, :cond_8

    aget-object v6, v3, v0

    const-string v7, "ONLINE_PIN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v6, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;->ONLINE_PIN:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    const-string v7, "SIGNATURE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v6, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;->SIGNATURE:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    const-string v7, "CONSUMER_DEVICE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v6, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;->CONSUMER_DEVICE:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    const-string v7, "NO_CVM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;->NO_CVM:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    iput-object v4, v2, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;->cvmType:Ljava/util/Vector;

    const/16 v0, 0x176

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;->countryCode:Ljava/lang/String;

    const/16 v0, 0x17a

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;->currencyCode:Ljava/lang/String;

    const/16 v0, 0x16c

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;->panSqKey:Ljava/lang/String;

    const/16 v0, 0x16f

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;->serviceCode:Ljava/lang/String;

    sget-object v0, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->a:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    invoke-interface {v0, v2}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;->enroll(Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;)I

    move-result v0

    const/16 v2, 0x70

    invoke-static {v0}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "VTHCEAPI"

    const-string v2, "Unenroll"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x16a

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->a:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    invoke-interface {v2, v0}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;->unenroll(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x70

    invoke-static {v0}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "VTHCEAPI"

    const-string v2, "Suspend"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x16a

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->a:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    invoke-interface {v2, v0}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;->suspend(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x70

    invoke-static {v0}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "VTHCEAPI"

    const-string v2, "Resume"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x16a

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->a:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    invoke-interface {v2, v0}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;->resume(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x70

    invoke-static {v0}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto/16 :goto_0

    :pswitch_c
    const-string v0, "VTHCEAPI"

    const-string v2, "Set as default"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x16a

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->a:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    invoke-interface {v2, v0}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;->setAsDefault(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x70

    invoke-static {v0}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "VTHCEAPI"

    const-string v2, "Ready to pay"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x16a

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->a:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    new-instance v3, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$2;

    invoke-direct {v3, v1}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$2;-><init>(Lnet/veritran/vtuserapplication/model/Model;)V

    invoke-interface {v2, v0, v3}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;->readyToPay(Ljava/lang/String;Lnet/veritran/vtuserapplication/api/hce/VTHCEListener;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v2, 0x70

    const/4 v3, 0x0

    invoke-static {v3}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v2, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$3;

    invoke-direct {v2}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$3;-><init>()V

    invoke-interface {v0, v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
